//
//  MBMLBooleanNegationToken.m
//  Mockingbird Data Environment
//
//  Created by Evan Coyne Maloney on 11/25/10.
//  Copyright (c) 2010 Gilt Groupe. All rights reserved.
//

#import <MBToolbox/MBDebug.h>

#import "MBMLBooleanNegationToken.h"

#define DEBUG_LOCAL         0

/******************************************************************************/
#pragma mark -
#pragma mark MBMLBooleanNegationToken implementation
/******************************************************************************/

@implementation MBMLBooleanNegationToken

- (MBMLTokenMatchStatus) matchWhenAddingCharacter:(unichar)ch toExpression:(NSString*)accumExpr
{
    debugTrace();
    
    NSUInteger pos = [accumExpr length];
    if (pos == 0) {
        if (ch == '!') {
            return MBMLTokenMatchFull;
        }
    }
    return MBMLTokenMatchImpossible;
}

- (BOOL) evaluateBooleanInVariableSpace:(MBVariableSpace*)space error:(inout MBExpressionError**)err
{
    debugTrace();
    
    return ![super evaluateBooleanInVariableSpace:space error:err];
}

@end
