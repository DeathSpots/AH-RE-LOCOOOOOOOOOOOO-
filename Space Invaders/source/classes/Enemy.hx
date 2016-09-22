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
	static private var CambioDir:Bool;
	static private var Direccion:Int;

	public function new(?X:Float = 0, ?Y:Float = 0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, "assets/images/Hearth.png");
		
		enemigo = new FlxSprite();
		
		_Xinicio = X;
		
		velocity.x = -20;
		CambioDir = false;
		Direccion = 1;
		
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
		velocity.x = 2000 * Direccion;
		
		if (x > FlxG.width - width){
			//CambioDir = true;
			Direccion = -1;
			y = ++y;
		}
		if (x < 0){
			//CambioDir = false;
			Direccion = 1;
			y = ++y;
		}
		
		/*if(CambioDir=false){
			velocity.x = -velocity.x;
			//y = ++y;
		}
		if(CambioDir=true){
			velocity.x = -velocity.x;
			//y = ++y;
		}*/
	}
}