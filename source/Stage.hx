package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup;
import flixel.util.FlxColor;
import flixel.graphics.frames.FlxAtlasFrames;
import Paths;

class Stage extends FlxGroup
{
    public var curStage:String;

    public var stageBack:FlxGroup;
    public var stageFront:FlxGroup;

    public function new(stage:String)
    {
        super();

        stageBack = new FlxGroup();
        stageFront = new FlxGroup();
        add(stageBack);
        add(stageFront);

        curStage = stage;
        createStage(stage);
    }
	
    public function addImage(file:String, x:Float = 0, y:Float = 0, scrollX:Float = 1, scrollY:Float = 1, front:Bool = false, offsetX:Float = 0, offsetY:Float = 0):FlxSprite
    {
        var path:String = "images/stages/" + curStage + "/" + file;
        var sprite:FlxSprite = new FlxSprite(x + offsetX, y + offsetY).loadGraphic(Paths.image(path));
        sprite.scrollFactor.set(scrollX, scrollY);

        if (front)
            stageFront.add(sprite);
        else
            stageBack.add(sprite);

        return sprite;
    }

    public function addSparrow(file:String, x:Float = 0, y:Float = 0, scrollX:Float = 1, scrollY:Float = 1, front:Bool = false, defaultAnim:String = "idle", offsetX:Float = 0, offsetY:Float = 0):FlxSprite
    {
        var atlas:FlxAtlasFrames = Paths.getSparrowAtlas("images/stages/" + curStage + "/" + file);
        var sprite:FlxSprite = new FlxSprite(x + offsetX, y + offsetY).set_frames(atlas);
        sprite.scrollFactor.set(scrollX, scrollY);

        if (sprite.animation.has(defaultAnim))
            sprite.animation.play(defaultAnim);

        if (front)
            stageFront.add(sprite);
        else
            stageBack.add(sprite);

        return sprite;
    }

    function createStage(stage:String):Void
    {
        switch (stage)
        {
         // case "test":
             // addImage("bg.png", -400, -200, 0.9, 0.9);
             // addImage("floor.png", -450, 400, 1, 1, true);
             // addSparrow("speaker.xml", 300, 400, 1, 1, true);

            default:
                blackBG();
        }
    }

    function blackBG():Void
    {
        var bg:FlxSprite = new FlxSprite(0, 0).makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
        stageBack.add(bg);
    }
}