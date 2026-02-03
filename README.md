# share_godot_docset

[![Upstream Build](https://github.com/godotengine/godot-docs/actions/workflows/build_offline_docs.yml/badge.svg)](https://github.com/godotengine/godot-docs/actions/workflows/build_offline_docs.yml) [![Create Releases](https://github.com/scillidan/share_godot_docset/actions/workflows/releases.yml/badge.svg)](https://github.com/scillidan/share_godot_docset/actions/workflows/releases.yml)

This repo is for generating docset files from HTML artifacts that build by [official workflow](https://github.com/godotengine/godot-docs/actions/workflows/build_offline_docs.yml). For using in [Zeal](https://zealdocs.org), [Dash](http://kapeli.com/dash), [Velocity](https://velocity.silverlakesoftware.com/) ..

## Usage

- Zeal → Tools → Docsets → Add feed
	- Godot 4: `https://raw.githubusercontent.com/scillidan/share_godot_docset/refs/heads/main/Godot.xml`
	- Godot 3: `https://raw.githubusercontent.com/scillidan/share_godot_docset/refs/heads/main/Godot3.xml`