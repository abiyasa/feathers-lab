package screens
{
	import flash.display.Bitmap;
	import feathers.controls.Button;
	import feathers.controls.Header;
	import feathers.controls.ImageLoader;
	import feathers.controls.Label;
	import feathers.controls.Screen;
	import feathers.controls.ScrollContainer;
	import feathers.layout.VerticalLayout;
	import starling.display.DisplayObject;
	import starling.events.Event;
	import starling.textures.Texture;
	
	[Event(name="showHello", type="starling.events.Event")]
	
	/**
	 * Hello Screen
	 * @author Abiyasa
	 */
	public class MainScreen extends Screen
	{
		protected var _header:Header;
		protected var _container:ScrollContainer;
		
		protected var _buttons:Array;
		
		public function MainScreen()
		{
			super();
		}
		
		override protected function initialize():void
		{
			super.initialize();
			
			_header = new Header();
			_header.title = 'Welcome';
			this.addChild(_header);
			
			_container = new ScrollContainer();
			_container.padding = 15;
			this.addChild(_container);
			
			var layout:VerticalLayout = new VerticalLayout();
			layout.horizontalAlign = VerticalLayout.HORIZONTAL_ALIGN_CENTER;
			_container.layout = layout;
			
			_buttons = [];
			var button:Button = new Button();
			button.label = 'Hello';
			button.width = 200;
			button.addEventListener(Event.TRIGGERED, onButtonClicked);
			_buttons.push(button);
			_container.addChild(button);
		}
		
		override protected function draw():void
		{
			super.draw();
			
			_header.width = this.actualWidth;
			_header.validate();
			
			_container.y = _header.height;
			_container.width = this.actualWidth;
		}
		
		protected function onButtonClicked(event:Event):void
		{
			dispatchEventWith('showHello');
		}
	}

}
