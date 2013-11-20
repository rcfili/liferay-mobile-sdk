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

#import "MBMessageService_v62.h"

/**
 * author Bruno Farache
 */
@implementation MBMessageService_v62

- (NSDictionary *)addDiscussionMessageWithGroupId:(long)groupId className:(NSString *)className classPK:(long)classPK permissionClassName:(NSString *)permissionClassName permissionClassPK:(long)permissionClassPK permissionOwnerId:(long)permissionOwnerId threadId:(long)threadId parentMessageId:(long)parentMessageId subject:(NSString *)subject body:(NSString *)body serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"className": className,
		@"classPK": @(classPK),
		@"permissionClassName": permissionClassName,
		@"permissionClassPK": @(permissionClassPK),
		@"permissionOwnerId": @(permissionOwnerId),
		@"threadId": @(threadId),
		@"parentMessageId": @(parentMessageId),
		@"subject": subject,
		@"body": body,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/mbmessage/add-discussion-message": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)addMessageWithGroupId:(long)groupId categoryId:(long)categoryId subject:(NSString *)subject body:(NSString *)body format:(NSString *)format inputStreamOVPs:(NSArray *)inputStreamOVPs anonymous:(BOOL)anonymous priority:(double)priority allowPingbacks:(BOOL)allowPingbacks serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"categoryId": @(categoryId),
		@"subject": subject,
		@"body": body,
		@"format": format,
		@"inputStreamOVPs": inputStreamOVPs,
		@"anonymous": @(anonymous),
		@"priority": @(priority),
		@"allowPingbacks": @(allowPingbacks),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/mbmessage/add-message": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)addMessageWithGroupId:(long)groupId categoryId:(long)categoryId threadId:(long)threadId parentMessageId:(long)parentMessageId subject:(NSString *)subject body:(NSString *)body format:(NSString *)format inputStreamOVPs:(NSArray *)inputStreamOVPs anonymous:(BOOL)anonymous priority:(double)priority allowPingbacks:(BOOL)allowPingbacks serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"categoryId": @(categoryId),
		@"threadId": @(threadId),
		@"parentMessageId": @(parentMessageId),
		@"subject": subject,
		@"body": body,
		@"format": format,
		@"inputStreamOVPs": inputStreamOVPs,
		@"anonymous": @(anonymous),
		@"priority": @(priority),
		@"allowPingbacks": @(allowPingbacks),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/mbmessage/add-message": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)addMessageWithCategoryId:(long)categoryId subject:(NSString *)subject body:(NSString *)body serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"categoryId": @(categoryId),
		@"subject": subject,
		@"body": body,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/mbmessage/add-message": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)addMessageWithParentMessageId:(long)parentMessageId subject:(NSString *)subject body:(NSString *)body format:(NSString *)format inputStreamOVPs:(NSArray *)inputStreamOVPs anonymous:(BOOL)anonymous priority:(double)priority allowPingbacks:(BOOL)allowPingbacks serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"parentMessageId": @(parentMessageId),
		@"subject": subject,
		@"body": body,
		@"format": format,
		@"inputStreamOVPs": inputStreamOVPs,
		@"anonymous": @(anonymous),
		@"priority": @(priority),
		@"allowPingbacks": @(allowPingbacks),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/mbmessage/add-message": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (void)deleteDiscussionMessageWithGroupId:(long)groupId className:(NSString *)className classPK:(long)classPK permissionClassName:(NSString *)permissionClassName permissionClassPK:(long)permissionClassPK permissionOwnerId:(long)permissionOwnerId messageId:(long)messageId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"className": className,
		@"classPK": @(classPK),
		@"permissionClassName": permissionClassName,
		@"permissionClassPK": @(permissionClassPK),
		@"permissionOwnerId": @(permissionOwnerId),
		@"messageId": @(messageId)
	};

	NSDictionary *_command = @{@"/mbmessage/delete-discussion-message": _params};

	[self.session invoke:_command error:error];
}

- (void)deleteMessageWithMessageId:(long)messageId error:(NSError **)error {
	NSDictionary *_params = @{
		@"messageId": @(messageId)
	};

	NSDictionary *_command = @{@"/mbmessage/delete-message": _params};

	[self.session invoke:_command error:error];
}

- (void)deleteMessageAttachmentsWithMessageId:(long)messageId error:(NSError **)error {
	NSDictionary *_params = @{
		@"messageId": @(messageId)
	};

	NSDictionary *_command = @{@"/mbmessage/delete-message-attachments": _params};

	[self.session invoke:_command error:error];
}

- (NSArray *)getCategoryMessagesWithGroupId:(long)groupId categoryId:(long)categoryId status:(int)status start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"categoryId": @(categoryId),
		@"status": @(status),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/mbmessage/get-category-messages": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (int)getCategoryMessagesCountWithGroupId:(long)groupId categoryId:(long)categoryId status:(int)status error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"categoryId": @(categoryId),
		@"status": @(status)
	};

	NSDictionary *_command = @{@"/mbmessage/get-category-messages-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (NSString *)getCategoryMessagesRssWithGroupId:(long)groupId categoryId:(long)categoryId status:(int)status max:(int)max type:(NSString *)type version:(double)version displayStyle:(NSString *)displayStyle feedURL:(NSString *)feedURL entryURL:(NSString *)entryURL themeDisplay:(NSDictionary *)themeDisplay error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"categoryId": @(categoryId),
		@"status": @(status),
		@"max": @(max),
		@"type": type,
		@"version": @(version),
		@"displayStyle": displayStyle,
		@"feedURL": feedURL,
		@"entryURL": entryURL,
		@"themeDisplay": themeDisplay
	};

	NSDictionary *_command = @{@"/mbmessage/get-category-messages-rss": _params};

	return (NSString *)[self.session invoke:_command error:error];
}

- (NSString *)getCompanyMessagesRssWithCompanyId:(long)companyId status:(int)status max:(int)max type:(NSString *)type version:(double)version displayStyle:(NSString *)displayStyle feedURL:(NSString *)feedURL entryURL:(NSString *)entryURL themeDisplay:(NSDictionary *)themeDisplay error:(NSError **)error {
	NSDictionary *_params = @{
		@"companyId": @(companyId),
		@"status": @(status),
		@"max": @(max),
		@"type": type,
		@"version": @(version),
		@"displayStyle": displayStyle,
		@"feedURL": feedURL,
		@"entryURL": entryURL,
		@"themeDisplay": themeDisplay
	};

	NSDictionary *_command = @{@"/mbmessage/get-company-messages-rss": _params};

	return (NSString *)[self.session invoke:_command error:error];
}

- (int)getGroupMessagesCountWithGroupId:(long)groupId status:(int)status error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"status": @(status)
	};

	NSDictionary *_command = @{@"/mbmessage/get-group-messages-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (NSString *)getGroupMessagesRssWithGroupId:(long)groupId userId:(long)userId status:(int)status max:(int)max type:(NSString *)type version:(double)version displayStyle:(NSString *)displayStyle feedURL:(NSString *)feedURL entryURL:(NSString *)entryURL themeDisplay:(NSDictionary *)themeDisplay error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"userId": @(userId),
		@"status": @(status),
		@"max": @(max),
		@"type": type,
		@"version": @(version),
		@"displayStyle": displayStyle,
		@"feedURL": feedURL,
		@"entryURL": entryURL,
		@"themeDisplay": themeDisplay
	};

	NSDictionary *_command = @{@"/mbmessage/get-group-messages-rss": _params};

	return (NSString *)[self.session invoke:_command error:error];
}

- (NSString *)getGroupMessagesRssWithGroupId:(long)groupId status:(int)status max:(int)max type:(NSString *)type version:(double)version displayStyle:(NSString *)displayStyle feedURL:(NSString *)feedURL entryURL:(NSString *)entryURL themeDisplay:(NSDictionary *)themeDisplay error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"status": @(status),
		@"max": @(max),
		@"type": type,
		@"version": @(version),
		@"displayStyle": displayStyle,
		@"feedURL": feedURL,
		@"entryURL": entryURL,
		@"themeDisplay": themeDisplay
	};

	NSDictionary *_command = @{@"/mbmessage/get-group-messages-rss": _params};

	return (NSString *)[self.session invoke:_command error:error];
}

- (NSDictionary *)getMessageWithMessageId:(long)messageId error:(NSError **)error {
	NSDictionary *_params = @{
		@"messageId": @(messageId)
	};

	NSDictionary *_command = @{@"/mbmessage/get-message": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)getMessageDisplayWithMessageId:(long)messageId status:(int)status threadView:(NSString *)threadView includePrevAndNext:(BOOL)includePrevAndNext error:(NSError **)error {
	NSDictionary *_params = @{
		@"messageId": @(messageId),
		@"status": @(status),
		@"threadView": threadView,
		@"includePrevAndNext": @(includePrevAndNext)
	};

	NSDictionary *_command = @{@"/mbmessage/get-message-display": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (int)getThreadAnswersCountWithGroupId:(long)groupId categoryId:(long)categoryId threadId:(long)threadId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"categoryId": @(categoryId),
		@"threadId": @(threadId)
	};

	NSDictionary *_command = @{@"/mbmessage/get-thread-answers-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (NSArray *)getThreadMessagesWithGroupId:(long)groupId categoryId:(long)categoryId threadId:(long)threadId status:(int)status start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"categoryId": @(categoryId),
		@"threadId": @(threadId),
		@"status": @(status),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/mbmessage/get-thread-messages": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (int)getThreadMessagesCountWithGroupId:(long)groupId categoryId:(long)categoryId threadId:(long)threadId status:(int)status error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"categoryId": @(categoryId),
		@"threadId": @(threadId),
		@"status": @(status)
	};

	NSDictionary *_command = @{@"/mbmessage/get-thread-messages-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (NSString *)getThreadMessagesRssWithThreadId:(long)threadId status:(int)status max:(int)max type:(NSString *)type version:(double)version displayStyle:(NSString *)displayStyle feedURL:(NSString *)feedURL entryURL:(NSString *)entryURL themeDisplay:(NSDictionary *)themeDisplay error:(NSError **)error {
	NSDictionary *_params = @{
		@"threadId": @(threadId),
		@"status": @(status),
		@"max": @(max),
		@"type": type,
		@"version": @(version),
		@"displayStyle": displayStyle,
		@"feedURL": feedURL,
		@"entryURL": entryURL,
		@"themeDisplay": themeDisplay
	};

	NSDictionary *_command = @{@"/mbmessage/get-thread-messages-rss": _params};

	return (NSString *)[self.session invoke:_command error:error];
}

- (void)restoreMessageAttachmentFromTrashWithMessageId:(long)messageId fileName:(NSString *)fileName error:(NSError **)error {
	NSDictionary *_params = @{
		@"messageId": @(messageId),
		@"fileName": fileName
	};

	NSDictionary *_command = @{@"/mbmessage/restore-message-attachment-from-trash": _params};

	[self.session invoke:_command error:error];
}

- (void)subscribeMessageWithMessageId:(long)messageId error:(NSError **)error {
	NSDictionary *_params = @{
		@"messageId": @(messageId)
	};

	NSDictionary *_command = @{@"/mbmessage/subscribe-message": _params};

	[self.session invoke:_command error:error];
}

- (void)unsubscribeMessageWithMessageId:(long)messageId error:(NSError **)error {
	NSDictionary *_params = @{
		@"messageId": @(messageId)
	};

	NSDictionary *_command = @{@"/mbmessage/unsubscribe-message": _params};

	[self.session invoke:_command error:error];
}

- (void)updateAnswerWithMessageId:(long)messageId answer:(BOOL)answer cascade:(BOOL)cascade error:(NSError **)error {
	NSDictionary *_params = @{
		@"messageId": @(messageId),
		@"answer": @(answer),
		@"cascade": @(cascade)
	};

	NSDictionary *_command = @{@"/mbmessage/update-answer": _params};

	[self.session invoke:_command error:error];
}

- (NSDictionary *)updateDiscussionMessageWithClassName:(NSString *)className classPK:(long)classPK permissionClassName:(NSString *)permissionClassName permissionClassPK:(long)permissionClassPK permissionOwnerId:(long)permissionOwnerId messageId:(long)messageId subject:(NSString *)subject body:(NSString *)body serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"className": className,
		@"classPK": @(classPK),
		@"permissionClassName": permissionClassName,
		@"permissionClassPK": @(permissionClassPK),
		@"permissionOwnerId": @(permissionOwnerId),
		@"messageId": @(messageId),
		@"subject": subject,
		@"body": body,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/mbmessage/update-discussion-message": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)updateMessageWithMessageId:(long)messageId subject:(NSString *)subject body:(NSString *)body inputStreamOVPs:(NSArray *)inputStreamOVPs existingFiles:(NSArray *)existingFiles priority:(double)priority allowPingbacks:(BOOL)allowPingbacks serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"messageId": @(messageId),
		@"subject": subject,
		@"body": body,
		@"inputStreamOVPs": inputStreamOVPs,
		@"existingFiles": existingFiles,
		@"priority": @(priority),
		@"allowPingbacks": @(allowPingbacks),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/mbmessage/update-message": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

@end