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

#import "AddressService_v62.h"

/**
 * author Bruno Farache
 */
@implementation AddressService_v62

- (NSDictionary *)addAddressWithClassName:(NSString *)className classPK:(long)classPK street1:(NSString *)street1 street2:(NSString *)street2 street3:(NSString *)street3 city:(NSString *)city zip:(NSString *)zip regionId:(long)regionId countryId:(long)countryId typeId:(int)typeId mailing:(BOOL)mailing primary:(BOOL)primary error:(NSError **)error {
	NSDictionary *_params = @{
		@"className": className,
		@"classPK": @(classPK),
		@"street1": street1,
		@"street2": street2,
		@"street3": street3,
		@"city": city,
		@"zip": zip,
		@"regionId": @(regionId),
		@"countryId": @(countryId),
		@"typeId": @(typeId),
		@"mailing": @(mailing),
		@"primary": @(primary)
	};

	NSDictionary *_command = @{@"/address/add-address": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)addAddressWithClassName:(NSString *)className classPK:(long)classPK street1:(NSString *)street1 street2:(NSString *)street2 street3:(NSString *)street3 city:(NSString *)city zip:(NSString *)zip regionId:(long)regionId countryId:(long)countryId typeId:(int)typeId mailing:(BOOL)mailing primary:(BOOL)primary serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"className": className,
		@"classPK": @(classPK),
		@"street1": street1,
		@"street2": street2,
		@"street3": street3,
		@"city": city,
		@"zip": zip,
		@"regionId": @(regionId),
		@"countryId": @(countryId),
		@"typeId": @(typeId),
		@"mailing": @(mailing),
		@"primary": @(primary),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/address/add-address": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (void)deleteAddressWithAddressId:(long)addressId error:(NSError **)error {
	NSDictionary *_params = @{
		@"addressId": @(addressId)
	};

	NSDictionary *_command = @{@"/address/delete-address": _params};

	[self.session invoke:_command error:error];
}

- (NSDictionary *)getAddressWithAddressId:(long)addressId error:(NSError **)error {
	NSDictionary *_params = @{
		@"addressId": @(addressId)
	};

	NSDictionary *_command = @{@"/address/get-address": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSArray *)getAddressesWithClassName:(NSString *)className classPK:(long)classPK error:(NSError **)error {
	NSDictionary *_params = @{
		@"className": className,
		@"classPK": @(classPK)
	};

	NSDictionary *_command = @{@"/address/get-addresses": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSDictionary *)updateAddressWithAddressId:(long)addressId street1:(NSString *)street1 street2:(NSString *)street2 street3:(NSString *)street3 city:(NSString *)city zip:(NSString *)zip regionId:(long)regionId countryId:(long)countryId typeId:(int)typeId mailing:(BOOL)mailing primary:(BOOL)primary error:(NSError **)error {
	NSDictionary *_params = @{
		@"addressId": @(addressId),
		@"street1": street1,
		@"street2": street2,
		@"street3": street3,
		@"city": city,
		@"zip": zip,
		@"regionId": @(regionId),
		@"countryId": @(countryId),
		@"typeId": @(typeId),
		@"mailing": @(mailing),
		@"primary": @(primary)
	};

	NSDictionary *_command = @{@"/address/update-address": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

@end