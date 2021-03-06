package states;

import classes.Enemy;
import classes.EnemyGroup;
import classes.Shoot;
import classes.Spaceship;
import classes.StaticReferences;
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
	
	private var _vsPlayerBullets:FlxGroup;
	
	//public var alienBullets:FlxGroup;
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
		StaticReferences._nave = _nave;
		
		
		enjambre = new EnemyGroup(10, 5);
		add(enjambre);
		
		_shields = new FlxGroup();
		
		
		for (i in 0...64 )
		{
			var sprite:FlxSprite = new FlxSprite(30 + 30 * Std.int(i / 16)  + (i % 4) * 2, FlxG.height - 50 + (Std.int((i  % 16) / 4) * 2));
			sprite.makeGraphic(2, 2);
			_shields.add(sprite);
		}
	
		add(_shields);
		
		_vsPlayerBullets = new FlxGroup();
		_vsPlayerBullets.add(_shields);
		_vsPlayerBullets.add(enjambre);
		
		_vsAlienBullets = new FlxGroup();
		_vsAlienBullets.add(_shields);
		_vsAlienBullets.add(_nave);
		
	}
	
	override public function update(elapsed:Float):Void
	{		
		super.update(elapsed);
		_nave.ColDisparo(_vsPlayerBullets);
		
		//cast(enjambre.members[0], Enemy).ColBullet(_vsAlienBullets);
	}
	
}
