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
				_enemigo.setPosition(_enemigo.distanciaEnemigos(CantEnX) * (j + 1) + _enemigo.width * j, 30 + i * 10 + i * _enemigo.height);
				add(_enemigo);
				Enemigossss.push(_enemigo);
			}
		}
		//Direccion = 1;
		N = -1;
	}
	override public function update(elapsed:Float):Void{
		super.update(elapsed);
		
		for (i in 0 ...Enemigossss.length) 
		{
			N = Enemigossss[i].cambioDireccion();
			trace(N);
		}
		
		for (i in 0 ...Enemigossss.length) 
		{
			Enemigossss[i].velocity.x = 100*N;
		}
		//_enemigo.velocity.x = 100 * Direccion;
		
		
		/*if (_enemigo.x > FlxG.width - _enemigo.width)
		{
			Direccion =-1;
		}
		
		if (_enemigo.x < 0)
		{
			Direccion =-1;
		}
		*/
		/*if (x > FlxG.width - width){
			//CambioDir = true;
			Direccion = -1;
			y = ++y;
		}
		if (x < 0){
			//CambioDir = false;
			Direccion = 1;
			y = ++y;
		}*/
	}
}