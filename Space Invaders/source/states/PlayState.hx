package states;

import classes.Enemy;
import classes.Shoot;
import classes.Spaceship;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	
	private var _nave:classes.Spaceship;
	private var _enemigo:Enemy;
	//private var _enemigo:FlxGroup;
	public var playerBullets:FlxGroup;
	
	override public function create():Void
	{
		FlxG.mouse.visible = false;
		super.create();
		
		_nave = new classes.Spaceship();
		
		add(_nave);
		
		var numPlayerBullets:Int = 1;
		playerBullets = new FlxGroup(numPlayerBullets);
		var sprite:FlxSprite;
		
		for (i in 0...numPlayerBullets)			
		{
			
			sprite = new FlxSprite( -100, -100);	
			
			sprite.makeGraphic(2, 8);			
			sprite.exists = false;
			
			playerBullets.add(sprite);			
		}
		
		add(playerBullets);
		
		_enemigo = new Enemy(300, 200);
		add(_enemigo);
		
		
	
		/*var Naliens:Int = 50;
		_enemigo = new FlxGroup(Naliens);
		var a:Enemy;
		var colors:Array<Int>;
		
	colors = [FlxColor.BLUE, (FlxColor.BLUE | FlxColor.GREEN), FlxColor.GREEN, (FlxColor.GREEN | FlxColor.RED), FlxColor.RED];
		
		
		
		
		for(i in 0...Naliens){
			
			a = new Enemy(8 + (i % 10) * 32, 24 + Std.int(i / 10) * 32,	colors[Std.int(i / 10)]);
			_enemigo.add(a);
		}
		*/

	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
			
	}
}
