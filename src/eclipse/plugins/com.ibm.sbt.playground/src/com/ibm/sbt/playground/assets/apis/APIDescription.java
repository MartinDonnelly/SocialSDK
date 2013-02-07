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
 */
package com.ibm.sbt.playground.assets.apis;

import java.util.Properties;

import com.ibm.sbt.playground.assets.Asset;



/**
 * Description of an API.
 */
public class APIDescription extends Asset {

	private String json;
	
	public APIDescription() {
	}
	
	@Override
	public void init(Properties props) {
		super.init(props);
	}

	public String getJson() {
		return json;
	}
	public void setJson(String json) {
		this.json = json;
	}
}