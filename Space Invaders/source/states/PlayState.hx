package states;

import classes.Enemy;
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
	private var _enemigo:Enemy;
	
	override public function create():Void
	{
		FlxG.mouse.visible = false;
		super.create();
		
		_nave = new classes.Spaceship(300, 400, "assets/images/X-Fighter.png");
		
		add(_nave);
		
		_enemigo = new Enemy(100,200);
		add(_enemigo);
	 
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		
	}
}
