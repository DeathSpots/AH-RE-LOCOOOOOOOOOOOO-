package classes;

import flixel.FlxBasic;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author ...
 */
class EnemyBullet extends FlxSprite
{

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(10, 10);		
		velocity.y = 50;
		FlxG.state.add(this);
	}
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		if (y > FlxG.height){
			destroy();
		}		
		if ( overlaps(StaticReferences._nave))
		{
			kill();
			StaticReferences._nave.kill();	
		}
		if ( overlaps(StaticReferences._nave._disparo))
		{
			kill();
			StaticReferences._nave._disparo.kill();
			
		}
	}
	
}