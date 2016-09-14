package classes;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;




/**
 * ...
 * @author ...
 */
class Spaceship extends FlxSprite
{
	private var nave:FlxSprite;

	public function new(X:Float=0, Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		
		nave = new FlxSprite();
	}
	
	override public function update(elapsed : Float):Void{
		
		//CONSTROLES
		super.update(elapsed);
		
		velocity.x = 0;
		
		
		if (FlxG.keys.pressed.D && x < FlxG.width - width)
			x += 20;
		
		
		if (FlxG.keys.pressed.A && x > 0)
			x -= 20;

		
		
	}
	
}

 