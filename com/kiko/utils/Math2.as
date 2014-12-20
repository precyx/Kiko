﻿package com.kiko.utils
{
        /*
         * A collection of static methods for common math operations.
        */
        
        public class Math2 
        {
                /**
                 * 
				 * Diese Funktion liefer eine zufällige Fliesskommazahl.
				 * 
				 * 
                 * @param	min Minimum des gesuchten Zahl.
                 * @param	max Maximum des gesuchten Zahl.
                 * @return
                 */
                public static function randFloat(min:Number,max:Number=NaN):Number 
                {
                        if (isNaN(max)) 
                        { 
                                max = min; 
                                min = 0; 
                        }
                        return Math.random() * (max - min) + min;
                }
                
                // Returns a random integer
                public static function rand(min:Number,max:Number=NaN):int 
                {
                        if (isNaN(max)) 
                        { 
                                max = min; 
                                min = 0; 
                        }
                        return Math.floor(randFloat(min, max));
                }
                
                // Converts radians to degrees
                public static function toDeg(rad:Number):Number
                {
                        return rad/Math.PI*180;
                }
                
                // Converts degrees to radians
                public static function toRad( deg:Number ):Number
                {
                        return deg/180*Math.PI;
                }
                
                // Returns true or false based on chance
                public static function bool(chance:Number=0.5):Boolean
                {
                        return (Math.random() < chance) ? true : false;
                }
        }
}