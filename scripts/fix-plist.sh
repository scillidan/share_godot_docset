#!/usr/bin/env bash
set -euo pipefail

docset_name="$1"
stable_version="$2"
plist_path="${docset_name}.docset/Contents/Info.plist"

if [ ! -f "$plist_path" ]; then
  echo "ERROR: $plist_path not found!"
  exit 1
fi

cat > "$plist_path" << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>CFBundleIdentifier</key>
	<string>godot</string>
	<key>CFBundleName</key>
	<string>Godot ${stable_version}</string>
	<key>DocSetPlatformFamily</key>
	<string>godot</string>
</dict>
</plist>
EOF

echo "Written $plist_path"
