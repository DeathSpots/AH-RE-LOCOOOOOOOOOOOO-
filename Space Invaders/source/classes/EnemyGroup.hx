package classes;

import flixel.group.FlxGroup;
import flixel.FlxG;
import classes.Enemy;

/**
 * ...
 * @author ...
 */
class EnemyGroup extends FlxGroup
{
	private var Naliens:Int;
	private var Direccion:Int;
	private var Enemigossss:Array<Enemy> = [];
	private var N:Int;

	public function new(?CantEnX:Int = 10, ?CantEnY:Int=5) 
	{
		super(CantEnX*CantEnY);
		
		for (i in 0 ...CantEnY) 
		{
			for (j in 0...CantEnX) 
			{
				var _enemigo:Enemy;
				_enemigo = new Enemy();
				_enemigo.setPosition(_enemigo.distanciaEnemigos(CantEnX) * (j + 1) + _enemigo.width * j, i * 3 + i * _enemigo.height);
				add(_enemigo);
				Enemigossss.push(_enemigo);
			}
		}
		//Direccion = 1;
		N = -1;
	}
}