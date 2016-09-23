package classes;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup;
import flixel.system.FlxAssets.FlxGraphicAsset;
import states.PlayState;
import classes.Shoot;
import flixel.FlxObject;


/**
 * ...
 * @author ...
 */
class Spaceship extends FlxSprite
{
	private var nave:FlxSprite;
	private var entidad:FlxGroup;
	
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
	
	public function ColDisparo (entidad:FlxGroup){
		
		FlxG.collide(_disparo, entidad, stuffHitStuff);
		
	}
	
	private function stuffHitStuff(Object1:FlxObject, Object2:FlxObject):Void
	{
		Object1.kill();
		Object2.kill();
		SoloUno = false;
	}
	
	override public function update(elapsed : Float):Void{
		
		//CONSTROLES
		super.update(elapsed);
		
		velocity.x = 0;
		
		if (FlxG.keys.pressed.RIGHT && x < FlxG.width - width-2)
			velocity.x += 175;
		
		if (FlxG.keys.pressed.LEFT && x > 0)
			velocity.x -= 175;
			
			
		if (FlxG.keys.justPressed.SPACE && SoloUno == false){
			SoloUno = true;
			_disparo = new Shoot(x/* + (width - _disparo.width) / 2*/, y/* - _disparo.height*/, "assets/images/Laser.png");
			_disparo.setPosition(x + (width - _disparo.width) / 2, y - _disparo.height);
			FlxG.state.add(_disparo);
		}
		if (_disparo.y < 0){
			_disparo.destroy;
			SoloUno = false;
		}
		ColDisparo(entidad);
	}
	
	
}

 