#!/usr/bin/env bash
set -euo pipefail

docset_name="$1"
stable_version="$2"
plist_path="${docset_name}.docset/Contents/Info.plist"

if [ ! -f "$plist_path" ]; then
  echo "ERROR: $plist_path not found!"
  exit 1
fi

plutil -remove DashDocSetDeclaredInStyle "$plist_path" 2>/dev/null || true
plutil -remove DashDocSetFamily "$plist_path" 2>/dev/null || true
plutil -remove DocSetPlatformFamily "$plist_path" 2>/dev/null || true
plutil -remove isDashDocset "$plist_path" 2>/dev/null || true
plutil -remove isJavaScriptEnabled "$plist_path" 2>/dev/null || true

perl -0777 -i -pe \
  "s{<key>CFBundleIdentifier</key>\s*<string>${docset_name}</string>}{<key>CFBundleIdentifier</key><string>godot</string>}g;" \
  "$plist_path"

perl -0777 -i -pe \
  "s{<key>CFBundleName</key>\s*<string>${docset_name}</string>}{<key>CFBundleName</key><string>Godot ${stable_version}</string>}g;" \
  "$plist_path"

echo "Updated $plist_path:"
grep -A1 -B0 "CFBundleIdentifier\|CFBundleName" "$plist_path" | head -6