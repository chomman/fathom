/*
 * Copyright (C) 2015 the original author or authors.
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
package fathom.rest.controller;

import ro.pippo.core.HttpConstants;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Specifies returned Content-Types.
 *
 * @author James Moger
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Produces {
    String [] value();

    boolean negotiate() default true;

    public static final String XML = HttpConstants.ContentType.APPLICATION_XML;

    public static final String JSON = HttpConstants.ContentType.APPLICATION_JSON;

    public static final String YAML = HttpConstants.ContentType.APPLICATION_X_YAML;

    public static final String HTML = HttpConstants.ContentType.TEXT_HTML;

    public static final String TEXT = HttpConstants.ContentType.TEXT_PLAIN;

}