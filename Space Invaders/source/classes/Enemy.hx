package classes;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author ...
 */
class Enemy extends FlxSprite
{
	private var enemigo:FlxSprite;
	private var _Xinicio:Float;
	//static private var CambioDir:Bool;
	//static private var Direccion:Int;

	public function new(?X:Float = 0, ?Y:Float = 0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, "assets/images/Enemy.png");
		
		enemigo = new FlxSprite();
		
		//velocity.y = 10;
		
		//velocity.x = -100;
		/*CambioDir = false;
		Direccion = 1;*/
		
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
		/*velocity.x = 2000 * Direccion;
		
		if (x > FlxG.width - width){
			//CambioDir = true;
			Direccion = -1;
			y = ++y;
		}
		if (x < 0){
			//CambioDir = false;
			Direccion = 1;
			y = ++y;
		}*/
		
		/*if(CambioDir=false){
			velocity.x = -velocity.x;
			//y = ++y;
		}
		if(CambioDir=true){
			velocity.x = -velocity.x;
			//y = ++y;
		}*/
	}
	public function distanciaEnemigos(CE:Int):Float
	{
		var _distancia:Float;
		_distancia = (FlxG.width - width * CE) / (CE+1);
		return _distancia;
	}
	public function cambioDireccion():Int
	{
		var Direccion:Int = 1;
		if (x > FlxG.width - width)
			Direccion = -1;
		if (x < 0)
			Direccion = 1;
		return Direccion;
	}
}