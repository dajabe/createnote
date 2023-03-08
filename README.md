# Create Note

## About

Create note is a simple script that can be used for quickly creating a note with todays date in the name and a title or description as entered by the user. I created this script as I wanted something simple and straight forward to aid my personal note taking habits.

Currently it only supports opening a file in your current directory.


## Installation

You can simply download createnote.sh file and make it executable

```
> git clone https://github.com/dajabe/createnote.git
> cd createnote
> chmod +x createnote.
```

I like to make a sym link it to my user bin directory so it is in my system path

```
> ln -s createnote.sh ~/bin/cn
```

This allows me to do something like

```
> cn daily reflections
```

For me this opens neovim with the filename `YYYY-MM-DD_daily_reflections.md`


This is what works for me right now. Feel free to submit PRs for the README if you want to offer some alternatives
