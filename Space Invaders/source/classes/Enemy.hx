package classes;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.group.FlxGroup;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.math.FlxRandom;
import states.PlayState;

/**
 * ...
 * @author ...
 */
class Enemy extends FlxSprite
{
	private var enemigo:FlxSprite;
	private var _Xinicio:Float;
	static private var CambioDir:Bool;
	private var _relojDisparo:Float;
	private var bullet:FlxSprite;

	public function new(?X:Float = 0, ?Y:Float = 0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, "assets/images/Enemy.png");
		
		enemigo = new FlxSprite();
		
		_Xinicio = X;
		
		velocity.x = 20;
		CambioDir = false;
		reloj();
		
	}
	
	override public function update(elapsed:Float):Void{
		super.update(elapsed);
		/*if(x > _Xinicio + 8){
			x = _Xinicio + 8;
			velocity.x = -velocity.x;
			y = ++y;
			
			
		}
		
		if(x < _Xinicio - 8){
			x = _Xinicio - 8;
			velocity.x = -velocity.x;
			y = ++y;
		}
		*/
		
		if (x > FlxG.width - 8){
			CambioDir = true;
			
		}
		if (x < FlxG.width - FlxG.width){
			CambioDir = false;
			
		}
		
		if(CambioDir=false){
			velocity.x = -velocity.x;
			y = ++y;
		}
		if(CambioDir=true){
			velocity.x = -velocity.x;
			y = ++y;
		}
		
		
		
		if (y > FlxG.height * 0.1)
		{
			_relojDisparo -= elapsed; 
		}
		
		if(_relojDisparo <= 0){
			
			reloj();
			bullet = new FlxSprite();
			bullet.makeGraphic(10, 10);
			bullet.reset(x + width / 2 - bullet.width / 2, y);
			bullet.velocity.y = 400;
			FlxG.state.add(bullet);
			
		}
		
	}
	
	private function reloj():Void{
		_relojDisparo = 1 + FlxG.random.float() * 10;
	}
	
	
	
}