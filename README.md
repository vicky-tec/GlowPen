<p align="center">
  <img src="https://raw.githubusercontent.com/vicky-tec/GlowPen/main/icon.png" alt="GlowPen logo" height="160">
</p>

<h1 align="center">GlowPen</h1>

<p align="center">
  A lightweight desktop overlay for drawing, explaining, and presenting on screen.
</p>

<p align="center">
  <a href="https://github.com/vicky-tec/GlowPen/releases"><strong>Download the latest release</strong></a>
  ·
  <a href="https://github.com/vicky-tec/GlowPen/issues">Report an issue</a>
</p>

---

## Demo

Add the project demo video below after uploading an MP4 to this repository or to the GitHub issue/PR attachments:

<!-- Replace the URL below with the uploaded MP4 URL.
<video src="YOUR_MP4_URL" controls width="800"></video>
-->

> **MP4 demo placeholder**
> Upload a file such as `assets/demo/glowpen-demo.mp4`, then replace `YOUR_MP4_URL` above with its GitHub-hosted URL.

## What is GlowPen?

GlowPen is a desktop screen-annotation tool for presentations, tutorials, live demos, and remote support. Draw over any application without switching away from your content, then use focused overlays to make important actions easier to follow.

### Highlights

- Draw with a pen, highlighter, laser pointer, eraser, text, arrows, and shapes.
- Spotlight the cursor and dim the rest of the screen.
- Show keyboard shortcuts in a keystroke visualizer.
- Display a draggable countdown timer or stopwatch.
- Capture annotated screenshots.
- Record and replay annotation sessions, then export them as video.
- Use the built-in whiteboard when you need a blank canvas.
- Configure colors, thickness, shortcuts, and toolbar behavior.

## Screenshots

![GlowPen workspace](https://raw.githubusercontent.com/vicky-tec/GlowPen/main/assets/static/main.png)

![GlowPen usage](https://raw.githubusercontent.com/vicky-tec/GlowPen/main/assets/static/main.gif)

![GlowPen pointer mode](https://raw.githubusercontent.com/vicky-tec/GlowPen/main/assets/static/pointer-mode.gif)

## Installation

Download the installer for your platform from the [latest GitHub release](https://github.com/vicky-tec/GlowPen/releases/latest).

Package-manager options:

```bash
# macOS
brew install --cask glowpen

# Windows
scoop bucket add extras
scoop install extras/glowpen
```

## Development

Requirements:

- Node.js `22.x`
- npm

```bash
git clone https://github.com/vicky-tec/GlowPen.git
cd GlowPen
npm install
npm start
```

To create a packaged build:

```bash
npm run package_no_sign
```

Build artifacts are written to the `out` directory.

## Keyboard shortcuts

| Action | Shortcut |
| --- | --- |
| Enable draw/pointer mode | `Ctrl/Cmd + Shift + A` |
| Show or hide toolbar | `Ctrl/Cmd + T` |
| Show or hide whiteboard | `Ctrl/Cmd + E` |
| Clear desk | `Ctrl/Cmd + K` |
| Spotlight/focus mode | `F` |
| Activate pen | `P` or `1` |
| Activate shapes | `A`, `R`, `O` or `2` |
| Activate text | `T` or `3` |
| Activate highlighter | `H` or `4` |
| Activate laser | `L` or `5` |
| Activate eraser | `E` or `6` |
| Keystroke visualizer | `Ctrl/Cmd + Shift + K` |
| Timer overlay | `Ctrl/Cmd + Shift + T` |
| Export annotated screenshot | `Ctrl/Cmd + Shift + P` |
| Open settings | `Ctrl/Cmd + ,` |

## Linux troubleshooting

On some Wayland configurations, GlowPen may fail to start because of Electron's graphics backend. Try the X11 backend:

```bash
glowpen --ozone-platform=x11
```

The X11 package is also available from the [latest release](https://github.com/vicky-tec/GlowPen/releases/latest/).

## Contributing

Bug reports, feature requests, and pull requests are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) before contributing.

## License

GlowPen is distributed under the [MIT License](LICENSE).
