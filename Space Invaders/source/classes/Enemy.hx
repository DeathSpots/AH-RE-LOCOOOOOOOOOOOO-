package classes;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.group.FlxGroup;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.math.FlxRandom;
import states.PlayState;
import flixel.FlxObject;

/**
 * ...
 * @author ...
 */
class Enemy extends FlxSprite
{
	private var enemigo:FlxSprite;

	static private var CambioDir:Bool;
	private var _relojDisparo:Float;

	private var entidad2:FlxGroup;

	public function new(?X:Float = 0, ?Y:Float = 0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, "assets/images/Enemy_8bits.png");
		
		enemigo = new FlxSprite();
		velocity.y = 5;
		reloj();
		
	}
	
	
	
	
	override public function update(elapsed:Float):Void{
		super.update(elapsed);
		
		if (y > FlxG.height * 0.35)
		{
			_relojDisparo -= elapsed; 
		}
		
		if(_relojDisparo <= 0){
			
			reloj();
			var bullet:EnemyBullet = new EnemyBullet(x + width / 2, y);		
		}
	}
	
	private function reloj():Void{
		_relojDisparo = 1 + FlxG.random.float() * 15;
	}
	
	public function distanciaEnemigos(CE:Int):Float
	{
		var Distancia:Float;
		Distancia = (FlxG.width - width * CE) / (CE+1);
		return Distancia;
	}
	
}