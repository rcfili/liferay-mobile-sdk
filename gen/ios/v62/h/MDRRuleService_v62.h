/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

#import <Foundation/Foundation.h>
#import "BaseService.h"

/**
 * author Bruno Farache
 */
@interface MDRRuleService_v62 : BaseService

- (NSDictionary *)addRuleWithRuleGroupId:(long)ruleGroupId nameMap:(NSDictionary *)nameMap descriptionMap:(NSDictionary *)descriptionMap type:(NSString *)type typeSettings:(NSString *)typeSettings serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;
- (void)deleteRuleWithRuleId:(long)ruleId error:(NSError **)error;
- (NSDictionary *)fetchRuleWithRuleId:(long)ruleId error:(NSError **)error;
- (NSDictionary *)getRuleWithRuleId:(long)ruleId error:(NSError **)error;
- (NSDictionary *)updateRuleWithRuleId:(long)ruleId nameMap:(NSDictionary *)nameMap descriptionMap:(NSDictionary *)descriptionMap type:(NSString *)type typeSettings:(NSString *)typeSettings serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;
- (NSDictionary *)updateRuleWithRuleId:(long)ruleId nameMap:(NSDictionary *)nameMap descriptionMap:(NSDictionary *)descriptionMap type:(NSString *)type typeSettingsProperties:(NSDictionary *)typeSettingsProperties serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;

@end