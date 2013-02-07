package test01
{
	import flash.display.Sprite;
	import flash.events.Event;
	import feathers.system.DeviceCapabilities;
	import starling.core.Starling;
	
	/**
	 * Starting Starling
	 * @author Abiyasa
	 */
	public class Main extends Sprite
	{
		private var _starling:Starling;
		
		public function Main():void
		{
			// pretends to be an iPhone Retina screen, otherwise it's too big
			DeviceCapabilities.dpi = 326;
			DeviceCapabilities.screenPixelWidth = 960;
			DeviceCapabilities.screenPixelHeight = 640;

			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			_starling = new Starling(MainTest, this.stage);
			_starling.start();
		}
		
	}
	
}
