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
	public var bullet:FlxSprite;
	private var entidad2:FlxGroup;

	public function new(?X:Float = 0, ?Y:Float = 0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, "assets/images/Enemy.png");
		
		enemigo = new FlxSprite();
		velocity.y = 5;
		reloj();
		
	}
	
	public function ColBullet (entidad2:FlxGroup){
		
		FlxG.collide(bullet, entidad2, stuffHitStuff2);
		
	}
	
	private function stuffHitStuff2(Object1:FlxObject, Object2:FlxObject):Void
	{
		
		Object1.kill();
		Object2.kill();
		
	}
	
	override public function update(elapsed:Float):Void{
		super.update(elapsed);
		
		if (y > FlxG.height * 0.35)
		{
			_relojDisparo -= elapsed; 
		}
		
		if(_relojDisparo <= 0){
			
			reloj();
			bullet = new FlxSprite();
			bullet.makeGraphic(10, 10);
			bullet.reset(x + width / 2 - bullet.width / 2, y);
			bullet.velocity.y = 50;
			FlxG.state.add(bullet);
		
		}
		
		if (bullet.y > FlxG.height){
			bullet.destroy;
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