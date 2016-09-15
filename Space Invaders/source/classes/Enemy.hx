package classes;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author ...
 */
class Enemy extends FlxSprite
{
	private var enemigo:FlxSprite;
	private var _Xinicio:Float;

	public function new(?X:Float = 0, ?Y:Float = 0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, "assets.images.Hearth.png");
		
		enemigo = new FlxSprite();
		
		_Xinicio = X;
		
		velocity.x = 20;
		
	}
	
	override public function update(elapsed:Float):Void{
		super.update(elapsed);
		if(x > _Xinicio + 8){
			x = _Xinicio + 8;
			velocity.x = -velocity.x;
			y = ++y;
			
			
		}
		
		if(x < _Xinicio - 8){
			x = _Xinicio - 8;
			velocity.x = -velocity.x;
			y = ++y;
		}
		
	}
}