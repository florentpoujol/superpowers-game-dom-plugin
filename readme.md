# Superpowers DOM plugin

This plugin gives acces to DOM objects and types in [Superpowers, the extensible HTML5 2D+3D game engine](http://sparklinlabs.com).

It gives access to `console`, `document`, etc... from your game code and allows you to use DOM types (like `HTMLElement`).

## Installation

[Download the latest release](https://github.com/florentpoujol/superpowers-dom-plugin/releases) then unzip it.

Rename the folder if you want then move it inside `app/plugins/florentpoujol/`.

Finally restart your server.

__Advanced:__

The plugin is published as an npm package so you can get any version of it via `npm`:

    npm install sup-dom-plugin

Note that the name of the vendors in the `app/plugins/` folder actually don't matter, it can be `node_modules`.
