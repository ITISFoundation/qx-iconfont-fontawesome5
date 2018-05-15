#!/bin/sh
git clone --depth=1 https://github.com/FortAwesome/Font-Awesome.git fa-git
cp fa-git/LICENSE.txt .
cp fa-git/CHANGELOG.md .
cp fa-git/web-fonts-with-css/webfonts/* .
cp fa-git/advanced-options/metadata/icons.yml .
rm -rf fa-git
./fa-map-convert.js