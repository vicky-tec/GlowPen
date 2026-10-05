# GlowPen — New Features Documentation

This document summarizes the **Top 5 Features** and utility enhancements implemented in GlowPen.

---

## 🚀 How to Run the App
To run GlowPen on your device, use the new launcher scripts in the root directory:
* **Desktop Shortcut (Recommended)**: Double-click the **`GlowPen` shortcut icon** created on your Desktop.
* **Command Prompt / Terminal**: Double-click or run `run.bat`.
* **PowerShell**: Run `PowerShell -ExecutionPolicy Bypass -File .\run.ps1`.

---

## ⌨️ Summary of Hotkeys & Features

| Feature | Hotkey | Toolbar Icon | Description |
| :--- | :--- | :---: | :--- |
| **Spotlight / Focus Mode** | `F` | ◯ | Dims the screen and highlights the cursor with a glowing spotlight circle. |
| **Keystroke Visualizer** | `Ctrl` + `Shift` + `K` | ⌨ | Displays pressed key combinations in a sleek HUD overlay at the bottom-center. |
| **Timer Overlay** | `Ctrl` + `Shift` + `T` | ⌛ / ⏱️ | Displays a draggable countdown timer / stopwatch overlay widget. |
| **Annotated Screenshot** | `Ctrl` + `Shift` + `P` | 📷 | Composites and saves your screen capture **with** annotations directly to the Desktop. |
| **Annotation Recording** | *Top-Right Panel* | ● | Records canvas drawing actions and exports them as a `.webm` video to your Desktop. |

---

## 🔦 1. Spotlight / Focus Mode
* **Trigger**: Click `◯` on the toolbar or press `F` in Draw Mode.
* **Details**: Dims the screen to `68%` opacity with a radial-gradient punch-through matching the exact coordinates of your mouse pointer. Smooth, GPU-driven updates with zero lag.
* **Accessibility**: Respects `prefers-reduced-motion` settings.

## ⌨️ 2. Keystroke Visualizer
* **Trigger**: Click `⌨` on the toolbar or press `Ctrl` + `Shift` + `K`.
* **Details**: Intercepts keyboard events globally and renders a clean semi-transparent HUD showing keyboard shortcuts (e.g., `Ctrl + Shift + A`). Badges automatically slide up and fade out after `2` seconds.
* **Use Case**: Perfect for live presentations, recording tutorials, or sharing screencasts.

## ⌛ 3. Countdown Timer & Stopwatch
* **Trigger**: Click the Hourglass/Timer icon on the toolbar or press `Ctrl` + `Shift` + `T`.
* **Details**: A draggable window with two modes:
  * **Countdown**: Configure minutes/seconds. Displays large monospace digits. The border flashes red when it hits zero.
  * **Stopwatch**: Counts up from zero for tracking presentation duration.
* **Controls**: Includes ▶ (Start), ⏸ (Pause), and ↺ (Reset) buttons.

## 📷 4. Annotated Screenshot Export
* **Trigger**: Click the Camera icon on the toolbar or press `Ctrl` + `Shift` + `P`.
* **Details**: Unlike the default Electron desktop screenshot which ignores overlay windows, this composites the underlying screen capture and your active drawing canvas into a single PNG image.
* **Output**: Saved directly to your Desktop as `DRWPN-YYYYMMDD-xxxx.png`.

## 🎬 5. Annotation Recording & Playback
* **Trigger**: Use the floating panel positioned in the **top-right** corner.
* **Controls**:
  * `●` **Record**: Begins recording screen stream and coordinates.
  * `■` **Stop**: Stops active recording.
  * `▶` **Replay**: Play back the exact stroke sequence you drew with original timing.
  * `⬇` **Export**: Saves the recorded session as a high-quality `.webm` video file to your Desktop.

---

## 🛠️ Infrastructure & Setup Enhancements
* **`run.bat` & `run.ps1`**: Automated dev setups that bypass environment variable issues on Windows.
* **Fullscreen Dev Bypass**: Added `FULLSCREEN_DEV=true` support so the overlay opens in full screen instead of the default development constraint of `500x500`.
* **Toolbar Width Optimization**: Enlarged the toolbar width in `ToolBar.scss` to fit all 13 buttons and 3 separators on a single, clean row without wrapping or layout squishing.
