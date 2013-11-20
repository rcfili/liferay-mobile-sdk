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
@interface ExpandoColumnService_v62 : BaseService

- (NSDictionary *)addColumnWithTableId:(long)tableId name:(NSString *)name type:(int)type error:(NSError **)error;
- (NSDictionary *)addColumnWithTableId:(long)tableId name:(NSString *)name type:(int)type defaultData:(NSDictionary *)defaultData error:(NSError **)error;
- (void)deleteColumnWithColumnId:(long)columnId error:(NSError **)error;
- (NSDictionary *)updateColumnWithColumnId:(long)columnId name:(NSString *)name type:(int)type error:(NSError **)error;
- (NSDictionary *)updateColumnWithColumnId:(long)columnId name:(NSString *)name type:(int)type defaultData:(NSDictionary *)defaultData error:(NSError **)error;
- (NSDictionary *)updateTypeSettingsWithColumnId:(long)columnId typeSettings:(NSString *)typeSettings error:(NSError **)error;

@end