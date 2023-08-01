#!/bin/bash
cd firefox
wget "https://github.com/google/fonts/raw/main/ofl/orbitron/Orbitron%5Bwght%5D.ttf" -O "Orbitron.ttf"
wget "https://fonts.gstatic.com/s/i/short-term/release/materialsymbolsoutlined/smart_display/default/48px.svg" -O play.svg
wget "https://github.githubassets.com/images/modules/logos_page/github-mark.zip"
unzip github-mark.zip
rm github-mark.zip
cp github-mark/github-mark.svg ./
rm -rf github-mark
wget "https://fonts.gstatic.com/s/i/short-term/release/materialsymbolsoutlined/search/default/48px.svg" -O search.svg