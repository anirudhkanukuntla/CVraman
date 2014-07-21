

////////////////////////////////////////////////////////////////////////////////
//
//  Origin Digital, an Accenture Company
//  Copyright 2006-2010 Origin Digital
//  All Rights Reserved.
//
////////////////////////////////////////////////////////////////////////////////

package com.models
{
	import flash.net.URLLoader;
	import flash.net.URLRequest;
    
	public class myLoader extends URLLoader
	{
		public var name:String;
		public function myLoader(request:URLRequest=null)
		{
			super(request);
		}
		
	}
}