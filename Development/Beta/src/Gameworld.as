package  
{
	import flash.display.BitmapData;
	import net.flashpunk.Entity; 
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.FP
	import net.flashpunk.utils.Input 
	
	/**
	 * ...
	 * @author Zhilong Zhao
	 */
	public class Gameworld extends World 
	{
		private var square:Entity;
		public function Gameworld() 
		{
			trace ("gameworld constructor");			
		
		}
		override public function begin():void 
		{
			add (new Player);
			add (new Enemy ); 
			super.begin();
		}
	}

}