package test01
{
	import feathers.controls.Button;
	import feathers.controls.Label;
	import feathers.controls.ScrollContainer;
	import feathers.layout.HorizontalLayout;
	import feathers.layout.VerticalLayout;
	import feathers.themes.MetalWorksMobileTheme;
	import starling.display.DisplayObject;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * The main file
	 * @author Abiyasa
	 */
	public class MainTest extends Sprite
	{
		protected var _theme:MetalWorksMobileTheme;
		protected var _label:Label;
		protected var _button:Button;
		protected var _container:ScrollContainer;

		public function MainTest()
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		protected function init(event:Event):void
		{
			_theme = new MetalWorksMobileTheme(this.stage);
			
			_container = new ScrollContainer();
			_container.padding = 10;
			this.addChild(_container);
			
			var layout:HorizontalLayout = new HorizontalLayout();
			layout.verticalAlign = HorizontalLayout.VERTICAL_ALIGN_MIDDLE;
			layout.gap = 10;
			_container.layout = layout;
			
			_label = new Label();
			_label.text = 'Oh hai!';
			_container.addChild(_label);
			
			_button = new Button();
			_button.label = 'What?';
			_container.addChild(_button);
		}
		
	}

}
