#!/bin/sh

# Author : Francesco
# Copyright (c) 
# Script :

# cat _config_main_edit.yml _config_dev.yml > _config.yml
bundle install
bundle exec jekyll build
git branch
bundle exec jekyll serve --incremental --drafts --watch --future
