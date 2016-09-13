package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

/**
 * ...
 * @author ...
 */
class Player
{
	private var nave:FlxSprite;

	public function new() 
	{
		super.create();
		nave = new FlxSprite(300, 400);
		nave.loadGraphic(AssetPaths.SimpleShipGrande__png);
		add(nave);
	}
	
}