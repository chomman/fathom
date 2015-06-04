## Configuration

Your Fathom application is configured by a [HOCON] file named `conf/default.conf`.

Some modules require settings and these will all be stored in your configuration file.

### Profiles

Your application may have several configuration profiles.  Each profile must have a corresponding configuration file.  The default configuration profile specifies the `conf/default.conf` configuration file.

You may choose your profile by specifying the `--profile` launch argument.

```
java -jar myapp.jar --profile myProfile
```

This example will load the `conf/myProfile.conf` configuration file.

### Modes

A mode is used to change the behavior of your application and the settings loaded from the profile configuration file.

There are three available modes:

| Name | Description                       |
|------|-----------------------------------|
| PROD | Mode for production deployment    |
| TEST | Mode for unit/integration tests   |
| DEV  | Mode for development or debugging |

The runtime mode can be specified at launch time:

```
java -jar myapp.jar --mode DEV
```

### Modes & Settings

The profile configuration file supports mode-specific settings.

For example, consider the following configuration:

```hocon
mail {
  server = smtp.gmail.com
  port = 465
}

dev.mail {
  port = 1465
}
test.mail.port = 2465
```

In this example, the *port* 1564 will be used when the application is run in the DEV mode, *port* 2465 when the application is run in the TEST mode, and *port* 465 for all other modes.

### Overriding Settings

Fathom will first load your profile configuration from the `conf` directory of your classpath.

If there is a *same-named* configuration file in the `java.home` directory (usually the directory from which your application was launched), this file will be *parsed & **merged*** with the classpath-sourced configuration.

This allows you to deploy a complete configuration profile built-into your application and then discretely override individual settings for that profile on an as-needed basis.

## Settings

```hocon
# Application metadata and settings
application {
  name = ${project.name}
  version = ${project.version}

  # You may optionally relocate your conf and controller packages using a custom prefix
  # e.g. application.package=com.gitblit
  package = ""
}

# Logback configuration file
# see http://logback.qos.ch/documentation.html
logback.configurationFile = "classpath:conf/logback-dev.xml"

# Production mode overrides
prod {
  logback.configurationFile = "classpath:conf/logback.xml"
}

# Undertow server settings
undertow {

  # Setting a port to 0 disables that transport
  httpPort = 8080
  httpsPort = 0
  ajpPort = 0

  # Define the network interface for serving
  # e.g. 0.0.0.0 will serve on all available network interfaces
  host = "0.0.0.0"

  # The context path of your application.
  # This is useful if you are running your application behind a reverse proxy
  # and you have to create proxy/rewrite rules.
  contextPath = "/"

  # Optionally setup https/SSL
  keystoreFile = ""
  keystorePassword = ""
  truststoreFile = ""
  truststorePassword = ""
}
```

[HOCON]: https://github.com/typesafehub/config/blob/master/README.md