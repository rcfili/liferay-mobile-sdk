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

#import "UserGroupGroupRoleService_v62.h"

/**
 * author Bruno Farache
 */
@implementation UserGroupGroupRoleService_v62

- (void)addUserGroupGroupRolesWithUserGroupId:(long)userGroupId groupId:(long)groupId roleIds:(NSArray *)roleIds error:(NSError **)error {
	NSDictionary *_params = @{
		@"userGroupId": @(userGroupId),
		@"groupId": @(groupId),
		@"roleIds": roleIds
	};

	NSDictionary *_command = @{@"/usergroupgrouprole/add-user-group-group-roles": _params};

	[self.session invoke:_command error:error];
}

- (void)addUserGroupGroupRolesWithUserGroupIds:(NSArray *)userGroupIds groupId:(long)groupId roleId:(long)roleId error:(NSError **)error {
	NSDictionary *_params = @{
		@"userGroupIds": userGroupIds,
		@"groupId": @(groupId),
		@"roleId": @(roleId)
	};

	NSDictionary *_command = @{@"/usergroupgrouprole/add-user-group-group-roles": _params};

	[self.session invoke:_command error:error];
}

- (void)deleteUserGroupGroupRolesWithUserGroupId:(long)userGroupId groupId:(long)groupId roleIds:(NSArray *)roleIds error:(NSError **)error {
	NSDictionary *_params = @{
		@"userGroupId": @(userGroupId),
		@"groupId": @(groupId),
		@"roleIds": roleIds
	};

	NSDictionary *_command = @{@"/usergroupgrouprole/delete-user-group-group-roles": _params};

	[self.session invoke:_command error:error];
}

- (void)deleteUserGroupGroupRolesWithUserGroupIds:(NSArray *)userGroupIds groupId:(long)groupId roleId:(long)roleId error:(NSError **)error {
	NSDictionary *_params = @{
		@"userGroupIds": userGroupIds,
		@"groupId": @(groupId),
		@"roleId": @(roleId)
	};

	NSDictionary *_command = @{@"/usergroupgrouprole/delete-user-group-group-roles": _params};

	[self.session invoke:_command error:error];
}

@end