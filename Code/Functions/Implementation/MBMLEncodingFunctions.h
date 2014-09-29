//
//  MBMLEncodingFunctions.h
//  Mockingbird Data Environment
//
//  Created by Evan Coyne Maloney on 1/23/14.
//  Copyright (c) 2014 Gilt Groupe. All rights reserved.
//

#import "MBMLFunction.h"

/******************************************************************************/
#pragma mark -
#pragma mark MBMLEncodingFunctions class
/******************************************************************************/

/*!
 A class containing a set of MBML functions to be used for encoding strings
 and data into other representations, such as MD5, base-64, etc.
 
 See `MBMLFunction` for more information on MBML functions and how they're used.
 */
@interface MBMLEncodingFunctions : NSObject

/******************************************************************************/
#pragma mark MBML Functions
/******************************************************************************/

/*!
 An MBML function implementation that returns a hexadecimal string 
 representing the MD5 computed from the input string.
 
 This function accepts a single expression parameter that is expected to yield
 a string.
 
 **MBML Example**
 
 The expression:
 
    ^MD5FromString(12 Galaxies)
 
 would return the string `51eae4327df7f0617eaaf305832fe219`, a hexadecimal
 representation of the MD5 hash of the string "`12 Galaxies`".
 
 @param     string The function's input string.
 
 @return    An MD5 hash computed from the input string.
 */
+ (id) MD5FromString:(NSString*)string;

/*!
 An MBML function implementation that returns a hexadecimal string 
 representing the MD5 computed from the input data.
 
 This function accepts a single expression parameter that is expected to yield
 an `NSData` instance.
 
 **MBML Example**
 
 The expression:
 
    ^MD5FromData($myData)
 
 would return a hexadecimal string representation of the MD5 hash of the bytes
 contained in the `NSData` instance yielded by the MBML expression "`$myData`"
 
 @param     data The function's input data.
 
 @return    An MD5 hash computed from the input data.
 */
+ (id) MD5FromData:(NSData*)data;

/*!
 An MBML function implementation that returns a string representing the 
 base-64 encoding of the input data.
 
 This function accepts a single expression parameter that is expected to yield
 an `NSData` instance.
 
 **MBML Example**
 
 The expression:
 
    ^base64FromData($myData)
 
 would return a string that contains the base-64 encoding of the bytes within
 the `NSData` instance yielded by the MBML expression "`$myData`".
 
 @param     data The function's input data.
 
 @return    The base-64 representation of the input data.
 */
+ (id) base64FromData:(NSData*)data;

@end
