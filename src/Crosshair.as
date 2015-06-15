package  
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLRequest;
	import flash.ui.Mouse;
	import flash.events.MouseEvent;
	
	
	public class Crosshair extends Sprite
	{
		[Embed(source="../lib/richter.png")]
		private var richterArt:Class;		
		private var art:Bitmap;		
		
		//public static const SHOOT:String = "Shoot";
		//private var gunshotSound:Sound;
		private var soundChannel:SoundChannel;
		
		public function Crosshair() 
		{
			Mouse.hide();
			art = new richterArt();
			addChild(art);			
			art.scaleX = art.scaleY = 0.15;
			art.x = -art.width / 2;
			art.y = -art.height / 2;				
			this.addEventListener(Event.ENTER_FRAME, loop);
			this.addEventListener(MouseEvent.CLICK, onClick);
			
			//gunshotSound = new Sound();
			//gunshotSound.load(new URLRequest("../lib/gun.mp3"));
			
		}
		
		/*private function onClick(e:MouseEvent):void 
		{
			dispatchEvent(new Event(Crosshair.SHOOT));
			//hier komt het geluid
			soundChannel = gunshotSound.play(0, 1);
			
		}	*/	
		
		private function loop(e:Event):void 
		{
			this.x = stage.mouseX;
			this.y = stage.mouseY;
		}
		
		
		
	}
	
}// ActionScript file