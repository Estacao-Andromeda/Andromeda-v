import os
import re
import shlex
import shutil
import subprocess
import tkinter as tk
from pathlib import Path
from typing import Any

import yaml
from dotenv import load_dotenv
from textual import events, on
from textual.app import App, ComposeResult
from textual.containers import Container, Horizontal, Vertical
from textual.screen import ModalScreen
from tkinter import filedialog
from textual.widgets import Button, Footer, Header, Input, Label, ListItem, ListView, Static


load_dotenv()

ROOT_DIR = Path(__file__).resolve().parent
RESOURCE_VARIANT = os.getenv("RESOURCE_VARIANT", "")
RESOURCE_VARIANT_SEGMENT = f"{RESOURCE_VARIANT}/" if RESOURCE_VARIANT else ""

AUDIO_DIR = (ROOT_DIR / f"../../Resources/Audio/{RESOURCE_VARIANT_SEGMENT}Jukebox").resolve()
CATALOG_DIR = (ROOT_DIR / f"../../Resources/Prototypes/{RESOURCE_VARIANT_SEGMENT}Catalog/Jukebox").resolve()
ATTRIBUTIONS_PATH = AUDIO_DIR / "attributions.yml"
CATALOG_PATH = CATALOG_DIR / "Standard.yml"


def load_yaml(file_path: Path) -> list[dict[str, Any]]:
    if file_path.exists():
        with file_path.open("r", encoding="utf-8") as file:
            return yaml.safe_load(file) or []
    return []


def save_yaml(file_path: Path, data: list[dict[str, Any]]) -> None:
    file_path.parent.mkdir(parents=True, exist_ok=True)
    with file_path.open("w", encoding="utf-8") as file:
        yaml.safe_dump(data, file, sort_keys=False, allow_unicode=True)


def update_attributions(file_name: str) -> None:
    default_attribution = {
        "files": [file_name],
        "license": "CC-BY-SA-3.0",
        "copyright": f"{file_name} by Unknown Artist. Exported in Mono OGG.",
        "source": "Unknown",
    }

    attributions_data = load_yaml(ATTRIBUTIONS_PATH)
    attributions_data.append(default_attribution)
    save_yaml(ATTRIBUTIONS_PATH, attributions_data)


def copy_ogg_to_resources(source_file: Path) -> None:
    file_name = source_file.name
    AUDIO_DIR.mkdir(parents=True, exist_ok=True)
    dest_path = AUDIO_DIR / file_name
    shutil.copy(source_file, dest_path)

    item_id = source_file.stem.replace(" ", "_")
    item_name = source_file.stem.replace("_", " ")
    resource_segment = f"/{RESOURCE_VARIANT}" if RESOURCE_VARIANT else ""
    new_item = {
        "type": "jukebox",
        "id": item_id,
        "name": item_name,
        "path": {"path": f"/Audio{resource_segment}/Jukebox/{file_name}"},
    }

    yaml_data = load_yaml(CATALOG_PATH)
    yaml_data.append(new_item)
    save_yaml(CATALOG_PATH, yaml_data)
    update_attributions(file_name)


def open_folder(path: Path) -> None:
    if path.exists():
        subprocess.Popen(["explorer", str(path)])


def parse_ogg_paths(raw_input: str) -> list[Path]:
    normalized = raw_input.replace("\r", "\n").replace(";", "\n")
    lines = [line.strip() for line in normalized.split("\n") if line.strip()]
    paths: list[Path] = []

    for line in lines:
        # Handles quoted and escaped file paths from terminal drag-drop/paste.
        try:
            tokens = shlex.split(line, posix=False)
        except ValueError:
            tokens = [line]
        for token in tokens:
            cleaned = token.strip().strip('"').strip("'")
            cleaned = re.sub(r"\\ ", " ", cleaned)
            if cleaned:
                paths.append(Path(cleaned))
    return paths


class FileInputScreen(ModalScreen[str | None]):
    CSS = """
    FileInputScreen {
        align: center middle;
    }
    #dialog {
        width: 80;
        height: auto;
        border: round #569cd6;
        background: #1b1f23;
        padding: 1 2;
    }
    #dialog-title {
        text-style: bold;
        margin-bottom: 1;
    }
    #help {
        color: #9aa7b2;
        margin-top: 1;
    }
    #buttons {
        margin-top: 1;
        height: auto;
    }
    """

    def compose(self) -> ComposeResult:
        with Container(id="dialog"):
            yield Label("Add OGG Files", id="dialog-title")
            yield Input(placeholder=r"Paste one or more .ogg paths separated by ;", id="ogg-input")
            yield Static("Tip: drag files into the terminal, or click Browse...", id="help")
            with Horizontal(id="buttons"):
                yield Button("Cancel", id="cancel")
                yield Button("Browse...", id="browse")
                yield Button("Add", variant="primary", id="submit")

    @on(Button.Pressed, "#cancel")
    def cancel(self) -> None:
        self.dismiss(None)

    @on(Button.Pressed, "#browse")
    def browse(self) -> None:
        root = tk.Tk()
        root.withdraw()
        root.attributes("-topmost", True)
        file_paths = filedialog.askopenfilenames(
            title="Select .ogg files",
            filetypes=[("OGG files", "*.ogg")],
        )
        root.destroy()
        if file_paths:
            self.query_one("#ogg-input", Input).value = ";".join(file_paths)

    @on(Button.Pressed, "#submit")
    def submit(self) -> None:
        value = self.query_one("#ogg-input", Input).value.strip()
        self.dismiss(value if value else None)


class JukeboxApp(App[None]):
    CSS = """
    Screen {
        background: #111418;
    }
    #main {
        padding: 1 2;
    }
    #title {
        text-style: bold;
        color: #8ec07c;
        margin-bottom: 1;
    }
    #paths {
        color: #9aa7b2;
        margin-bottom: 1;
    }
    #status {
        color: #f0c674;
        margin-top: 1;
    }
    #controls {
        margin-top: 1;
        height: auto;
    }
    ListView {
        border: round #4b5563;
        height: 1fr;
    }
    """

    BINDINGS = [
        ("a", "add_files", "Add OGG"),
        ("c", "open_catalog", "Open Catalog"),
        ("u", "open_audio", "Open Audio"),
        ("r", "refresh", "Refresh"),
        ("q", "quit", "Quit"),
    ]

    def compose(self) -> ComposeResult:
        yield Header(show_clock=True)
        with Vertical(id="main"):
            yield Label("Jukebox Manager", id="title")
            yield Static(
                f"Catalog: {CATALOG_PATH}\nAudio: {AUDIO_DIR}\nVariant: {RESOURCE_VARIANT or '(default)'}",
                id="paths",
            )
            yield ListView(id="jukebox-list")
            with Horizontal(id="controls"):
                yield Button("Add OGG Files", id="add", variant="primary")
                yield Button("Open Catalog Folder", id="catalog")
                yield Button("Open Audio Folder", id="audio")
                yield Button("Refresh", id="refresh")
            yield Static("Ready.", id="status")
        yield Footer()

    def on_mount(self) -> None:
        self.refresh_list()

    def refresh_list(self) -> None:
        list_view = self.query_one("#jukebox-list", ListView)
        list_view.clear()

        if not CATALOG_PATH.exists():
            self.set_status(f"Catalog file not found: {CATALOG_PATH}")
            return

        for item in load_yaml(CATALOG_PATH):
            item_id = item.get("id", "unknown")
            item_name = item.get("name", "unknown")
            list_view.append(ListItem(Label(f"{item_id}: {item_name}")))

        self.set_status("List updated.")

    def set_status(self, message: str) -> None:
        self.query_one("#status", Static).update(message)

    def action_refresh(self) -> None:
        self.refresh_list()

    def action_open_catalog(self) -> None:
        open_folder(CATALOG_DIR)
        self.set_status(f"Opened: {CATALOG_DIR}")

    def action_open_audio(self) -> None:
        open_folder(AUDIO_DIR)
        self.set_status(f"Opened: {AUDIO_DIR}")

    def action_add_files(self) -> None:
        self.push_screen(FileInputScreen(), self.process_add_input)

    def on_paste(self, event: events.Paste) -> None:
        parsed = parse_ogg_paths(event.text)
        if any(path.suffix.lower() == ".ogg" for path in parsed):
            self.process_add_input(event.text)
            event.stop()

    @on(Button.Pressed, "#add")
    def on_add_pressed(self) -> None:
        self.action_add_files()

    @on(Button.Pressed, "#catalog")
    def on_catalog_pressed(self) -> None:
        self.action_open_catalog()

    @on(Button.Pressed, "#audio")
    def on_audio_pressed(self) -> None:
        self.action_open_audio()

    @on(Button.Pressed, "#refresh")
    def on_refresh_pressed(self) -> None:
        self.action_refresh()

    def process_add_input(self, raw_paths: str | None) -> None:
        if not raw_paths:
            self.set_status("No files provided.")
            return

        failures: list[str] = []
        added = 0
        for source_file in parse_ogg_paths(raw_paths):
            if not source_file.exists() or source_file.suffix.lower() != ".ogg":
                failures.append(source_file.name or str(source_file))
                continue

            try:
                copy_ogg_to_resources(source_file)
                added += 1
            except Exception:
                failures.append(source_file.name)

        self.refresh_list()

        if failures:
            self.set_status(f"Added {added} file(s). Failed: {', '.join(failures)}")
        else:
            self.set_status(f"Added {added} file(s) successfully.")


if __name__ == "__main__":
    JukeboxApp().run()
