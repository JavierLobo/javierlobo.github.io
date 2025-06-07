#!/bin/bash
set -e

APP_DIR="/usr/src/app/myJekilApp"

cd "$APP_DIR"
if [ -d "$APP_DIR/.git" ]; then
  git pull
else
  git clone https://github.com/JavierLobo/javierlobo.github.io.git "$APP_DIR"
fi

bundle install
bundle exec jekyll serve --host 0.0.0.0