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

#import "AssetCategoryService_v62.h"

/**
 * author Bruno Farache
 */
@implementation AssetCategoryService_v62

- (NSDictionary *)addCategoryWithTitle:(NSString *)title vocabularyId:(long)vocabularyId serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"title": title,
		@"vocabularyId": @(vocabularyId),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/assetcategory/add-category": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)addCategoryWithParentCategoryId:(long)parentCategoryId titleMap:(NSDictionary *)titleMap descriptionMap:(NSDictionary *)descriptionMap vocabularyId:(long)vocabularyId categoryProperties:(NSArray *)categoryProperties serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"parentCategoryId": @(parentCategoryId),
		@"titleMap": titleMap,
		@"descriptionMap": descriptionMap,
		@"vocabularyId": @(vocabularyId),
		@"categoryProperties": categoryProperties,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/assetcategory/add-category": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (void)deleteCategoriesWithCategoryIds:(NSArray *)categoryIds error:(NSError **)error {
	NSDictionary *_params = @{
		@"categoryIds": categoryIds
	};

	NSDictionary *_command = @{@"/assetcategory/delete-categories": _params};

	[self.session invoke:_command error:error];
}

- (NSArray *)deleteCategoriesWithCategoryIds:(NSArray *)categoryIds serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"categoryIds": categoryIds,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/assetcategory/delete-categories": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (void)deleteCategoryWithCategoryId:(long)categoryId error:(NSError **)error {
	NSDictionary *_params = @{
		@"categoryId": @(categoryId)
	};

	NSDictionary *_command = @{@"/assetcategory/delete-category": _params};

	[self.session invoke:_command error:error];
}

- (NSArray *)getCategoriesWithClassName:(NSString *)className classPK:(long)classPK error:(NSError **)error {
	NSDictionary *_params = @{
		@"className": className,
		@"classPK": @(classPK)
	};

	NSDictionary *_command = @{@"/assetcategory/get-categories": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSDictionary *)getCategoryWithCategoryId:(long)categoryId error:(NSError **)error {
	NSDictionary *_params = @{
		@"categoryId": @(categoryId)
	};

	NSDictionary *_command = @{@"/assetcategory/get-category": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSArray *)getChildCategoriesWithParentCategoryId:(long)parentCategoryId error:(NSError **)error {
	NSDictionary *_params = @{
		@"parentCategoryId": @(parentCategoryId)
	};

	NSDictionary *_command = @{@"/assetcategory/get-child-categories": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getChildCategoriesWithParentCategoryId:(long)parentCategoryId start:(int)start end:(int)end obc:(NSDictionary *)obc error:(NSError **)error {
	NSDictionary *_params = @{
		@"parentCategoryId": @(parentCategoryId),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/assetcategory/get-child-categories": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSDictionary *)getJsonSearchWithGroupId:(long)groupId name:(NSString *)name vocabularyIds:(NSArray *)vocabularyIds start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"name": name,
		@"vocabularyIds": vocabularyIds,
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/assetcategory/get-json-search": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)getJsonVocabularyCategoriesWithVocabularyId:(long)vocabularyId start:(int)start end:(int)end obc:(NSDictionary *)obc error:(NSError **)error {
	NSDictionary *_params = @{
		@"vocabularyId": @(vocabularyId),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/assetcategory/get-json-vocabulary-categories": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)getJsonVocabularyCategoriesWithGroupId:(long)groupId name:(NSString *)name vocabularyId:(long)vocabularyId start:(int)start end:(int)end obc:(NSDictionary *)obc error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"name": name,
		@"vocabularyId": @(vocabularyId),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/assetcategory/get-json-vocabulary-categories": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSArray *)getVocabularyCategoriesWithVocabularyId:(long)vocabularyId start:(int)start end:(int)end obc:(NSDictionary *)obc error:(NSError **)error {
	NSDictionary *_params = @{
		@"vocabularyId": @(vocabularyId),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/assetcategory/get-vocabulary-categories": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getVocabularyCategoriesWithParentCategoryId:(long)parentCategoryId vocabularyId:(long)vocabularyId start:(int)start end:(int)end obc:(NSDictionary *)obc error:(NSError **)error {
	NSDictionary *_params = @{
		@"parentCategoryId": @(parentCategoryId),
		@"vocabularyId": @(vocabularyId),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/assetcategory/get-vocabulary-categories": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getVocabularyCategoriesWithGroupId:(long)groupId name:(NSString *)name vocabularyId:(long)vocabularyId start:(int)start end:(int)end obc:(NSDictionary *)obc error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"name": name,
		@"vocabularyId": @(vocabularyId),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/assetcategory/get-vocabulary-categories": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (int)getVocabularyCategoriesCountWithGroupId:(long)groupId vocabularyId:(long)vocabularyId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"vocabularyId": @(vocabularyId)
	};

	NSDictionary *_command = @{@"/assetcategory/get-vocabulary-categories-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (int)getVocabularyCategoriesCountWithGroupId:(long)groupId name:(NSString *)name vocabularyId:(long)vocabularyId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"name": name,
		@"vocabularyId": @(vocabularyId)
	};

	NSDictionary *_command = @{@"/assetcategory/get-vocabulary-categories-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (NSDictionary *)getVocabularyCategoriesDisplayWithVocabularyId:(long)vocabularyId start:(int)start end:(int)end obc:(NSDictionary *)obc error:(NSError **)error {
	NSDictionary *_params = @{
		@"vocabularyId": @(vocabularyId),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/assetcategory/get-vocabulary-categories-display": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)getVocabularyCategoriesDisplayWithGroupId:(long)groupId name:(NSString *)name vocabularyId:(long)vocabularyId start:(int)start end:(int)end obc:(NSDictionary *)obc error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"name": name,
		@"vocabularyId": @(vocabularyId),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/assetcategory/get-vocabulary-categories-display": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSArray *)getVocabularyRootCategoriesWithVocabularyId:(long)vocabularyId start:(int)start end:(int)end obc:(NSDictionary *)obc error:(NSError **)error {
	NSDictionary *_params = @{
		@"vocabularyId": @(vocabularyId),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/assetcategory/get-vocabulary-root-categories": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getVocabularyRootCategoriesWithGroupId:(long)groupId vocabularyId:(long)vocabularyId start:(int)start end:(int)end obc:(NSDictionary *)obc error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"vocabularyId": @(vocabularyId),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/assetcategory/get-vocabulary-root-categories": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (int)getVocabularyRootCategoriesCountWithGroupId:(long)groupId vocabularyId:(long)vocabularyId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"vocabularyId": @(vocabularyId)
	};

	NSDictionary *_command = @{@"/assetcategory/get-vocabulary-root-categories-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (NSDictionary *)moveCategoryWithCategoryId:(long)categoryId parentCategoryId:(long)parentCategoryId vocabularyId:(long)vocabularyId serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"categoryId": @(categoryId),
		@"parentCategoryId": @(parentCategoryId),
		@"vocabularyId": @(vocabularyId),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/assetcategory/move-category": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)searchWithGroupId:(long)groupId name:(NSString *)name categoryProperties:(NSArray *)categoryProperties start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"name": name,
		@"categoryProperties": categoryProperties,
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/assetcategory/search": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)searchWithGroupIds:(NSArray *)groupIds name:(NSString *)name vocabularyIds:(NSArray *)vocabularyIds start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupIds": groupIds,
		@"name": name,
		@"vocabularyIds": vocabularyIds,
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/assetcategory/search": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSArray *)searchWithGroupId:(long)groupId keywords:(NSString *)keywords vocabularyId:(long)vocabularyId start:(int)start end:(int)end obc:(NSDictionary *)obc error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"keywords": keywords,
		@"vocabularyId": @(vocabularyId),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/assetcategory/search": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSDictionary *)updateCategoryWithCategoryId:(long)categoryId parentCategoryId:(long)parentCategoryId titleMap:(NSDictionary *)titleMap descriptionMap:(NSDictionary *)descriptionMap vocabularyId:(long)vocabularyId categoryProperties:(NSArray *)categoryProperties serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"categoryId": @(categoryId),
		@"parentCategoryId": @(parentCategoryId),
		@"titleMap": titleMap,
		@"descriptionMap": descriptionMap,
		@"vocabularyId": @(vocabularyId),
		@"categoryProperties": categoryProperties,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/assetcategory/update-category": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

@end