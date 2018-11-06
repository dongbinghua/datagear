<%--
/*
 * Copyright 2018 datagear.tech. All Rights Reserved.
 */
--%>
<%--
依赖：
jsp_ajax_request.jsp
jsp_jstl.jsp
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%if(!ajaxRequest){%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="" />
<meta name="keywords" content="" />
<script type="text/javascript">
var contextPath="<%=request.getContextPath()%>";
</script>
<link id="css_jquery_ui" href="<%=request.getContextPath()%>/static/theme/<spring:theme code='theme' />/jquery-ui-1.12.1/jquery-ui.css" type="text/css" rel="stylesheet" />
<link id="css_jquery_ui_theme" href="<%=request.getContextPath()%>/static/theme/<spring:theme code='theme' />/jquery-ui-1.12.1/jquery-ui.theme.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/static/theme/jquery.layout-1.4.0/jquery.layout.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/static/theme/jstree-3.3.4/style.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/static/theme/DataTables-1.10.15/dataTables.jqueryui.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/static/theme/DataTables-1.10.15/select.jqueryui.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/static/theme/jQuery-File-Upload-9.21.0/jquery.fileupload.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/static/theme/datagear-pagination.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/static/theme/common.css" type="text/css" rel="stylesheet" />
<link id="css_common" href="<%=request.getContextPath()%>/static/theme/<spring:theme code='theme' />/common.css" type="text/css" rel="stylesheet" />

<script src="<c:url value="/static/script/jquery/jquery-1.12.4.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/jquery-ui-1.12.1/jquery-ui.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/jquery.layout-1.4.0/jquery.layout.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/jstree-3.3.4/jstree.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/DataTables-1.10.15/jquery.dataTables.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/DataTables-1.10.15/dataTables.jqueryui.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/DataTables-1.10.15/dataTables.select.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/jquery.form-3.51.0/jquery.form.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/jQuery-File-Upload-9.21.0/jquery.iframe-transport.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/jQuery-File-Upload-9.21.0/jquery.fileupload.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/jquery.cookie-1.4.1/jquery.cookie.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/jquery-validation-1.17.0/jquery.validate.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/jquery-validation-1.17.0/additional-methods.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/textarea-helper-0.3.1/textarea-helper.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/jquery.actual-1.0.19/jquery.actual.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/datagear-pagination.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/datagear-model.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/datagear-modelcache.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/datagear-util.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/datagear-jquery-override.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/datagear-modelform.js" />" type="text/javascript"></script>
<script src="<c:url value="/static/script/datagear-schema-url-builder.js" />" type="text/javascript"></script>
<%}%>