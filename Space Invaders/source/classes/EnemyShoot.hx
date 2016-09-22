package classes;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;


/**
 * ...
 * @author ...
 */
class Shoot extends FlxSprite
{
	
	private var disparo:FlxSprite;
	//static private var soloUno:Bool;
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		
		disparo = new FlxSprite();
	}
	
	override public function update(elapsed : Float):Void{
		
		y += 15;
	}
	
}
