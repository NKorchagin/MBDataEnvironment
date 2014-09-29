//
//  MBMLEnvironmentFunctions.m
//  Mockingbird Data Environment
//
//  Created by Evan Coyne Maloney on 11/15/13.
//  Copyright (c) 2013 Gilt Groupe. All rights reserved.
//

#import "MBMLEnvironmentFunctions.h"
#import "MBEnvironment.h"
#import "MBExpressionError.h"

#define DEBUG_LOCAL     0

/******************************************************************************/
#pragma mark -
#pragma mark MBMLEnvironmentFunctions implementation
/******************************************************************************/

@implementation MBMLEnvironmentFunctions

+ (NSArray*) mbmlLoadedPaths
{
    debugTrace();

    return [MBEnvironment instance].mbmlPathsLoaded;
}

+ (NSArray*) mbmlLoadedFiles
{
    debugTrace();

    NSArray* paths = [MBEnvironment instance].mbmlPathsLoaded;
    NSMutableArray* files = [NSMutableArray arrayWithCapacity:paths.count];
    for (NSString* path in paths) {
        [files addObject:[path lastPathComponent]];
    }
    return files;
}

+ (NSNumber*) mbmlPathIsLoaded:(NSString*)templateName
{
    debugTrace();

    return @([[MBEnvironment instance] mbmlPathIsLoaded:templateName]);
}

+ (NSNumber*) mbmlFileIsLoaded:(NSString*)templateName
{
    debugTrace();

    return @([[MBEnvironment instance] mbmlFileIsLoaded:templateName]);
}

@end
