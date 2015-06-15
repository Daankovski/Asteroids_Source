package 
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Mike
	 */
	public class Background extends Sprite
	{
		
		//[Embed(source="lib/achtergrond.png")]
		[Embed(source="lib/western_achtergrond-01.jpg")]
		
		private var backgroundImage:Class;
		private var bgImage:Bitmap;
				
		public function Background() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		
		private function init(e:Event):void
		{
			bgImage = new backgroundImage();
			addChild(bgImage);
			
			var scale:Number =  stage.stageWidth / bgImage.width;

			// if the height of the image will be taller than the stage,
			// set the scale to fit the height of the image to the height of the stage
			if(bgImage.height * scale <= stage.stageHeight){
				scale = stage.stageHeight / bgImage.height;
			}   

			// apply the scale to the image
			bgImage.scaleX = bgImage.scaleY = scale;
			
			
			
			
		}
		
		
		
		
	}

}