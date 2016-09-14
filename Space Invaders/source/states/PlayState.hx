package states;

import classes.Shoot;
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
	private var _disparito:classes.Shoot;
	
	override public function create():Void
	{
		FlxG.mouse.visible = false;
		super.create();
		
		_nave = new classes.Spaceship();
		_disparito = new classes.Shoot(300, 400, "assets/images/X-Fighter.png");
		add(_nave);
		add(_disparito);
	 
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
			if (FlxG.keys.justPressed.J){
			_disparito = new classes.Shoot (_nave.x+_disparito.x/2, _nave.y-_disparito.y, "assets/images/Laser.png");//_disparito = new Shoot(/*_nave.x +( _nave.x / 2), _nave.y*/);
			add(_disparito);
			}
	}
}
