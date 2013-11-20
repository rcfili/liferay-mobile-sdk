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

#import "PasswordPolicyService_v62.h"

/**
 * author Bruno Farache
 */
@implementation PasswordPolicyService_v62

- (NSDictionary *)addPasswordPolicyWithName:(NSString *)name description:(NSString *)description changeable:(BOOL)changeable changeRequired:(BOOL)changeRequired minAge:(long)minAge checkSyntax:(BOOL)checkSyntax allowDictionaryWords:(BOOL)allowDictionaryWords minAlphanumeric:(int)minAlphanumeric minLength:(int)minLength minLowerCase:(int)minLowerCase minNumbers:(int)minNumbers minSymbols:(int)minSymbols minUpperCase:(int)minUpperCase history:(BOOL)history historyCount:(int)historyCount expireable:(BOOL)expireable maxAge:(long)maxAge warningTime:(long)warningTime graceLimit:(int)graceLimit lockout:(BOOL)lockout maxFailure:(int)maxFailure lockoutDuration:(long)lockoutDuration resetFailureCount:(long)resetFailureCount resetTicketMaxAge:(long)resetTicketMaxAge error:(NSError **)error {
	NSDictionary *_params = @{
		@"name": name,
		@"description": description,
		@"changeable": @(changeable),
		@"changeRequired": @(changeRequired),
		@"minAge": @(minAge),
		@"checkSyntax": @(checkSyntax),
		@"allowDictionaryWords": @(allowDictionaryWords),
		@"minAlphanumeric": @(minAlphanumeric),
		@"minLength": @(minLength),
		@"minLowerCase": @(minLowerCase),
		@"minNumbers": @(minNumbers),
		@"minSymbols": @(minSymbols),
		@"minUpperCase": @(minUpperCase),
		@"history": @(history),
		@"historyCount": @(historyCount),
		@"expireable": @(expireable),
		@"maxAge": @(maxAge),
		@"warningTime": @(warningTime),
		@"graceLimit": @(graceLimit),
		@"lockout": @(lockout),
		@"maxFailure": @(maxFailure),
		@"lockoutDuration": @(lockoutDuration),
		@"resetFailureCount": @(resetFailureCount),
		@"resetTicketMaxAge": @(resetTicketMaxAge)
	};

	NSDictionary *_command = @{@"/passwordpolicy/add-password-policy": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)addPasswordPolicyWithName:(NSString *)name description:(NSString *)description changeable:(BOOL)changeable changeRequired:(BOOL)changeRequired minAge:(long)minAge checkSyntax:(BOOL)checkSyntax allowDictionaryWords:(BOOL)allowDictionaryWords minAlphanumeric:(int)minAlphanumeric minLength:(int)minLength minLowerCase:(int)minLowerCase minNumbers:(int)minNumbers minSymbols:(int)minSymbols minUpperCase:(int)minUpperCase regex:(NSString *)regex history:(BOOL)history historyCount:(int)historyCount expireable:(BOOL)expireable maxAge:(long)maxAge warningTime:(long)warningTime graceLimit:(int)graceLimit lockout:(BOOL)lockout maxFailure:(int)maxFailure lockoutDuration:(long)lockoutDuration resetFailureCount:(long)resetFailureCount resetTicketMaxAge:(long)resetTicketMaxAge serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"name": name,
		@"description": description,
		@"changeable": @(changeable),
		@"changeRequired": @(changeRequired),
		@"minAge": @(minAge),
		@"checkSyntax": @(checkSyntax),
		@"allowDictionaryWords": @(allowDictionaryWords),
		@"minAlphanumeric": @(minAlphanumeric),
		@"minLength": @(minLength),
		@"minLowerCase": @(minLowerCase),
		@"minNumbers": @(minNumbers),
		@"minSymbols": @(minSymbols),
		@"minUpperCase": @(minUpperCase),
		@"regex": regex,
		@"history": @(history),
		@"historyCount": @(historyCount),
		@"expireable": @(expireable),
		@"maxAge": @(maxAge),
		@"warningTime": @(warningTime),
		@"graceLimit": @(graceLimit),
		@"lockout": @(lockout),
		@"maxFailure": @(maxFailure),
		@"lockoutDuration": @(lockoutDuration),
		@"resetFailureCount": @(resetFailureCount),
		@"resetTicketMaxAge": @(resetTicketMaxAge),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/passwordpolicy/add-password-policy": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (void)deletePasswordPolicyWithPasswordPolicyId:(long)passwordPolicyId error:(NSError **)error {
	NSDictionary *_params = @{
		@"passwordPolicyId": @(passwordPolicyId)
	};

	NSDictionary *_command = @{@"/passwordpolicy/delete-password-policy": _params};

	[self.session invoke:_command error:error];
}

- (NSDictionary *)updatePasswordPolicyWithPasswordPolicyId:(long)passwordPolicyId name:(NSString *)name description:(NSString *)description changeable:(BOOL)changeable changeRequired:(BOOL)changeRequired minAge:(long)minAge checkSyntax:(BOOL)checkSyntax allowDictionaryWords:(BOOL)allowDictionaryWords minAlphanumeric:(int)minAlphanumeric minLength:(int)minLength minLowerCase:(int)minLowerCase minNumbers:(int)minNumbers minSymbols:(int)minSymbols minUpperCase:(int)minUpperCase history:(BOOL)history historyCount:(int)historyCount expireable:(BOOL)expireable maxAge:(long)maxAge warningTime:(long)warningTime graceLimit:(int)graceLimit lockout:(BOOL)lockout maxFailure:(int)maxFailure lockoutDuration:(long)lockoutDuration resetFailureCount:(long)resetFailureCount resetTicketMaxAge:(long)resetTicketMaxAge error:(NSError **)error {
	NSDictionary *_params = @{
		@"passwordPolicyId": @(passwordPolicyId),
		@"name": name,
		@"description": description,
		@"changeable": @(changeable),
		@"changeRequired": @(changeRequired),
		@"minAge": @(minAge),
		@"checkSyntax": @(checkSyntax),
		@"allowDictionaryWords": @(allowDictionaryWords),
		@"minAlphanumeric": @(minAlphanumeric),
		@"minLength": @(minLength),
		@"minLowerCase": @(minLowerCase),
		@"minNumbers": @(minNumbers),
		@"minSymbols": @(minSymbols),
		@"minUpperCase": @(minUpperCase),
		@"history": @(history),
		@"historyCount": @(historyCount),
		@"expireable": @(expireable),
		@"maxAge": @(maxAge),
		@"warningTime": @(warningTime),
		@"graceLimit": @(graceLimit),
		@"lockout": @(lockout),
		@"maxFailure": @(maxFailure),
		@"lockoutDuration": @(lockoutDuration),
		@"resetFailureCount": @(resetFailureCount),
		@"resetTicketMaxAge": @(resetTicketMaxAge)
	};

	NSDictionary *_command = @{@"/passwordpolicy/update-password-policy": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)updatePasswordPolicyWithPasswordPolicyId:(long)passwordPolicyId name:(NSString *)name description:(NSString *)description changeable:(BOOL)changeable changeRequired:(BOOL)changeRequired minAge:(long)minAge checkSyntax:(BOOL)checkSyntax allowDictionaryWords:(BOOL)allowDictionaryWords minAlphanumeric:(int)minAlphanumeric minLength:(int)minLength minLowerCase:(int)minLowerCase minNumbers:(int)minNumbers minSymbols:(int)minSymbols minUpperCase:(int)minUpperCase regex:(NSString *)regex history:(BOOL)history historyCount:(int)historyCount expireable:(BOOL)expireable maxAge:(long)maxAge warningTime:(long)warningTime graceLimit:(int)graceLimit lockout:(BOOL)lockout maxFailure:(int)maxFailure lockoutDuration:(long)lockoutDuration resetFailureCount:(long)resetFailureCount resetTicketMaxAge:(long)resetTicketMaxAge serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"passwordPolicyId": @(passwordPolicyId),
		@"name": name,
		@"description": description,
		@"changeable": @(changeable),
		@"changeRequired": @(changeRequired),
		@"minAge": @(minAge),
		@"checkSyntax": @(checkSyntax),
		@"allowDictionaryWords": @(allowDictionaryWords),
		@"minAlphanumeric": @(minAlphanumeric),
		@"minLength": @(minLength),
		@"minLowerCase": @(minLowerCase),
		@"minNumbers": @(minNumbers),
		@"minSymbols": @(minSymbols),
		@"minUpperCase": @(minUpperCase),
		@"regex": regex,
		@"history": @(history),
		@"historyCount": @(historyCount),
		@"expireable": @(expireable),
		@"maxAge": @(maxAge),
		@"warningTime": @(warningTime),
		@"graceLimit": @(graceLimit),
		@"lockout": @(lockout),
		@"maxFailure": @(maxFailure),
		@"lockoutDuration": @(lockoutDuration),
		@"resetFailureCount": @(resetFailureCount),
		@"resetTicketMaxAge": @(resetTicketMaxAge),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/passwordpolicy/update-password-policy": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

@end