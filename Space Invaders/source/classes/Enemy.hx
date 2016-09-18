package classes;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author ...
 */
class Enemy extends FlxSprite
{
	private var enemigo:FlxSprite;
	static private var changeX:Int;
	static private var changeY:Int;	

	public function new(?X:Float = 0, ?Y:Float = 0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, "assets/images/Hearth.png");
		
		enemigo = new FlxSprite();
		
		changeX = 1;
		changeY = 1;
		
	}
	
	override public function update(elapsed:Float):Void{
		super.update(elapsed);
		
		x += 5 * changeX;
		y += changeY;
		if (x < 0 || x > FlxG.width - width) 
		{
			changeX = changeX *-1;
			changeY = 10;
		}
		else 
			changeY = 0;
	}
	public function distanciaEntreEnemigos(N:Int):Float
	{
		var _n:Float;
		_n = (FlxG.width - width * N) / (N + 1);
		return _n;
	}
}