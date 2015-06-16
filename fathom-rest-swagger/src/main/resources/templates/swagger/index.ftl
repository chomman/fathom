<!DOCTYPE html>
<html>
<head>
    <title>${apiTitle}</title>
    <link href="${webjarsAt('swagger-ui/2.1.0/images/favicon-32x32.png')}" sizes="32x32" rel="icon" type="image/png">
    <link href="${webjarsAt('swagger-ui/2.1.0/images/favicon-16x16.png')}" sizes="16x16" rel="icon" type="image/png">
    <link href="${webjarsAt('swagger-ui/2.1.0/css/typography.css')}" media='screen' rel="stylesheet" type='text/css'>
    <link href="${webjarsAt('swagger-ui/2.1.0/css/reset.css')}" media='screen' rel='stylesheet'>
    <link href="${webjarsAt('swagger-ui/2.1.0/css/screen.css')}" media='screen' rel='stylesheet'>
    <link href="${webjarsAt('swagger-ui/2.1.0/css/reset.css')}" media='print' rel='stylesheet'>
    <link href="${webjarsAt('swagger-ui/2.1.0/css/print.css')}" media='print' rel='stylesheet'>

    <script src="${webjarsAt('swagger-ui/2.1.0/lib/jquery-1.8.0.min.js')}"></script>
    <script src="${webjarsAt('swagger-ui/2.1.0/lib/jquery.slideto.min.js')}"></script>
    <script src="${webjarsAt('swagger-ui/2.1.0/lib/jquery.wiggle.min.js')}"></script>
    <script src="${webjarsAt('swagger-ui/2.1.0/lib/jquery.ba-bbq.min.js')}"></script>
    <script src="${webjarsAt('swagger-ui/2.1.0/lib/handlebars-2.0.0.js')}"></script>
    <script src="${webjarsAt('swagger-ui/2.1.0/lib/underscore-min.js')}"></script>
    <script src="${webjarsAt('swagger-ui/2.1.0/lib/backbone-min.js')}"></script>
    <script src="${webjarsAt('swagger-ui/2.1.0/swagger-ui.js')}"></script>
    <script src="${webjarsAt('swagger-ui/2.1.0/lib/highlight.7.3.pack.js')}"></script>
    <script src="${webjarsAt('swagger-ui/2.1.0/lib/marked.js')}"></script>

    <!-- enabling this will enable oauth2 implicit scope support -->
    <script src="${webjarsAt('swagger-ui/2.1.0/lib/swagger-oauth.js')}"></script>

    <script type="text/javascript">
        $(function () {
            var url = "${appPath}/${swaggerPath}/swagger.json";
            window.swaggerUi = new SwaggerUi({
                url: url,
                dom_id: "swagger-ui-container",
                supportedSubmitMethods: ['get', 'post', 'put', 'delete', 'patch'],
                onComplete: function(swaggerApi, swaggerUi){
                    if(typeof initOAuth == "function") {
                        initOAuth({
                            clientId: "your-client-id",
                            realm: "your-realms",
                            appName: "your-app-name"
                        });
                    }
                    $('pre code').each(function(i, e) {
                        hljs.highlightBlock(e)
                    });
                    addApiKeyAuthorization();
                },
                onFailure: function(data) {
                    log("Unable to Load SwaggerUI");
                },
                docExpansion: "none",
                apisSorter: "alpha",
                showRequestHeaders: false
            });
            function addApiKeyAuthorization(){
                var key = encodeURIComponent($('#input_apiKey')[0].value);
                if(key && key.trim() != "") {
                    var apiKeyAuth = new SwaggerClient.ApiKeyAuthorization("api_key", key, "query");
                    window.swaggerUi.api.clientAuthorizations.add("api_key", apiKeyAuth);
                    log("added key " + key);
                }
            }
            $('#input_apiKey').change(addApiKeyAuthorization);
            // if you have an apiKey you would like to pre-populate on the page for demonstration purposes...
            /*
              var apiKey = "myApiKeyXXXX123456789";
              $('#input_apiKey').val(apiKey);
            */
            window.swaggerUi.load();
            function log() {
                if ('console' in window) {
                    console.log.apply(console, arguments);
                }
            }
        });
    </script>
</head>

<body class="swagger-section">
<div id='header'>
    <div class="swagger-ui-wrap">
        <a id="logo" href="${appPath}">${bannerText}</a>
        <form id='api_selector'>
            <div class='input'><input hidden="true" placeholder="http://example.com/api" id="input_baseUrl" name="baseUrl" type="text"/></div>
            <#if showApiKey>
                <div class='input'><input placeholder="api_key" id="input_apiKey" name="apiKey" type="text"/></div>
                <div class='input'><a id="explore" href="#">Explore</a></div>
            </#if>
        </form>
    </div>
</div>

<div id="message-bar" class="swagger-ui-wrap">&nbsp;</div>
<div id="swagger-ui-container" class="swagger-ui-wrap"></div>
</body>
</html>
