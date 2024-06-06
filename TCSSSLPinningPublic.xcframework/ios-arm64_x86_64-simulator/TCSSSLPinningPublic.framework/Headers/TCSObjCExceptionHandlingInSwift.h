//
//  TCSObjCExceptionHandlingInSwift.h
//  TCSSSLPinning
//
//  Created by g.novik on 31.07.17.
//  Copyright © 2017 АО «Тинькофф Банк», лицензия ЦБ РФ № 2673. All rights reserved.
//

#import <Foundation/Foundation.h>

/// Класс-обертка, добавляющий возможность ловить ObjC-exceptions в Swift
@interface TCSObjCExceptionHandlingInSwift : NSObject

/// Метод для отлавливания NSException в Swift
+ (BOOL)catchException:(void (^)(void))tryBlock error:(__autoreleasing NSError **)error;

@end
