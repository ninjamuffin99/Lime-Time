package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.system.debug.stats.StatsGraph;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var stats:StatsGraph;

	override public function create()
	{
		super.create();

		FlxG.sound.playMusic("assets/music/girl.ogg");

		stats = new StatsGraph(0, 0, FlxG.width, FlxG.height, FlxColor.WHITE, "ms");
		FlxG.stage.addChild(stats);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		stats.update(FlxG.sound.music.time % 1000);
		FlxG.watch.addQuick("music time", FlxG.sound.music.time);
	}
}
