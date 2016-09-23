package states;

import classes.Enemy;
import classes.EnemyGroup;
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
	//public var playerBullets:FlxGroup;
	private var _vsPlayerBullets:FlxGroup;
	
	public var alienBullets:FlxGroup;
	private var _vsAlienBullets:FlxGroup;
	
	private var enjambre:EnemyGroup;
	private var CEX:Int;
	private var CEY:Int;
	
	//escudos
	private var _shields:FlxGroup;
	
	override public function create():Void
	{
		FlxG.mouse.visible = false;
		super.create();
		
		_nave = new classes.Spaceship();
		
		add(_nave);
		
		enjambre = new EnemyGroup(10, 5);
		add(enjambre);
		/*
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
		*/
		
	
		//var Naliens:Int = 50;
		//_enemigo = new FlxGroup(Naliens);
		//var a:Enemy;
		
		
		/*for(i in 0...Naliens){
			
			a = new Enemy(45 + (i % 10) * 55, 24 + Std.int(i / 10) * 32);
			_enemigo.add(a);
		}
		*/
		//add(_enemigo);
		
		_shields = new FlxGroup();
		
		
		for (i in 0...64 )
		{
			var sprite:FlxSprite = new FlxSprite(160 + 80 * Std.int(i / 16)  + (i % 4) * 4, FlxG.height - 120 + (Std.int((i  % 16) / 4) * 4));
			sprite.makeGraphic(4, 4);
			_shields.add(sprite);
		}
	
		add(_shields);
		
		_vsPlayerBullets = new FlxGroup();
		_vsPlayerBullets.add(_shields);
		_vsPlayerBullets.add(enjambre);
		
		
		
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		_nave.ColDisparo(_vsPlayerBullets);
		 
	}
	
}
