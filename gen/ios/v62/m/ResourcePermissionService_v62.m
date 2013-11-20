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

#import "ResourcePermissionService_v62.h"

/**
 * author Bruno Farache
 */
@implementation ResourcePermissionService_v62

- (void)addResourcePermissionWithGroupId:(long)groupId companyId:(long)companyId name:(NSString *)name scope:(int)scope primKey:(NSString *)primKey roleId:(long)roleId actionId:(NSString *)actionId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"companyId": @(companyId),
		@"name": name,
		@"scope": @(scope),
		@"primKey": primKey,
		@"roleId": @(roleId),
		@"actionId": actionId
	};

	NSDictionary *_command = @{@"/resourcepermission/add-resource-permission": _params};

	[self.session invoke:_command error:error];
}

- (void)removeResourcePermissionWithGroupId:(long)groupId companyId:(long)companyId name:(NSString *)name scope:(int)scope primKey:(NSString *)primKey roleId:(long)roleId actionId:(NSString *)actionId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"companyId": @(companyId),
		@"name": name,
		@"scope": @(scope),
		@"primKey": primKey,
		@"roleId": @(roleId),
		@"actionId": actionId
	};

	NSDictionary *_command = @{@"/resourcepermission/remove-resource-permission": _params};

	[self.session invoke:_command error:error];
}

- (void)removeResourcePermissionsWithGroupId:(long)groupId companyId:(long)companyId name:(NSString *)name scope:(int)scope roleId:(long)roleId actionId:(NSString *)actionId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"companyId": @(companyId),
		@"name": name,
		@"scope": @(scope),
		@"roleId": @(roleId),
		@"actionId": actionId
	};

	NSDictionary *_command = @{@"/resourcepermission/remove-resource-permissions": _params};

	[self.session invoke:_command error:error];
}

- (void)setIndividualResourcePermissionsWithGroupId:(long)groupId companyId:(long)companyId name:(NSString *)name primKey:(NSString *)primKey roleIdsToActionIds:(NSDictionary *)roleIdsToActionIds error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"companyId": @(companyId),
		@"name": name,
		@"primKey": primKey,
		@"roleIdsToActionIds": roleIdsToActionIds
	};

	NSDictionary *_command = @{@"/resourcepermission/set-individual-resource-permissions": _params};

	[self.session invoke:_command error:error];
}

- (void)setIndividualResourcePermissionsWithGroupId:(long)groupId companyId:(long)companyId name:(NSString *)name primKey:(NSString *)primKey roleId:(long)roleId actionIds:(NSArray *)actionIds error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"companyId": @(companyId),
		@"name": name,
		@"primKey": primKey,
		@"roleId": @(roleId),
		@"actionIds": actionIds
	};

	NSDictionary *_command = @{@"/resourcepermission/set-individual-resource-permissions": _params};

	[self.session invoke:_command error:error];
}

@end