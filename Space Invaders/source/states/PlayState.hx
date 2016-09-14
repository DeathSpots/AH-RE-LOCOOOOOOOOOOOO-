package states;

import classes.Spaceship;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class PlayState extends FlxState
{
	
	private var _nave:classes.Spaceship;
	
	override public function create():Void
	{
		FlxG.mouse.visible = false;
		super.create();
		
		_nave = new classes.Spaceship(300,400);
		
		add(_nave);
	 
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		
	}
}
