
////////////////////////////////////////////////////////////////////////////////
//
//  Origin Digital, an Accenture Company
//  Copyright 2006-2010 Origin Digital
//  All Rights Reserved.
//
////////////////////////////////////////////////////////////////////////////////

package com.models
{
	
	import flash.events.Event;
	
	import mx.utils.ObjectUtil;

	public class mainEvent extends Event
	{
		 // the string must be the same with the one specified
		public static const MAIN_EVENT_DISP:String = "MainEvent"; 
		// Define a public variable to hold the ID and source.
        public var eventType:String;
        public var eventStat:Boolean;
        public var obj:Object
        public function mainEvent(type:String, eventType:String, eventStat:Boolean, obj:Object){
			super(type);
			this.eventType = eventType;
			this.eventStat = eventStat;
			this.obj = obj;
		}
		// override clone so the event can be redispatched
        public override function clone():Event {
            return new mainEvent(type, eventType, eventStat, obj);
        }
	}
}
	