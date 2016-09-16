package classes;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import states.PlayState;
import classes.Shoot;


/**
 * ...
 * @author ...
 */
class Spaceship extends FlxSprite
{
	private var nave:FlxSprite;
	private var SoloUno:Bool;
	private var _disparo:Shoot;

	public function new(X:Float=0, Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(300, 400, "assets/images/X-Fighter.png");
		
		nave = new FlxSprite();
		SoloUno = false;
		_disparo = new Shoot(x/* + (width - _disparo.width) / 2*/, y/* - _disparo.height*/, "assets/images/Laser.png");
		_disparo.setPosition(x + (width - _disparo.width) / 2, y - _disparo.height);

	}
	
	override public function update(elapsed : Float):Void{
		
		//CONSTROLES
		super.update(elapsed);
		
		velocity.x = 0;
		
		if (FlxG.keys.pressed.RIGHT && x < FlxG.width - width-2)
			x += 10;
		
		if (FlxG.keys.pressed.LEFT && x > 0)
			x -= 10;
			
			
		if (FlxG.keys.pressed.SPACE && SoloUno == false){
			SoloUno = true;
			_disparo = new Shoot(x/* + (width - _disparo.width) / 2*/, y/* - _disparo.height*/, "assets/images/Laser.png");
			_disparo.setPosition(x + (width - _disparo.width) / 2, y - _disparo.height);
			FlxG.state.add(_disparo);
		}
		if (_disparo.y < 0){
			_disparo.destroy;
			SoloUno = false;
		}
	}
}

 