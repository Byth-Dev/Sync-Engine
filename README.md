## Friday Night Funkin': Sync Engine

This is the fork of Friday Night Funkin, a game originally made for Ludum Dare 47 "Stuck In a Loop".

# Description

This fork include a full engine rework of Friday Night Funkin'.

IF YOU MAKE A MOD AND DISTRIBUTE A MODIFIED / RECOMPILED VERSION, YOU MUST OPEN SOURCE YOUR MOD AS WELL

## Building Friday Night Funkin': Sync Engine

THESE INSTRUCTIONS ARE FOR COMPILING THE ENGINE!!!

IF YOU WANT TO JUST DOWNLOAD AND PLAY THE ENGINE. GO TO RELEASE THEN DOWNLOAD IT DONT DOWNLOAD THE SOURCE CODE IF YOU ARE NOT BUILDING.

IF YOU WANNA BUILD THE ENGINE CONTINUE READING

### Installing the Dependencies

First, you need to install Haxe and HaxeFlixel. I'm too lazy to write and keep updated with that setup (which is pretty simple). 
1. [Install Haxe 4.1.5](https://haxe.org/download/version/4.1.5/)
2. [Install Git](https://git-scm.com/)

Other installations you'd need are the additional libraries, Here are the specific versions.
```
flixel 4.10.0
flixel-addons 2.10.0
flixel-ui 2.3.3
hscript 2.5.0
newgrounds 1.1.5
hxCodec(requires Git to install)
```

For the regular libraries that does not requires git you can just do: `haxelib install <library>` like `haxelib install newgrounds 1.1.5` then `haxelib set <library> <version>` like `haxelib set newgrounds 1.1.5`

Now libraries that requires Git

```
haxelib git polymod https://github.com/larsiusprime/polymod.git
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib git hxCodec https://github.com/polybiusproxy/hxCodec.git
```

Nice now that you installed those libraries.

# Installing Visual Studio 2019
You need to install Visual Studio Community 2019. While installing VSC, don't click on any of the options to install workloads. Instead, go to the individual components tab and choose the following:

* MSVC v142 - VS 2019 C++ x64/x86 build tools
* Windows SDK (10.0.17763.0)

# Compiling
Once you downloaded the engine source code go into the engine folder then go click at the top it would say for example: `Downloads/Some shit/engine` click on it then type cmd
After that type `lime test windows` if you are on windows. Then wait it should take about 20-30 minutes on first compile.

## Developer of Friday Night Funkin': Sync Engine

- [BythDeveloper](https://www.youtube.com/@bythdev) - Everything(go sub to my channel)

## Funkin' Crew

- [ninjamuffin99](https://twitter.com/ninja_muffin99) - Programmer
- [PhantomArcade3K](https://twitter.com/phantomarcade3k) and [Evilsk8r](https://twitter.com/evilsk8r) - Art
- [Kawaisprite](https://twitter.com/kawaisprite) - Musician

This game was made with love to Newgrounds and its community. Extra love to Tom Fulp.