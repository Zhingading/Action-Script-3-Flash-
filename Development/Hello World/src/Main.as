package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP; 
	
	
	
	public class Main extends Engine
	{
		
		public function Main()
		{	
			   super (640, 480) ;
			   FP.screen.scale = 2;
		}
		
		override public function init():void 
		{
		       trace("flashpunk has started successfully!")
			   FP.world = new Squaregame 
			   super.init();
		}
	}
	
}