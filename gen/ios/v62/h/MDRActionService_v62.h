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
@interface MDRActionService_v62 : BaseService

- (NSDictionary *)addActionWithRuleGroupInstanceId:(long)ruleGroupInstanceId nameMap:(NSDictionary *)nameMap descriptionMap:(NSDictionary *)descriptionMap type:(NSString *)type typeSettings:(NSString *)typeSettings serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;
- (NSDictionary *)addActionWithRuleGroupInstanceId:(long)ruleGroupInstanceId nameMap:(NSDictionary *)nameMap descriptionMap:(NSDictionary *)descriptionMap type:(NSString *)type typeSettingsProperties:(NSDictionary *)typeSettingsProperties serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;
- (void)deleteActionWithActionId:(long)actionId error:(NSError **)error;
- (NSDictionary *)fetchActionWithActionId:(long)actionId error:(NSError **)error;
- (NSDictionary *)getActionWithActionId:(long)actionId error:(NSError **)error;
- (NSDictionary *)updateActionWithActionId:(long)actionId nameMap:(NSDictionary *)nameMap descriptionMap:(NSDictionary *)descriptionMap type:(NSString *)type typeSettings:(NSString *)typeSettings serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;
- (NSDictionary *)updateActionWithActionId:(long)actionId nameMap:(NSDictionary *)nameMap descriptionMap:(NSDictionary *)descriptionMap type:(NSString *)type typeSettingsProperties:(NSDictionary *)typeSettingsProperties serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;

@end