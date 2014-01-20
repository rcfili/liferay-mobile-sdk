/**
 * Copyright (c) 2000-2014 Liferay, Inc. All rights reserved.
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

package com.liferay.mobile.android.v62.repository;

import com.liferay.mobile.android.service.BaseService;
import com.liferay.mobile.android.service.Session;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * @author Bruno Farache
 */
public class RepositoryService extends BaseService {
	public RepositoryService(Session session) {
		super(session);
	}

	public JSONObject addRepository(long groupId, long classNameId,
		long parentFolderId, String name, String description, String portletId,
		JSONObject typeSettingsProperties, JSONObject serviceContext)
		throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("groupId", groupId);
			_params.put("classNameId", classNameId);
			_params.put("parentFolderId", parentFolderId);
			_params.put("name", name);
			_params.put("description", description);
			_params.put("portletId", portletId);
			_params.put("typeSettingsProperties", typeSettingsProperties);
			_params.put("serviceContext", serviceContext);

			_command.put("/repository/add-repository", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		return (JSONObject)session.invoke(_command);
	}

	public void checkRepository(long repositoryId) throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("repositoryId", repositoryId);

			_command.put("/repository/check-repository", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		session.invoke(_command);
	}

	public void deleteRepository(long repositoryId) throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("repositoryId", repositoryId);

			_command.put("/repository/delete-repository", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		session.invoke(_command);
	}

	public JSONObject getLocalRepositoryImpl(long repositoryId)
		throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("repositoryId", repositoryId);

			_command.put("/repository/get-local-repository-impl", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		return (JSONObject)session.invoke(_command);
	}

	public JSONObject getLocalRepositoryImpl(long folderId, long fileEntryId,
		long fileVersionId) throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("folderId", folderId);
			_params.put("fileEntryId", fileEntryId);
			_params.put("fileVersionId", fileVersionId);

			_command.put("/repository/get-local-repository-impl", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		return (JSONObject)session.invoke(_command);
	}

	public JSONObject getRepository(long repositoryId)
		throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("repositoryId", repositoryId);

			_command.put("/repository/get-repository", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		return (JSONObject)session.invoke(_command);
	}

	public JSONObject getRepositoryImpl(long repositoryId)
		throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("repositoryId", repositoryId);

			_command.put("/repository/get-repository-impl", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		return (JSONObject)session.invoke(_command);
	}

	public JSONObject getRepositoryImpl(long folderId, long fileEntryId,
		long fileVersionId) throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("folderId", folderId);
			_params.put("fileEntryId", fileEntryId);
			_params.put("fileVersionId", fileVersionId);

			_command.put("/repository/get-repository-impl", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		return (JSONObject)session.invoke(_command);
	}

	public JSONArray getSupportedConfigurations(long classNameId)
		throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("classNameId", classNameId);

			_command.put("/repository/get-supported-configurations", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		return (JSONArray)session.invoke(_command);
	}

	public JSONArray getSupportedParameters(long classNameId,
		String configuration) throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("classNameId", classNameId);
			_params.put("configuration", configuration);

			_command.put("/repository/get-supported-parameters", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		return (JSONArray)session.invoke(_command);
	}

	public JSONObject getTypeSettingsProperties(long repositoryId)
		throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("repositoryId", repositoryId);

			_command.put("/repository/get-type-settings-properties", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		return (JSONObject)session.invoke(_command);
	}

	public void updateRepository(long repositoryId, String name,
		String description) throws Exception {
		JSONObject _command = new JSONObject();

		try {
			JSONObject _params = new JSONObject();

			_params.put("repositoryId", repositoryId);
			_params.put("name", name);
			_params.put("description", description);

			_command.put("/repository/update-repository", _params);
		}
		catch (JSONException _je) {
			throw new Exception(_je);
		}

		session.invoke(_command);
	}
}