# Morrowind-Keyboard-Layout-Changer

## What it does ##

MWSE Lua mod to allow non-Qwerty keyboard layouts in vanilla engine Morrowind.

**Currently supported:**

* Dvorak
* Colemak
* Workman (US and UK varieties)

## Known Issues ##

Layouts that use letters outside the standard and extended ASCII tables will remain unsupported, due to the way Morrowind translate key presses to text.

i.e. Turkish FGĞIOD, Latvian ĄŽERTY

### ! Warning ! Achtung ! Atención !   ###

Don't put erroneous data into keys.lua. This mod works by overwriting the data at the memory address that Morrowind reads output text from. Changing the length of the tables could overwrite things you don't want overwritten.

## Requirements ##
MWSE 2.1 nightly @ [github](https://github.com/MWSE/MWSE)

## Credits ##

* MWSE Team for MWSE with Lua support
* NullCascade for the initial code snippets I built this mod upon

## License ##

MIT License. See LICENSE file.