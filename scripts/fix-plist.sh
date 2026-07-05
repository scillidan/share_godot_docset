#!/usr/bin/env bash
set -euo pipefail

docset_name="$1"
stable_version="$2"
plist_path="${docset_name}.docset/Contents/Info.plist"

if [ ! -f "$plist_path" ]; then
  echo "ERROR: $plist_path not found!"
  exit 1
fi

perl -0777 -i -pe \
  "s{<key>CFBundleIdentifier</key>\s*<string>${docset_name}</string>}{<key>CFBundleIdentifier</key><string>godot</string>}g;" \
  "$plist_path"

perl -0777 -i -pe \
  "s{<key>CFBundleName</key>\s*<string>${docset_name}</string>}{<key>CFBundleName</key><string>Godot ${stable_version}</string>}g;" \
  "$plist_path"

echo "Updated $plist_path:"
grep -A1 -B0 "CFBundleIdentifier\|CFBundleName" "$plist_path" | head -6