# share_godot_docset

[![Upstream Build](https://github.com/godotengine/godot-docs/actions/workflows/build_offline_docs.yml/badge.svg)](https://github.com/godotengine/godot-docs/actions/workflows/build_offline_docs.yml) [![Release](https://github.com/scillidan/share_godot_docset/actions/workflows/release.yml/badge.svg)](https://github.com/scillidan/share_godot_docset/actions/workflows/release.yml)

This repo is for generating docset files from HTML artifacts that build by [official workflow](https://github.com/godotengine/godot-docs/actions/workflows/build_offline_docs.yml). For using in [Zeal](https://zealdocs.org), [Dash](http://kapeli.com/dash), [Velocity](https://velocity.silverlakesoftware.com/) ...

## Usage

- Zeal → Tools → Docsets → Add feed
	- Godot 4: `https://raw.githubusercontent.com/scillidan/share_godot_docset/refs/heads/main/Godot.xml`
	- Godot 3: `https://raw.githubusercontent.com/scillidan/share_godot_docset/refs/heads/main/Godot3.xml`

## Other versions

- Godot 4.6 ([commit](https://github.com/godotengine/godot-docs/commit/b10b7ed373c2d15555186914b82e167169b5b87b)): `https://raw.githubusercontent.com/scillidan/share_godot_docset/refs/heads/main/versions/Godot4.6.xml`
- Godot 4.5 ([commit](https://github.com/godotengine/godot-docs/commit/33e08e14c517541fac3d9069e82fb3ee2fc99a10)): `https://raw.githubusercontent.com/scillidan/share_godot_docset/refs/heads/main/versions/Godot4.5.xml`
