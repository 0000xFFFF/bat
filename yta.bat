@echo off
youtube-dl --extract-audio --audio-format mp3 "%1" -o "%%(title)s.%%(ext)s"