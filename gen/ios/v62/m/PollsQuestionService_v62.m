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

#import "PollsQuestionService_v62.h"

/**
 * author Bruno Farache
 */
@implementation PollsQuestionService_v62

- (NSDictionary *)addQuestionWithTitleMap:(NSDictionary *)titleMap descriptionMap:(NSDictionary *)descriptionMap expirationDateMonth:(int)expirationDateMonth expirationDateDay:(int)expirationDateDay expirationDateYear:(int)expirationDateYear expirationDateHour:(int)expirationDateHour expirationDateMinute:(int)expirationDateMinute neverExpire:(BOOL)neverExpire choices:(NSArray *)choices serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"titleMap": titleMap,
		@"descriptionMap": descriptionMap,
		@"expirationDateMonth": @(expirationDateMonth),
		@"expirationDateDay": @(expirationDateDay),
		@"expirationDateYear": @(expirationDateYear),
		@"expirationDateHour": @(expirationDateHour),
		@"expirationDateMinute": @(expirationDateMinute),
		@"neverExpire": @(neverExpire),
		@"choices": choices,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/pollsquestion/add-question": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (void)deleteQuestionWithQuestionId:(long)questionId error:(NSError **)error {
	NSDictionary *_params = @{
		@"questionId": @(questionId)
	};

	NSDictionary *_command = @{@"/pollsquestion/delete-question": _params};

	[self.session invoke:_command error:error];
}

- (NSDictionary *)getQuestionWithQuestionId:(long)questionId error:(NSError **)error {
	NSDictionary *_params = @{
		@"questionId": @(questionId)
	};

	NSDictionary *_command = @{@"/pollsquestion/get-question": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)updateQuestionWithQuestionId:(long)questionId titleMap:(NSDictionary *)titleMap descriptionMap:(NSDictionary *)descriptionMap expirationDateMonth:(int)expirationDateMonth expirationDateDay:(int)expirationDateDay expirationDateYear:(int)expirationDateYear expirationDateHour:(int)expirationDateHour expirationDateMinute:(int)expirationDateMinute neverExpire:(BOOL)neverExpire choices:(NSArray *)choices serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"questionId": @(questionId),
		@"titleMap": titleMap,
		@"descriptionMap": descriptionMap,
		@"expirationDateMonth": @(expirationDateMonth),
		@"expirationDateDay": @(expirationDateDay),
		@"expirationDateYear": @(expirationDateYear),
		@"expirationDateHour": @(expirationDateHour),
		@"expirationDateMinute": @(expirationDateMinute),
		@"neverExpire": @(neverExpire),
		@"choices": choices,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/pollsquestion/update-question": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

@end