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

	public class jsEvent extends Event
	{
		
		 // the string must be the same with the one specified
		public static const PLAY:String = "PlayEvent"; 
		public static const PAUSE:String = "PauseEvent"; 
		public static const STOP:String = "StopEvent"; 
		public static const SKIP:String = "SkipEvent"; 
		public static const cueVideo:String = "CueEvent"; 
		public static const loadVideo:String = "SetupEvent"; 
		public static const READY:String = "ReadyEvent";
		public static const ERROR:String = "ErrorEvent";
		public static const MUTE:String = "muteEvent";
		public static const unMUTE:String = "unMuteEvent";
		public static const setVolume:String = "setVolumeEvent";
		public static const setPlaybackControlVisible:String = "setPlaybackControlVisibleEvent";
		public static const setPlaybackControlAutohide:String = "setPlaybackControlAutohideEvent";
		public static const setVisility:String = "setVisilityEvent"
		public static const onStateChange:String = "onStateChangeEvent"
		
		
		// Define a public variable to hold the ID and source.
        public var eventType:String;
        public var eventStat:Boolean;
        public var obj:Object
        public function jsEvent(type:String, eventType:String, eventStat:Boolean, obj:Object){
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