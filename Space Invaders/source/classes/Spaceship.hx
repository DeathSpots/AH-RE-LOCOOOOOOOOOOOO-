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
	
	
	private var SoloUno:Bool;
	public var _disparo:Shoot;

	public function new(X:Float=0, Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(80, 120, "assets/images/Palyer_8bits.png");
		
		nave = new FlxSprite();
		
		_disparo = new Shoot(x, y, "assets/images/Laser_8bits.png");
		_disparo.setPosition(x + (width - _disparo.width) / 2, y - _disparo.height);
        _disparo.alive = false;
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
			
			
		if (FlxG.keys.justPressed.SPACE && !_disparo.alive){
			_disparo.revive();
			
			_disparo.setPosition(x + (width - _disparo.width) / 2, y - _disparo.height);
			FlxG.state.add(_disparo);
		}
		if (_disparo.y < 0){
			_disparo.kill();
			
		}
		
	}
	
	
}

 