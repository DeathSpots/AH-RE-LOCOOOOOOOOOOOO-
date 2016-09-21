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

	public function new(?X:Float = 0, ?Y:Float = 0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, "assets.images.Hearth.png");
		
		enemigo = new FlxSprite();
		
		_Xinicio = X;
		
		velocity.x = 20;
		CambioDir = false;
		
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
	}
}