package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class MenuState extends FlxState
{
	
	
	override public function create():Void
	{
		super.create();
		add(new FlxText(180, 100, 0, "SPACE INVADERS", 30));
		add(new FlxText(250, 150, 0, "(ah re loco)", 15));
		
		var startButton:FlxButton = new FlxButton(50, 50, "Start", OnClickButton);
		startButton.setPosition((FlxG.width - startButton.width) / 2, (FlxG.height - startButton.height) / 2);
        add(startButton);
    }
 
    function OnClickButton():Void
    {
        FlxG.switchState(new PlayState());
    }

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
	}
}
