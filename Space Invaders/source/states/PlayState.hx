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
	//private var _enemigo:Enemy;
	private var _enemigo:FlxGroup;
	//public var playerBullets:FlxGroup;
	private var cantEnemigosX:Int;
	private var cantEnemigosY:Int;
	private var distanciaEnemigosX:Float;
	
	override public function create():Void
	{
		FlxG.mouse.visible = false;
		super.create();
		
		_nave = new classes.Spaceship();
		add(_nave);
		
		cantEnemigosX = 7;
		cantEnemigosY = 3;
		//_enemigo = new Enemy(300, 200);
		//add(_enemigo);
		var Naliens:Int = cantEnemigosX * cantEnemigosY;
		_enemigo = new FlxGroup(Naliens);
		var a:Enemy;
		
		for (i in 0 ...cantEnemigosY)
		{
			for (j in 0 ...cantEnemigosX) 
			{
				a = new Enemy();
				a.setPosition(a.distanciaEntreEnemigos(cantEnemigosX) * (j + 1) + a.width * j, 10 + a.height * i + 5 * i);
				add(a);
			}
		}
		
		
		
		/*for(i in 0...Naliens){
			
			a = new Enemy(8 + (i % 10) * 32, 24 + Std.int(i / 10) * 32,	colors[Std.int(i / 10)]);
			_enemigo.add(a);
		}*/
		

	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
			
	}
}
