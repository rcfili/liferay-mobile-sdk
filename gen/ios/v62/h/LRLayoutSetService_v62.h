/**
 * Copyright (c) 2000-2014 Liferay, Inc. All rights reserved.
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
#import "LRBaseService.h"

/**
 * author Bruno Farache
 */
@interface LRLayoutSetService_v62 : LRBaseService

- (void)updateLayoutSetPrototypeLinkEnabledWithGroupId:(long long)groupId privateLayout:(BOOL)privateLayout layoutSetPrototypeLinkEnabled:(BOOL)layoutSetPrototypeLinkEnabled layoutSetPrototypeUuid:(NSString *)layoutSetPrototypeUuid error:(NSError **)error;
- (void)updateLogoWithGroupId:(long long)groupId privateLayout:(BOOL)privateLayout logo:(BOOL)logo bytes:(NSArray *)bytes error:(NSError **)error;
- (void)updateLogoWithGroupId:(long long)groupId privateLayout:(BOOL)privateLayout logo:(BOOL)logo file:(NSDictionary *)file error:(NSError **)error;
- (NSDictionary *)updateLookAndFeelWithGroupId:(long long)groupId privateLayout:(BOOL)privateLayout themeId:(NSString *)themeId colorSchemeId:(NSString *)colorSchemeId css:(NSString *)css wapTheme:(BOOL)wapTheme error:(NSError **)error;
- (NSDictionary *)updateSettingsWithGroupId:(long long)groupId privateLayout:(BOOL)privateLayout settings:(NSString *)settings error:(NSError **)error;
- (NSDictionary *)updateVirtualHostWithGroupId:(long long)groupId privateLayout:(BOOL)privateLayout virtualHost:(NSString *)virtualHost error:(NSError **)error;

@end