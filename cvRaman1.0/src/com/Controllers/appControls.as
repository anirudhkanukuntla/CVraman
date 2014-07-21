package com.Controllers
{
	
	import com.VoObjects.navigationClass;
	import com.utils.Throbber;
	
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.utils.*;
	
	import mx.collections.ArrayCollection;
	import mx.core.ClassFactory;
	import mx.utils.ObjectProxy;
	
	import org.osflash.thunderbolt.Logger;
	
	import spark.components.Label;
	
	public class appControls
	{
		
		
		import flash.net.*;
		import flash.events.*;
		
		import mx.collections.XMLListCollection;
		
		[Event(name="MainEvent", type="com.models.mainEvent") ]
		
		public var _xmlLoader:XML_LOADER;
	
		[Bindable]
		public var mainArray:ArrayCollection = new ArrayCollection;
		[Bindable]
		public var depArray:ArrayCollection = new ArrayCollection;
		
		[Bindable]
		public var navigationPath:navigationClass = new navigationClass;
		[Bindable]
		public var throbber:Throbber = new Throbber;
		[Bindable]
		public var mainNavDataProvide:XMLListCollection = new XMLListCollection;
		public function _info(param:String):void{
			Logger.info("OD info:\n"+param);
		} 
		public function _debug(param:String, param1:Object):void{
			Logger.debug("OD debug:\n"+param, param1)
		} 
		public function _warn(param:String, param1:Object):void{
			Logger.warn("OD debug:\n"+param, param1)
		} 
		public function _error(param:String, param1:*):void{
			Logger.error("OD debug:\n"+param, param1)
		} 
		
		//This constructor function implements "Singleton"
		public function appControls(p_key:SingletonBlocker){
			if (p_key == null) {
				throw new Error("Error: Instantiation failed: Use appControls.getInstance() instead of new.");
			}
			
		}
		
		//Singleton Class 
		private static var instance:appControls;
		public static function getInstance():appControls {
			if (instance == null) {
				instance = new appControls(new SingletonBlocker());
			}
			return instance;
		}
		
		// This implements local event dispatcher 
		public var buttDispatcher:buttDispatcher = new buttDispatcher();
		//This function dispatch mainEvent
		import com.models.mainEvent;
		
		public function DispMainEvent(arg1:String, arg2:Boolean, obj:Object):void {
			//		   trace("Event Name ----->  "+arg1);
			buttDispatcher.dispatchEvent(new mainEvent(mainEvent.MAIN_EVENT_DISP, arg1, arg2, obj));
		}
		
		
		import com.models.jsEvent;
		public function DispJSEvent(arg1:String, arg2:Boolean, obj:Object):void {
			buttDispatcher.dispatchEvent(new jsEvent(jsEvent[arg1], arg1, arg2, obj));
		}
	}
}

//Singleton Blocker
internal class SingletonBlocker {}

// EventDispatcher
import flash.events.IEventDispatcher;
import flash.events.EventDispatcher;
import flash.events.Event;

class buttDispatcher implements IEventDispatcher {    
	private var dispatcher:EventDispatcher;
	public function buttDispatcher() {
		dispatcher = new EventDispatcher(this);
	}
	public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void{
		dispatcher.addEventListener(type, listener, useCapture, priority);
	}
	
	public function dispatchEvent(evt:Event):Boolean{
		return dispatcher.dispatchEvent(evt);
	}
	
	public function hasEventListener(type:String):Boolean{
		return dispatcher.hasEventListener(type);
	}
	
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void{
		dispatcher.removeEventListener(type, listener, useCapture);
	}
	
	public function willTrigger(type:String):Boolean {
		return dispatcher.willTrigger(type);
	}
}