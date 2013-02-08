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
	import starling.textures.Texture;
	
	/**
	 * Hello Screen
	 * @author Abiyasa
	 */
	public class HelloScreen extends Screen
	{
		[Embed(source="../../assets/hello.png")]
		private const IMAGE:Class;
		
		protected var _button:Button;
		protected var _header:Header;
		protected var _container:ScrollContainer;
		
		public function MainScreen()
		{
			super();
		}
		
		override protected function initialize():void
		{
			super.initialize();
			
			_header = new Header();
			_header.title = 'Hello';
			var leftItems:Vector.<DisplayObject> = new Vector.<DisplayObject>();
			_header.leftItems = leftItems;
			this.addChild(_header);
			
			_button = new Button();
			_button.label = 'Back';
			leftItems.push(_button);
			
			_container = new ScrollContainer();
			_container.padding = 15;
			this.addChild(_container);
			
			var layout:VerticalLayout = new VerticalLayout();
			layout.horizontalAlign = VerticalLayout.HORIZONTAL_ALIGN_CENTER;
			_container.layout = layout;
			
			_image = new ImageLoader();
			_image.source = Texture.fromBitmap(Bitmap(new IMAGE()));
			_container.addChild(_image);
			
			_label = new Label();
			_label.text = 'Is it me you\'re looking for ?';
			_container.addChild(_label);
		}
		
		override protected function draw():void
		{
			super.draw();
			
			_header.width = this.actualWidth;
			_header.validate();
			
			_container.y = _header.height;
			_container.width = this.actualWidth;
		}
		
	}

}
