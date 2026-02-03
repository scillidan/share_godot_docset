# share_godot-docs

[![Upstream Build](https://github.com/godotengine/godot-docs/actions/workflows/build_offline_docs.yml/badge.svg)](https://github.com/godotengine/godot-docs/actions/workflows/build_offline_docs.yml) [![Create Releases](https://github.com/scillidan/share_godot-docs/actions/workflows/releases.yml/badge.svg)](https://github.com/scillidan/share_godot-docs/actions/workflows/releases.yml)

This repo is for converting docset files from html artifacts that build by [official workflow](https://github.com/godotengine/godot-docs/actions/workflows/build_offline_docs.yml). For using in [Dash](http://kapeli.com/dash), [Zeal](https://zealdocs.org), [Velocity](https://velocity.silverlakesoftware.com/) ..

## Usage

- Zeal → Tools → Docsets → Add feed
	- Godot 4: `https://raw.githubusercontent.com/scillidan/share_godot-docs/refs/heads/main/Godot.xml`
	- Godot 3: `https://raw.githubusercontent.com/scillidan/share_godot-docs/refs/heads/main/Godot3.xml`