package classes;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import states.PlayState;


/**
 * ...
 * @author ...
 */
class Spaceship extends FlxSprite
{
	private var nave:FlxSprite;

	public function new(X:Float=0, Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(300, 400, "assets/images/X-Fighter.png");
		
		nave = new FlxSprite();
	}
	
	override public function update(elapsed : Float):Void{
		
		//CONSTROLES
		super.update(elapsed);
		
		velocity.x = 0;
		
		if (FlxG.keys.pressed.D && x < FlxG.width - width-2)
			x += 10;
		
		if (FlxG.keys.pressed.A && x > 0)
			x -= 10;
			
			
			if (FlxG.keys.justPressed.SPACE)
		      
		    {
			var bullet:FlxSprite = cast(cast(FlxG.state, PlayState).playerBullets.recycle(), FlxSprite);
			bullet.reset(x + width/2 - bullet.width/2, y);
			bullet.velocity.y = -140;
		    }
	}
	
}

 