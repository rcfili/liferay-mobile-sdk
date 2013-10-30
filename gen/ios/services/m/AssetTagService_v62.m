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

#import "AssetTagService_v62.h"

/**
 * author Bruno Farache
 */
@implementation AssetTagService_v62

- (NSDictionary *)getJsonGroupTags:(NSNumber *)groupId name:(NSString *)name start:(NSNumber *)start end:(NSNumber *)end {
}

- (void)deleteTag:(NSNumber *)tagId {
}

- (NSNumber *)getGroupTagsCount:(NSNumber *)groupId {
}

- (NSDictionary *)getTag:(NSNumber *)tagId {
}

- (void)deleteTags:(NSArray *)tagIds {
}

- (void)mergeTags:(NSArray *)fromTagIds toTagId:(NSNumber *)toTagId overrideProperties:(BOOL)overrideProperties {
}

- (NSArray *)getTags:(NSNumber *)groupId classNameId:(NSNumber *)classNameId name:(NSString *)name start:(NSNumber *)start end:(NSNumber *)end obc:(NSDictionary *)obc {
}

- (NSDictionary *)updateTag:(NSNumber *)tagId name:(NSString *)name tagProperties:(NSArray *)tagProperties serviceContext:(NSDictionary *)serviceContext {
}

- (NSArray *)getGroupsTags:(NSArray *)groupIds {
}

- (NSNumber *)getTagsCount:(NSNumber *)groupId name:(NSString *)name tagProperties:(NSArray *)tagProperties {
}

- (NSDictionary *)getGroupTagsDisplay:(NSNumber *)groupId name:(NSString *)name start:(NSNumber *)start end:(NSNumber *)end {
}

- (NSArray *)getGroupTags:(NSNumber *)groupId start:(NSNumber *)start end:(NSNumber *)end obc:(NSDictionary *)obc {
}

- (NSDictionary *)search:(NSArray *)groupIds name:(NSString *)name tagProperties:(NSArray *)tagProperties start:(NSNumber *)start end:(NSNumber *)end {
}

- (NSDictionary *)addTag:(NSString *)name tagProperties:(NSArray *)tagProperties serviceContext:(NSDictionary *)serviceContext {
}

@end