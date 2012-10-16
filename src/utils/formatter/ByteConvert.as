/****************************************************
 *  
 *  Copyright 2012. All Rights Reserved.
 *  This Software including limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software.
 *  
 *****************************************************
 *
 *  Create by - Oleg Pimenov
 *  Version
 *
 *****************************************************/

package utils.formatter
{
	public class ByteConvert
	{
		public static function kbitsPerSecond2BytesPerSecond(value:Number):Number
		{
			return value * KBITSPS_BYTESTPS_RATIO;
		}
		
		public static function bytesPerSecond2kbitsPerSecond(value:Number):Number
		{
			return value / KBITSPS_BYTESTPS_RATIO;
		}
		
		public static function bytesPerSecond2String(value:Number):String
		{
			if (isNaN(value) || value == 0)
			{
				return value.toString();
			}
			var bitsps:Number = value * 8;
			var s:Array 	= ['bits/s', 'kbit/s', 'Mbit/s', 'Gbit/s', 'Tbit/s', 'Pbit/s'];
			var e:Number 	= Math.floor( Math.log( bitsps ) / Math.log( 1000 ) );
			return ( bitsps / Math.pow( 1000, Math.floor( e ) ) ).toFixed( 2 ) + " " + s[e];			
		}
		
		public static function bytesPerSecond2ByteString(value:Number):String
		{
			if (isNaN(value) || value == 0)
			{
				return value.toString();
			}
			var bitsps:Number = value;
			var s:Array 	= ['Bytes/s', 'KB/s', 'MB/s', 'GB/s', 'TB/s', 'PB/s'];
			var e:Number 	= Math.floor( Math.log( bitsps ) / Math.log( 1024 ) );
			return ( bitsps / Math.pow( 1024, Math.floor( e ) ) ).toFixed( 2 ) + " " + s[e];			
		}
		
		public static function bytes2String(value:Number):String
		{
			if (isNaN(value) || value == 0)
			{
				return value.toString();
			}
			
			var s:Array 	= ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB'];
			var e:Number 	= Math.floor( Math.log( value ) / Math.log( 1024 ) );
			return ( value / Math.pow( 1024, Math.floor( e ) ) ).toFixed( 2 ) + " " + s[e];	
		}
		
		public static const KBITSPS_BYTESTPS_RATIO:uint = 128;
	}
}