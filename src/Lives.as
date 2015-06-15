package  
{
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Mike
	 */
	
	public class Lives extends TextField
	{		
		public static var lives:int = 3;
		private var maxLives:int = lives;
		
		public function set live(l:Number):void
		{
			lives = l;
			this.text = "LIVES: " + lives + "/" + maxLives;
			
		}
		public function get live():Number
		{
			return lives;
		}
		
		public function Lives() 
		{
			addEventListener(Event.ADDED_TO_STAGE, init);			
		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			this.x = this.x = this.y * Math.floor(Math.random());
			
			this.defaultTextFormat = new TextFormat("Verdana", 32, 0x00000);		
			this.text = "LIVES: " + lives + "/"  + maxLives;
			this.selectable = false;
		}
	}
}