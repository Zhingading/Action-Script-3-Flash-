package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP; 	
	
	[SWF(width= "1120",height="960",frameRate="60")]
	public class Main extends Engine
	{
		public function Main()
		{	
			   super (1120, 960 ,60 ,false) ;  
		}
		
		override public function init():void 
		{
			   // My main class is the base of my project
		      FP.screen.color = 0x332222;
			  FP.world = new Mainmenu ();
			  

			  super.init();
		}
	}
	
}