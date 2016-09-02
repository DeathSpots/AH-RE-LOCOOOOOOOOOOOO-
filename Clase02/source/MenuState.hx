package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

class MenuState extends FlxState
{
	private var cuadradito:FlxSprite;
	
	override public function create():Void
	{
		super.create();
		
		cuadradito = new FlxSprite();
		//	FlxSprite cuadradito = new FlxSprite();
		cuadradito.makeGraphic(64, 64);
		cuadradito.alpha = 1;
		cuadradito.color = FlxColor.CYAN;	//	ARGB: AARRGGBB
		
		add(cuadradito);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (FlxG.keys.pressed.D)
			cuadradito.x += 20;
		if (FlxG.keys.pressed.A)
			cuadradito.x -= 20;
		if (FlxG.keys.pressed.S)
			cuadradito.y += 20;
		if (FlxG.keys.pressed.W)
			cuadradito.y -= 20;
		
		/*
		if(cuadradito.x < FlxG.width - cuadradito.width)
			cuadradito.x += 1000;
		else
			cuadradito.x = FlxG.width - cuadradito.width;
		*/
		//	cuadradito.alpha -= 0.005;
	}
}
