package  
{
	import flash.display.Bitmap;
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
	public class Squaregame extends World 
	{
		private var square:Entity;
		public function Squaregame() 
		{
			trace ("squaregame constructor");			
		
		}
		override public function begin():void 
		{
			
		   var image :Image = new Image (new BitmapData (20, 20, true, 0xffffffff)); 
		   square = new Entity (0, 0, image) 
		   add (square); 
		   super.begin(); 
		}
		
		override public function update():void 	
		{
			square.x = Input.mouseX;
			square.y = Input.mouseY;
			if (Input.mousePressed)
			{
				Image(square.graphic).color = FP.rand (0xffffffff)
				trace("mouse pressed")
			}
			super.update();
		}
	}

}