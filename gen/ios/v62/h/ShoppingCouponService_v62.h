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
@interface ShoppingCouponService_v62 : BaseService

- (NSDictionary *)addCouponWithCode:(NSString *)code autoCode:(BOOL)autoCode name:(NSString *)name description:(NSString *)description startDateMonth:(int)startDateMonth startDateDay:(int)startDateDay startDateYear:(int)startDateYear startDateHour:(int)startDateHour startDateMinute:(int)startDateMinute endDateMonth:(int)endDateMonth endDateDay:(int)endDateDay endDateYear:(int)endDateYear endDateHour:(int)endDateHour endDateMinute:(int)endDateMinute neverExpire:(BOOL)neverExpire active:(BOOL)active limitCategories:(NSString *)limitCategories limitSkus:(NSString *)limitSkus minOrder:(double)minOrder discount:(double)discount discountType:(NSString *)discountType serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;
- (void)deleteCouponWithGroupId:(long)groupId couponId:(long)couponId error:(NSError **)error;
- (NSDictionary *)getCouponWithGroupId:(long)groupId couponId:(long)couponId error:(NSError **)error;
- (NSArray *)searchWithGroupId:(long)groupId companyId:(long)companyId code:(NSString *)code active:(BOOL)active discountType:(NSString *)discountType andOperator:(BOOL)andOperator start:(int)start end:(int)end error:(NSError **)error;
- (NSDictionary *)updateCouponWithCouponId:(long)couponId name:(NSString *)name description:(NSString *)description startDateMonth:(int)startDateMonth startDateDay:(int)startDateDay startDateYear:(int)startDateYear startDateHour:(int)startDateHour startDateMinute:(int)startDateMinute endDateMonth:(int)endDateMonth endDateDay:(int)endDateDay endDateYear:(int)endDateYear endDateHour:(int)endDateHour endDateMinute:(int)endDateMinute neverExpire:(BOOL)neverExpire active:(BOOL)active limitCategories:(NSString *)limitCategories limitSkus:(NSString *)limitSkus minOrder:(double)minOrder discount:(double)discount discountType:(NSString *)discountType serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;

@end