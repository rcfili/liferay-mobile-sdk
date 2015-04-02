/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
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

package com.liferay.mobile.sdk.test.portal;

import com.liferay.mobile.android.service.Session;
import com.liferay.mobile.android.service.SessionImpl;
import com.liferay.mobile.android.v62.group.GroupService;
import com.liferay.mobile.sdk.test.BaseTest;

import java.io.IOException;

import org.apache.http.conn.ConnectTimeoutException;

import org.junit.Test;

/**
 * @author Bruno Farache
 */
public class ConnectionTimeoutTest extends BaseTest {

	public ConnectionTimeoutTest() throws IOException {
		super();
	}

	@Test(expected = ConnectTimeoutException.class)
	public void connectionTimeoutException() throws Exception {
		Session session = new SessionImpl(this.session);

		session.setServer("http://www.liferay.com");
		session.setConnectionTimeout(5);

		GroupService service = new GroupService(session);

		service.getUserSites();
	}

}