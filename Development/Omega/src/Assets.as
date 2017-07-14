package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.Mask;
	
	/**
	 * ...
	 * @author Zhilong Zhao
	 */
	public class Assets  
	{
		[Embed(source="../Images/stars.png")]
		public static const SPRITE_TILESET:Class;
				
		[Embed(source = "../Images/alien1.png")]
		public static const GRAPHIC_SHIP_ENEMY1:Class;
		
		[Embed(source = "../Images/alien2.png")]
		public static const GRAPHIC_SHIP_ENEMY2:Class;
		
		[Embed(source="../Images/alien3.png")]
		public static const GRAPHIC_SHIP_ENEMY3:Class;
		
		[Embed(source = "../Images/alien4.png")]
		public static const GRAPHIC_SHIP_ENEMY4:Class;
		
		[Embed(source="../Images/Standard blue.png")]
		public static const GRAPHIC_SHIP_BLUE:Class;
		
	    [Embed(source="../Images/Standard green.png")]
		public static const GRAPHIC_SHIP_GREEN:Class;
		
		[Embed(source="../Images/Standard grey.png")]
		public static const GRAPHIC_SHIP_GREY:Class;
		
		[Embed(source="../Images/Laser.png")]
		public static const GRAPHIC_LASER:Class;
		
		[Embed(source = "../Images/Missile.png")]
		public static const GRAPHIC_MISSILE:Class;
		
		[Embed(source = "../Images/Bullet.png")]
		public static const GRAPHIC_BULLET:Class;
		
		[Embed(source = "../Sounds/Mega Man 2 Medley - Super Smash Bros. 3DS.mp3")] 
		public const MUSIC_MEGAMAN:Class
		
		[Embed(source = "../Images/Phazon.png")]
		public static const ENEMY_BULLET:Class;
	}
	
}