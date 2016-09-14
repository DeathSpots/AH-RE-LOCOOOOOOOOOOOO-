package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class MenuState extends FlxState
{
	
	
	override public function create():Void
	{
		super.create();
		add(new FlxText(180, 100, 0, "SPACE INVADERS", 30));
		add(new FlxText(250, 150, 0, "(ah re loco)", 15));
		
		
		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
	}
}
