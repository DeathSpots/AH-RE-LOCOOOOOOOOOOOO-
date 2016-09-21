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
	private var _enemigo:FlxGroup;
	public var playerBullets:FlxGroup;
	
	//escudos
	private var _shields:FlxGroup;
	
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
		
		
	
		var Naliens:Int = 50;
		_enemigo = new FlxGroup(Naliens);
		var a:Enemy;
		
		
		for(i in 0...Naliens){
			
			a = new Enemy(45 + (i % 10) * 55, 24 + Std.int(i / 10) * 32);
			_enemigo.add(a);
		}
		
		add(_enemigo);
		
		_shields = new FlxGroup();
		
		for (i in 0...64)
		{
			sprite = new FlxSprite(160 + 80 * Std.int(i / 16) + (i % 4) * 4, FlxG.height - 120 + (Std.int((i % 16) / 4) * 4));
			sprite.active = false;
			sprite.makeGraphic(4, 4);
			_shields.add(sprite);
		}
		
		add(_shields);
		

	}

	override public function update(elapsed:Float):Void
	{
		
		
		FlxG.overlap(playerBullets, _enemigo, stuffHitStuff);	
		super.update(elapsed);
	}
	
	private function stuffHitStuff(Object1:FlxObject, Object2:FlxObject):Void
	{
		Object1.kill();
		Object2.kill();
	}
}
