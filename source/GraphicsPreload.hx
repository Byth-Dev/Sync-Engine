package;

import flixel.FlxG;
import flixel.system.FlxSound;
import sys.FileSystem;
import haxe.io.Path;
import haxe.io.Path;

class GraphicsPreload
{
    public function new() {}

    public static function preload():Void
    {
		// Preloads game assets (some of)
		
		// Icons and Characters
        preloadFolder("assets/preload/images/icons", "icons/");
        preloadFolder("assets/shared/characters", "characters/");
		
		// Game Images
        preloadFolder("assets/preload/images", "images/");
        preloadFolder("assets/shared/images", "images/");
		
		// Sounds and Music
		preloadFolder("assets/preload/sounds", "sounds/");
        preloadFolder("assets/shared/sounds", "sounds/");
        preloadFolder("assets/shared/music", "music/");
		
		// Songs
        preloadFolder("assets/songs", "songs/");
		
		// Fonts
		preloadFolder("assets/fonts", "fonts/");
		
		// Chart folders
		preloadFolder("assets/preload", "data/");
		
		// Cutscenes shit i think
		preloadFolder("assets/preload", "music/");
		
		// Preloads week with lot of shit
		preloadFolder("assets/week7/images", "images/");
		preloadFolder("assets/week7/music", "music/");
		preloadFolder("assets/week7/sounds", "sounds/");
		
		preloadFolder("assets/week6/images", "images/");
		preloadFolder("assets/week6/images/weeb", "weeb/");
		preloadFolder("assets/week6/images/weeb/pixelUI", "pixelUI/");
		preloadFolder("assets/week6/music", "music/");
		
		// Preloads excluded shit
		preloadFolder("assets/exclude/music", "music/");
		preloadFolder("assets/exclude/sounds", "sounds/");

        trace("Preloading complete! complete: game assets preloaded!");
    }
	
	// When preload setting is not checked
	public static function cancelPreload():Void
	{
		trace("Canceled Preloading");
	}
	
	// Self explainatory
    static function preloadFolder(dir:String, pathPrefix:String):Void
    {
        if (!FileSystem.exists(dir)) return;

        for (file in FileSystem.readDirectory(dir))
        {
            var name = Path.withoutExtension(file);
            FlxG.bitmap.add(name, Paths.image(pathPrefix + name));
        }
    }

    // Sound loading crap
    static function preloadSoundFolder(dir:String, pathPrefix:String):Void
    {
        if (!FileSystem.exists(dir)) return;

        for (file in FileSystem.readDirectory(dir))
        {
            var name = Path.withoutExtension(file);
            var path = Paths.sound(pathPrefix + name); // Get the correct fucking path
            FlxG.sound.load(path); // Preload into the memo
        }
    }
}