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

package utils.formatter.time
{
	public class FormatterSecond
	{
		private static const HOUR_IN_SEC:Number = 3600;
		
		
		/**
		 *	 
		 * @param seconds
		 * @return 'MM{sepparator}SS'
		 * 
		 */
		public static function formatSecondsInMinAndSec(seconds:Number, sepparator:String = ":"):String
		{
			var secondDate:Date = new Date(seconds * 1000 || 100);
			
			var dateArr:Vector.<String> = new Vector.<String>;
			dateArr.push(secondDate.minutes);
			dateArr.push(secondDate.seconds);
			
			return returnStringFormat(dateArr, sepparator);
			
		}
		
		public static function getSecondsInHours(sec:Number):Number
		{
			return sec / 60 / 60;
		}
		
		private static function returnStringFormat(arr:Vector.<String>, join:String):String
		{
			return arr.join(join);
		}
	}
}