package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input 
	import net.flashpunk.utils.Key 
	import net.flashpunk.FP 
	
	
	/**
	 * ...
	 * @author Zhilong Zhao
	 */
	public class Player extends Entity 
	{
		[Embed(source="../Images/biker dude.png")] private const PLAYER_GRAPHIC:Class;
		public var image:Image;
		public function Player() 
		{
			image = new Image (PLAYER_GRAPHIC);
			graphic = image;  
			setHitbox(160, 120, -10, -20); 
			type = "Player"; 
		}
		
		override public function update ():void 
		{
		    if (Input.check(Key.RIGHT))
		    {
			   x += 400 * FP.elapsed ;
		    }
			if (Input.check(Key.LEFT))
		    {
			   x -= 400 * FP.elapsed ;
		    }
			if (Input.check(Key.UP))
		    {
			   y -= 400 * FP.elapsed ;
		    }
			if (Input.check(Key.DOWN))
		    {
			   y += 400 * FP.elapsed ;
		    }
			if (collide("enemy", x, y))
			{
				image.color =  0xff0000;
			}
			else
			{
				image.color = 0xffffff
			}
			
		    super.update();
		}
	}

}