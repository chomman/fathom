/*
 * Copyright (C) 2016 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package fathom.exception;

/**
 * Corresponds to a MOVED TEMPORARILY (302) response.
 *
 * @author James Moger
 */
public class RedirectException extends StatusCodeException {

    private final String path;

    private final String sessionUrlAttribute;

    public RedirectException(String path) {
        this(path, null);
    }

    public RedirectException(String path, String sessionUrlAttribute) {
        super(302, "");
        this.path = path;
        this.sessionUrlAttribute = sessionUrlAttribute;
    }

    public String getPath() {
        return path;
    }

    public String getSessionUrlAttribute() {
        return sessionUrlAttribute;
    }
}
