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
		
		/*
		cuadradito = new FlxSprite(300,400);  //los numeros que agregues dentro de los parentesis son las cordenadas donde empieza el Objeto
		//	FlxSprite cuadradito = new FlxSprite();
		
		cuadradito.loadGraphic(AssetPaths.SimpleShipGrande__png);
		
		//cuadradito.alpha = 1;
		//cuadradito.color = FlxColor.CYAN;	//	ARGB: AARRGGBB
		
		add(cuadradito);
		*/
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (FlxG.keys.pressed.D && cuadradito.x < FlxG.width - cuadradito.width )
			cuadradito.x += 5;
		if (FlxG.keys.pressed.A && cuadradito.x > FlxG.width - FlxG.width)
			cuadradito.x -= 5;
		if (FlxG.keys.pressed.S)
			cuadradito.loadGraphic(AssetPaths.SimpleShip__png);
		if (FlxG.keys.pressed.W)
			cuadradito.loadGraphic(AssetPaths.SimpleShipGrande__png);
		
		/*
		if(cuadradito.x < FlxG.width - cuadradito.width)
			cuadradito.x += 1000;
		else
			cuadradito.x = FlxG.width - cuadradito.width;
		*/
		//	cuadradito.alpha -= 0.005;
	}
}
