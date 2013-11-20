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
@interface BookmarksEntryService_v62 : BaseService

- (NSDictionary *)addEntryWithGroupId:(long)groupId folderId:(long)folderId name:(NSString *)name url:(NSString *)url description:(NSString *)description serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;
- (void)deleteEntryWithEntryId:(long)entryId error:(NSError **)error;
- (NSArray *)getEntriesWithGroupId:(long)groupId folderId:(long)folderId start:(int)start end:(int)end error:(NSError **)error;
- (NSArray *)getEntriesWithGroupId:(long)groupId folderId:(long)folderId start:(int)start end:(int)end orderByComparator:(NSDictionary *)orderByComparator error:(NSError **)error;
- (int)getEntriesCountWithGroupId:(long)groupId folderId:(long)folderId error:(NSError **)error;
- (int)getEntriesCountWithGroupId:(long)groupId folderId:(long)folderId status:(int)status error:(NSError **)error;
- (NSDictionary *)getEntryWithEntryId:(long)entryId error:(NSError **)error;
- (int)getFoldersEntriesCountWithGroupId:(long)groupId folderIds:(NSArray *)folderIds error:(NSError **)error;
- (NSArray *)getGroupEntriesWithGroupId:(long)groupId start:(int)start end:(int)end error:(NSError **)error;
- (NSArray *)getGroupEntriesWithGroupId:(long)groupId userId:(long)userId start:(int)start end:(int)end error:(NSError **)error;
- (NSArray *)getGroupEntriesWithGroupId:(long)groupId userId:(long)userId rootFolderId:(long)rootFolderId start:(int)start end:(int)end error:(NSError **)error;
- (int)getGroupEntriesCountWithGroupId:(long)groupId error:(NSError **)error;
- (int)getGroupEntriesCountWithGroupId:(long)groupId userId:(long)userId error:(NSError **)error;
- (int)getGroupEntriesCountWithGroupId:(long)groupId userId:(long)userId rootFolderId:(long)rootFolderId error:(NSError **)error;
- (NSDictionary *)moveEntryWithEntryId:(long)entryId parentFolderId:(long)parentFolderId error:(NSError **)error;
- (NSDictionary *)moveEntryFromTrashWithEntryId:(long)entryId parentFolderId:(long)parentFolderId error:(NSError **)error;
- (NSDictionary *)moveEntryToTrashWithEntryId:(long)entryId error:(NSError **)error;
- (NSDictionary *)openEntryWithEntry:(NSDictionary *)entry error:(NSError **)error;
- (NSDictionary *)openEntryWithEntryId:(long)entryId error:(NSError **)error;
- (void)restoreEntryFromTrashWithEntryId:(long)entryId error:(NSError **)error;
- (NSDictionary *)searchWithGroupId:(long)groupId creatorUserId:(long)creatorUserId status:(int)status start:(int)start end:(int)end error:(NSError **)error;
- (void)subscribeEntryWithEntryId:(long)entryId error:(NSError **)error;
- (void)unsubscribeEntryWithEntryId:(long)entryId error:(NSError **)error;
- (NSDictionary *)updateEntryWithEntryId:(long)entryId groupId:(long)groupId folderId:(long)folderId name:(NSString *)name url:(NSString *)url description:(NSString *)description serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;

@end