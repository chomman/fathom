## Changelog
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

### [Unreleased][unreleased]
#### Fixed
#### Changed
- [fathom-core] Update to Undertow 1.4.11
- [fathom-rest] Update to Pippo 1.2.0
- [fathom-security-jdbc] Update to HikariCP 2.6.1
#### Added
#### Removed

### [1.0.1] - 2016-01-27

Upload of 1.0.0 to Sonatype failed due to a broken GPG trust store after switching development workstations.

#### Fixed
- [fathom-core] Fixed failure to properly configure DEV mode logging
#### Changed
- [fathom-core] Update to Undertow 1.4.8
- [fathom-rest] Update to Pippo 1.0.0
- [fathom-rest-swagger] Update to Swagger Core 1.5.12

### [0.9.2] 2016-10-14
#### Fixed
- [fathom-core] Fixed null pointer exception when applying command-line setting overrides

### [0.9.1] - 2016-10-14
#### Changed
- [fathom-core] Update to Undertow 1.4.3
- [fathom-security-jdbc] Update to HikariCP 2.5.0
- [fathom-rest] Update to Pippo 0.9.1
- [fathom-rest-swagger] Update to Swagger Core 1.5.10
- [fathom-rest-swagger] Update to Swagger UI 2.2.2
#### Added
- [fathom-core] Add @RequireSettingValue ot more discretely control class or method registration
- [fathom-core] Merge setting overrides directly into the Config object rather than maintaining a separate overrides Map
- [fathom-rest-swagger] Support `swagger.outputSnakeCaseParameters` to control generated parameter names in Swagger spec (i.e. mySampleParameter = my_sample_parameter)
- [fathom-rest-swagger] Allow primitive types to be declared for request bodies (e.g. document a POST body as a String)

### [0.9.0] - 2016-09-04
#### Fixed
- [fathom-x509] Fixed configuration of custom keystore and truststore files
#### Changed
- [fathom-core] Update to Undertow 1.4.0
- [fathom-core] Update to Guice 4.1.0
- [fathom-core] Dropped deprecated undertow.buffersPerRegion setting
- [fathom-rest] Update to Pippo 0.9.0
- [fathom-rest-swagger] Allow @Produces(Produces.HTML) to be documented
- [fathom-rest-swagger] Fix @ApiProperty name registration
- [fathom-integration-test] Update to Infinispan 8.2.3
- [fathom-archetype-standard] Update to Infinispan 8.2.3
#### Added
- [fathom-rest] Add RedirectException for use in controller logic to conditionally force a redirect
- [fathom-rest-security] Add FormAuthenticationRedirectException for use in controller logic to conditionally force a redirect to the login page

### [0.8.4] - 2016-07-08
#### Fixed
#### Changed
- [fathom-core] Update to Undertow 1.3.23
- [fathom-security-jdbc] Update to HikariCP 2.4.7
#### Added
- [fathom-security-keycloak] Add a Keycloak realm for Fathom Security and appropriate guards for Fathom-REST.
#### Removed

### [0.8.3] - 2016-05-19
#### Changed
- [fathom-core] Update to SLF4j 1.7.21
- [fathom-core] Update to Undertow 1.3.22
- [fathom-core] Update to Guava 19.0
- [fathom-core] Update to Config 1.3.0
- [fathom-core] Update to args4j 2.33
- [fathom-security-jdbc] Update to HikariCP 2.4.6
- [fathom-rest-swagger] Update to Swagger Core 1.5.9
- [fathom-archetype-standard] Update to Stork 2.0.1
- [fathom-core] Dropped `undertow.host` and replaced with `undertow.httpListenAddress`, `undertow.httpsListenAddress`, and `undertow.ajpListenAddress`
- [fathom-core] Renamed Settings.getUrl() to Settings.getFathomUrl()
- [fathom-core] Dropped `application.hostname` in favor of `application.url`
- [fathom-core] `Settings.host(String)` and `Settings.hostname(String)` throw FathomExceptions if they are called
#### Added
- [fathom-rest] Added route group registration

### [0.8.2] - 2016-03-28
#### Changed
- [fathom-core] Update to Undertow 1.3.19
- [fathom-rest-swagger] Update to Swagger Core 1.5.8 and Swagger-UI 2.1.4
- [fathom-security-redis] Update to Jedis 2.8.1
- [fathom-security-jdbc] Update to HikariCP 2.4.5
- [fathom-metrics-librato] Update to Librato 4.1.2.5

### [0.8.1] - 2016-02-11
#### Fixed
- [fathom-test-tools] Fixed broken getInjector() method
- [fathom-rest-swagger] Fixed property mapping for java.sql.Timestamp and java.sql.Time
#### Changed
- [fathom-core] Update to SLF4j 1.7.14
- Use `org.kohsuke.metainf-services:meta-services` annotation processor to automatically generate all META-INF/services files
- [fathom-core] Update to Undertow 1.3.19
- [fathom-rest-swagger] Update to Swagger Core 1.5.8 and Swagger-UI 2.1.4
- [fathom-security-redis] Update to Jedis 2.8.1
- [fathom-security-jdbc] Update to HikariCP 2.4.5
- [fathom-metrics-librato] Update to Librato 4.1.2.5
#### Added
- [fathom-rest-test] New test module that integrates Fathom-REST/Pippo ContentTypeEngines

### [0.8.0] - 2016-01-29
#### Fixed
- [fathom-rest-swagger] Properly recurse model class hierarchy when generating Swagger model
#### Changed
- [fathom-core] Update to Undertow 1.3.16
- [fathom-security-redis] Update to Jedis 2.8.0
- [fathom-rest] Update to Pippo 0.8.0
- [fathom-rest] Add convenience methods to add routes by handler class
- [fathom-security-jdbc] Update to HikariCP 2.4.3
- [fathom-metrics-librato] Update to Librato 4.1.2.1
#### Added
- [fathom-rest-security] Log form guard redirects for unauthenticated requests
- [fathom-rest-shiro] Log form guard redirects for unauthenticated requests
- [fathom-x509] Self-signed X509 certificate infrastructure for your microservice
- [fathom-xmlrpc] Added XML-RPC module built on [fathom-rest] and [fathom-security]
- [fathom-rest] Now validates parameter names specified in controller uri against parameter names declared in the controller method signature

### [0.7.0] - 2015-11-09
#### Fixed
- [fathom-security] Strip encoding from content-type when matching in the CSRF guard
#### Changed
- [fathom-rest] Updated to Pippo 0.7.0
- [fathom-core] Update to Undertow 1.3.5
- [fathom-rest-swagger] Allow specifying Swagger UI template page in config
- [fathom-rest-swagger] Update to Swagger-Core 1.5.4 & Swagger-UI 2.1.2
- [fathom-metrics-librato] Update to metrics-librato 4.0.1.12
- [fathom-core] Services now require implementing an `isRunning()` method.
- [fathom-core] Services may optionally throw a FatalException on `start()` to terminate an application
#### Added
- [fathom-rest] Added Int, Long, Float, and Bool controller extractors
- [fathom-quartz] Added a jobs monitor based on core pieces of JavaMelody
- [fathom-jmx] Added a simple JMX server
- [fathom-rest] Allow fuzzy matching in Consumes declarations (e.g. 'application/vnd.fathom*')

### [0.6.1] - 2015-09-01

#### Fixed

- [fathom-rest] Fixed ParamExtractor NPE on optional parameters
- [fathom-security-jdbc] Fix hasAccount and getAccount

#### Changed

- [fathom-archetype-standard] Switched to Pebble, while retaining Freemarker templates
- [fathom-core] Update to Undertow 1.2.10
- [fathom-security-jdbc] Update to HikariCP 2.4.1
- [fathom-security-redis] Update to Jedis 2.7.3
- [fathom-rest-swagger] Update to Swagger-Core 1.5.3
- [fathom-rest-swagger] Update to Swagger-UI 2.1.1
- [fathom-metrics-librato] Update to Librato 4.0.1.11
- Renamed `Routes.addAnnotatedControllers()` to `Routes.addControllers()`.

#### Added

- [fathom-rest] Allow declaration of `@Consumes` separately from `@Produces`
- [fathom-rest] Enforce `@Consumes` for controller routes that specify it
- [fathom-rest] Add RouteInterceptor concept for controller routes
- [fathom-rest-security] Add `@BasicAuth` and `@FormAuth` RouteInterceptors
- [fathom-rest] Add `addControllers(Package... packages)` method
- [fathom-rest] Add `@CSRF` RouteInterceptor to insert or validate a CSRF token on a controller method
- [fathom-rest-swagger] Add support for BASIC authentication
- [fathom-security] Add support for CMD5 password type
- [fathom-core] Add support for an advertised application hostname

### [0.6.0] - 2015-07-02

#### Fixed

- [fathom-rest-security] CSRF token was not bound as a local property making templates with forms & CSRF tokens generated in a POST handler fail.
- [fathom-rest-swagger] Support collection fields in Model classes
- [fathom-core] An inner class in a controller broke the class collecting utility method

#### Changed

- [fathom-rest] Update to Pippo 0.6.1
- [fathom-rest] Validate controller @Produces against registered content type engines
- [fathom-rest] Confirm controller methods which return objects declare a successful @Return. e.g. `@Return(code=200, onResult=MyObject.class)`
- [fathom-metrics-librato] Update to Librato 4.0.1.9
- [fathom-test-tools] Refactored FathomTest into `FathomUnitTest` for per-unit-test Fathom instances and `FathomIntegrationTest` for per-test-class Fathom instances.
- [fathom-archetype-standard] Removed all license headers from generated app

#### Added

- [fathom-rest] Add @NoCache annotation for controller classes and methods to disable response caching
- [fathom-rest] Add @ContentTypeBySuffix annotation for controller classes and methods to allow content-type control by a trailing suffix like `.json`

### [0.5.4] - 2015-06-23

#### Fixed

- [fathom-rest] Add special handling for returning CharSequence and File from a controller

### [0.5.3] - 2015-06-23

#### Fixed

- [fathom-rest] Fix buggy behavior in ControllerHandler on handling results

#### Changed

- [fathom-archetype-standard] Improved archetype by integrating Swagger and dropping niche modules

### [0.5.2] - 2015-06-22

#### Changed

- [fathom-rest] Refined controllers to be more declarative
- [fathom-core] Added more system information to startup log
- [fathom-core] Update Undertow to 1.2.8

#### Added

- [fathom-rest-swagger] Added new module for automatic Swagger specification generation
- [fathom-rest] Added simple validation of controller arguments
- [fathom-rest] Added HeaderFilter and CORSFilter
- [fathom-core] Added Undertow performance tuning settings

### [0.5.1] - 2015-06-11

#### Fixed

- [fathom-rest] Fixed discovery of controllers when *application.package* is specified
- [fathom-archetype-standard] Honor specified package during project generation

#### Changed

- [fathom-archetype-standard] Updated to Infinispan 7.2.2

### [0.5.0] - 2015-06-09

Initial release.

#### Added

- Added [fathom-core]
- Added [fathom-eventbus]
- Added [fathom-jcache]
- Added [fathom-mailer]
- Added [fathom-metrics]
- Added [fathom-metrics-ganglia]
- Added [fathom-metrics-graphite]
- Added [fathom-metrics-influxdb]
- Added [fathom-metrics-librato]
- Added [fathom-quartz]
- Added [fathom-rest]
- Added [fathom-rest-security]
- Added [fathom-rest-shiro]
- Added [fathom-security]
- Added [fathom-security-htpasswd]
- Added [fathom-security-jdbc]
- Added [fathom-security-ldap]
- Added [fathom-security-pam]
- Added [fathom-security-redis]
- Added [fathom-security-windows]
- Added [fathom-test-tools]
- Added [fathom-archetype-standard]

[unreleased]: https://github.com/gitblit/fathom/compare/release-1.0.1...HEAD
[1.0.1]: https://github.com/gitblit/fathom/compare/release-0.9.2...release-1.0.1
[0.9.2]: https://github.com/gitblit/fathom/compare/release-0.9.1...release-0.9.2
[0.9.1]: https://github.com/gitblit/fathom/compare/release-0.9.0...release-0.9.1
[0.9.0]: https://github.com/gitblit/fathom/compare/release-0.8.4...release-0.9.0
[0.8.4]: https://github.com/gitblit/fathom/compare/release-0.8.4...release-0.8.4
[0.8.3]: https://github.com/gitblit/fathom/compare/release-0.8.2...release-0.8.3
[0.8.2]: https://github.com/gitblit/fathom/compare/release-0.8.1...release-0.8.2
[0.8.1]: https://github.com/gitblit/fathom/compare/release-0.8.0...release-0.8.1
[0.8.0]: https://github.com/gitblit/fathom/compare/release-0.7.0...release-0.8.0
[0.7.0]: https://github.com/gitblit/fathom/compare/release-0.6.1...release-0.7.0
[0.6.1]: https://github.com/gitblit/fathom/compare/release-0.6.0...release-0.6.1
[0.6.0]: https://github.com/gitblit/fathom/compare/release-0.5.4...release-0.6.0
[0.5.4]: https://github.com/gitblit/fathom/compare/release-0.5.3...release-0.5.4
[0.5.3]: https://github.com/gitblit/fathom/compare/release-0.5.2...release-0.5.3
[0.5.2]: https://github.com/gitblit/fathom/compare/release-0.5.1...release-0.5.2
[0.5.1]: https://github.com/gitblit/fathom/compare/release-0.5.0...release-0.5.1

[fathom-core]: https://github.com/gitblit/fathom/tree/master/fathom-core
[fathom-x509]: https://github.com/gitblit/fathom/tree/master/fathom-x509
[fathom-eventbus]: https://github.com/gitblit/fathom/tree/master/fathom-eventbus
[fathom-jcache]: https://github.com/gitblit/fathom/tree/master/fathom-jcache
[fathom-mailer]: https://github.com/gitblit/fathom/tree/master/fathom-mailer
[fathom-metrics]: https://github.com/gitblit/fathom/tree/master/fathom-metrics
[fathom-metrics-ganglia]: https://github.com/gitblit/fathom/tree/master/fathom-metrics-ganglia
[fathom-metrics-graphite]: https://github.com/gitblit/fathom/tree/master/fathom-metrics-graphite
[fathom-metrics-influxdb]: https://github.com/gitblit/fathom/tree/master/fathom-metrics-influxdb
[fathom-metrics-librato]: https://github.com/gitblit/fathom/tree/master/fathom-metrics-librato
[fathom-quartz]: https://github.com/gitblit/fathom/tree/master/fathom-quartz
[fathom-rest]: https://github.com/gitblit/fathom/tree/master/fathom-rest
[fathom-rest-security]: https://github.com/gitblit/fathom/tree/master/fathom-rest-security
[fathom-rest-shiro]: https://github.com/gitblit/fathom/tree/master/fathom-rest-shiro
[fathom-rest-swagger]: https://github.com/gitblit/fathom/tree/master/fathom-rest-swagger
[fathom-rest-test]: https://github.com/gitblit/fathom/tree/master/fathom-rest-test
[fathom-xmlrpc]: https://github.com/gitblit/fathom/tree/master/fathom-xmlrpc
[fathom-security]: https://github.com/gitblit/fathom/tree/master/fathom-security
[fathom-security-htpasswd]: https://github.com/gitblit/fathom/tree/master/fathom-security-htpasswd
[fathom-security-jdbc]: https://github.com/gitblit/fathom/tree/master/fathom-security-jdbc
[fathom-security-keycloak]: https://github.com/gitblit/fathom/tree/master/fathom-security-keycloak
[fathom-security-ldap]: https://github.com/gitblit/fathom/tree/master/fathom-security-ldap
[fathom-security-pam]: https://github.com/gitblit/fathom/tree/master/fathom-security-pam
[fathom-security-redis]: https://github.com/gitblit/fathom/tree/master/fathom-security-redis
[fathom-security-windows]: https://github.com/gitblit/fathom/tree/master/fathom-security-windows
[fathom-test-tools]: https://github.com/gitblit/fathom/tree/master/fathom-test-tools
[fathom-archetype-standard]: https://github.com/gitblit/fathom/tree/master/fathom-archetype-standard
