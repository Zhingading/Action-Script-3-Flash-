package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.graphics.Text;
	public class  Mainmenu extends World 
	{
		public function Mainmenu() 
		{
			var titleText:Text = new Text("Press 'ENTER' to Start");
			var textEntity:Entity = new Entity(0, 0, titleText);
			titleText.size = 50;
			textEntity.x = (FP.width/2)-(titleText.width/2);
			textEntity.y = (FP.height / 1.7) - (titleText.height / 2);
			add(textEntity);
			
			var splashText:Text = new Text("WAR ON MARS!",0,0,200,1000);
			splashText.color = 0xD54D2B;
			splashText.size = 150;
			var splashEntity:Entity = new Entity(5,5,splashText);
			splashEntity.x = (FP.width/2)-(splashText.width/2);
			splashEntity.y = 200;
			add(splashEntity);
			
			var nameText:Text = new Text("By Zhilong Zhao!",0,900);
			nameText.color = 0x16D0E1;
			nameText.size = 30;
			var nameEntity:Entity = new Entity(5, 5, nameText);
			nameText.x = (FP.width / 2) - (nameText.width / 2);			
			add(nameEntity);
			
		}
		
		override public function update():void
		{
			if (Input.check(Key.ENTER))
			{
				FP.screen.color = 0x2d2323;
				FP.world = new GameWorldOmega();
			}
		}
	}
}