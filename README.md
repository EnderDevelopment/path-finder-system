# Path Finder System

A GUI-based path finder system for FiveM players.

## Features

- GUI-based location selection
- Tweening to selected locations after a delay

## Requirements

- FiveM server with ESX framework
- MySQL database

## Installation

1. Download the script files
2. Place them in your FiveM server's resources folder
3. Add `start path_finder_system` to your server.cfg file
4. Import the database.sql file into your MySQL database

## Usage

- Press the 'E' key to open the GUI
- Select a location from the list
- The script will tween you to the selected location after a delay

## Configuration

- `Config.TweenDelay`: Delay before tweening to the location (in milliseconds)
- `Config.DefaultLocations`: Default locations that will be available in the GUI

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=path-finder-system&utm_content=bottom) — describe it in one sentence and get the full source code.