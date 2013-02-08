package
{
	import feathers.controls.ScreenNavigator;
	import feathers.controls.ScreenNavigatorItem;
	import feathers.themes.MinimalMobileTheme;
	import feathers.themes.MetalWorksMobileTheme;
	import screens.HelloScreen;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * The main file
	 * @author Abiyasa
	 */
	public class MainTest extends Sprite
	{
		protected var _theme1:MinimalMobileTheme;
		protected var _theme2:MetalWorksMobileTheme;
		protected var _screenNavigator:ScreenNavigator;

		public static const SCREEN_HELLO:String = 'helloScreen';
		
		public function MainTest()
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		protected function init(event:Event):void
		{
			//_theme1 = new MinimalMobileTheme(this.stage);
			_theme2 = new MetalWorksMobileTheme(this.stage);
			
			// create screens navigator
			_screenNavigator = new ScreenNavigator();
			_screenNavigator.addScreen(SCREEN_HELLO, new ScreenNavigatorItem(HelloScreen));
			
			this.addChild(_screenNavigator);
			_screenNavigator.showScreen(SCREEN_HELLO);
		}
		
	}

}
