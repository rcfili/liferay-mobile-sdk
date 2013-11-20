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

#import "SCLicenseService_v62.h"

/**
 * author Bruno Farache
 */
@implementation SCLicenseService_v62

- (NSDictionary *)addLicenseWithName:(NSString *)name url:(NSString *)url openSource:(BOOL)openSource active:(BOOL)active recommended:(BOOL)recommended error:(NSError **)error {
	NSDictionary *_params = @{
		@"name": name,
		@"url": url,
		@"openSource": @(openSource),
		@"active": @(active),
		@"recommended": @(recommended)
	};

	NSDictionary *_command = @{@"/sclicense/add-license": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (void)deleteLicenseWithLicenseId:(long)licenseId error:(NSError **)error {
	NSDictionary *_params = @{
		@"licenseId": @(licenseId)
	};

	NSDictionary *_command = @{@"/sclicense/delete-license": _params};

	[self.session invoke:_command error:error];
}

- (NSDictionary *)getLicenseWithLicenseId:(long)licenseId error:(NSError **)error {
	NSDictionary *_params = @{
		@"licenseId": @(licenseId)
	};

	NSDictionary *_command = @{@"/sclicense/get-license": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)updateLicenseWithLicenseId:(long)licenseId name:(NSString *)name url:(NSString *)url openSource:(BOOL)openSource active:(BOOL)active recommended:(BOOL)recommended error:(NSError **)error {
	NSDictionary *_params = @{
		@"licenseId": @(licenseId),
		@"name": name,
		@"url": url,
		@"openSource": @(openSource),
		@"active": @(active),
		@"recommended": @(recommended)
	};

	NSDictionary *_command = @{@"/sclicense/update-license": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

@end