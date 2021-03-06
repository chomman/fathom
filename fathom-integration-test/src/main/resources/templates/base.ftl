<#macro page>
<!DOCTYPE html>
<!--[if IE 9]><html class="lt-ie10" lang="en" > <![endif]-->
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${appName}</title>
    <link rel="stylesheet" href="${webjarsAt("normalize.css/normalize.css")}">
    <link rel="stylesheet" href="${webjarsAt("foundation/css/foundation.min.css")}">
    <link rel="stylesheet" href="${webjarsAt("font-awesome/css/font-awesome.min.css")}">
    <link rel="stylesheet" href="${webjarsAt("datatables/css/jquery.dataTables.min.css")}">
    <link rel="stylesheet" href="${webjarsAt("pickadate.js/compressed/themes/classic.css")}">
    <link rel="stylesheet" href="${webjarsAt("pickadate.js/compressed/themes/classic.date.css")}">
    <link rel="stylesheet" href="${publicAt("css/custom.css")}">
</head>
<body>
<div class="row">
    <nav class="top-bar" data-topbar role="navigation">
        <ul class="title-area">
            <li class="name">
                <h1><a href="${appPath}/"><i class="fa fa-anchor"></i> ${appName}</a></h1>
            </li>
        </ul>

        <section class="top-bar-section">
            <!-- Right Nav Section -->
            <ul class="right">
                <li><a>${appVersion}</a></li>
                <li class="divider"></li>
                <#if account??>
                    <li class="has-dropdown">
                        <a href="#">${account}</a>
                        <ul class="dropdown">
                            <li><label>${i18n('fathom.userActions')}</label></li>
                            <li><a href="${appPath}/logout"><i class="fa fa-sign-out"></i> ${i18n('fathom.logout')}
                            </a></li>
                        </ul>
                    </li>
                <#else>
                    <li class="has-form">
                        <a class="button" href="${appPath}/login"><i
                                class="fa fa-sign-in"></i> ${i18n('fathom.login')}</a>
                    </li>
                </#if>
            </ul>

            <ul class="left">
                <li class="divider"></li>
                <li class="has-dropdown">
                    <a href="#">${i18n('fathom.options')}</a>
                    <ul class="dropdown">
                        <li class="has-dropdown">
                            <a href="#">${i18n('fathom.language')}</a>
                            <ul class="dropdown">
                                <#list languages as language>
                                    <#if lang == language>
                                        <li class="active"><a href="?lang=${language}">${language}</a></li>
                                    <#else>
                                        <li><a href="?lang=${language}">${language}</a></li>
                                    </#if>
                                </#list>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="divider"></li>
            </ul>
        </section>
    </nav>
</div>

<div style="padding-top:10px;">
    <#nested/>
</div>

<script src="${webjarsAt("modernizr/modernizr.min.js")}"></script>
<script src="${webjarsAt("jquery/jquery.min.js")}"></script>
<script src="${webjarsAt("foundation/js/foundation.min.js")}"></script>
<script src="${webjarsAt("foundation/js/foundation/foundation.alert.js")}"></script>
<script src="${webjarsAt("datatables/js/jquery.dataTables.min.js")}"></script>
<script src="${webjarsAt("pickadate.js/compressed/picker.js")}"></script>
<script src="${webjarsAt("pickadate.js/compressed/picker.date.js")}"></script>
<script>
    $(document).foundation();
    $(document).ready(function () {
        $('#employees').DataTable();
        $('.datepicker').pickadate({
            formatSubmit: 'yyyy-mm-dd',
            hiddenName: true
        });
    });
</script>
</body>
</html>
</#macro>