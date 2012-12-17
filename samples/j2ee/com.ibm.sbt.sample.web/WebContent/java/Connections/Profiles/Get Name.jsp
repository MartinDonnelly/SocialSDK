<!-- 
/*
 * � Copyright IBM Corp. 2012
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */ -->
 
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@page import="java.util.Map"%>
<%@page import="org.w3c.dom.Node"%>
<%@page import="com.ibm.sbt.util.XmlNavigator"%>
<%@page import="com.ibm.sbt.services.client.ClientService"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.ibm.commons.runtime.Application"%>
<%@page import="com.ibm.commons.runtime.Context"%>
<%@page import="com.ibm.sbt.services.endpoints.EndpointFactory"%>
<%@page import="com.ibm.sbt.services.endpoints.Endpoint"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<html>
<head>
	<title>SBT JAVA Sample - Get Name</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%
		String userId =  Context.get().getProperty("sample.id1");
			Endpoint ep = EndpointFactory.getEndpoint("connections");
			String profileUrl = "profiles/atom/profile.do";	
			Map<String, String> parameters = new HashMap<String,String>();
			parameters.put("userid", userId);
	   		Object result = ep.xhrGet(profileUrl,parameters,ClientService.FORMAT_XML);
	%>
	<%= (new XmlNavigator((Node)result)).stringValue("feed/entry/contributor/name")%>
	
</body>
</html>