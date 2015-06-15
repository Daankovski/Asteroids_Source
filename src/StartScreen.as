package 
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.ui.Mouse;
	//import Main;
	
	/**
	 * ...
	 * @author 
	 */
	public class StartScreen extends MovieClip
	{
		
		public var _BG:Loader = new Loader();
		
		[Embed(source="lib/startknop.png")]
		
		private var startButton:Class;
		public var buttonImage:Bitmap;
		
		[Embed(source="lib/startknop_down.png")]
		
		private var startButtonHover:Class;
		private var buttonHoverImage:Bitmap;
		
		public function StartScreen() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
			this.addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
			this.addEventListener(MouseEvent.MOUSE_OUT, mouseOut);
			
			_BG.load(new URLRequest("../animations/screens/menu_achtergrond.swf"));
			_BG.scaleX = 1.25;
			_BG.scaleY = 1.25;
			_BG.x = -250;
			_BG.y = -200;
			//_BG.y =
			  
		}
		
		private function init(e:Event):void
		{
			addChild(_BG);
			
			buttonImage = new startButton();
			addChild(buttonImage);
			
			buttonHoverImage = new startButton();
			addChild(buttonHoverImage);
			
			buttonImage.x = stage.stageWidth / 2 + (buttonImage.x - buttonImage.width / 2);
			buttonImage.y = stage.stageHeight / 2 + (buttonImage.y - buttonImage.height / 2);
			
			buttonHoverImage.x = stage.stageWidth / 2 + (buttonHoverImage.x - buttonHoverImage.width / 2);
			buttonHoverImage.y = stage.stageHeight / 2 + (buttonHoverImage.y - buttonHoverImage.height / 2);
			
			
		}
		
			public function mouseOver(e:MouseEvent):void
			{
				if (buttonImage.hitTestPoint(mouseX, mouseY))
				{
					buttonImage.alpha = 0.5;
					buttonHoverImage.alpha = 1.0;
					
					
				}
			}
			
			public function mouseOut(e:MouseEvent):void
			{
				if (!mouseY >= 610 && mouseY <= 893 && mouseX >= 602 && mouseX <= 1418)
				{
					buttonHoverImage.alpha = 0.5;
					buttonImage.alpha = 1.0;
					
				}
			}	
	}
}