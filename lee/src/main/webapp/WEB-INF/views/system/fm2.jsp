<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加管理员</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/main.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/easyui/1.4/themes/metro/easyui.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/static/easyui/1.4/themes/icon.css" />">
	<script type="text/javascript" src="<c:url value="/static/easyui/1.4/jquery.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/static/easyui/1.4/jquery.easyui.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/static/easyui/1.4/locale/easyui-lang-zh_CN.js" />"></script>
	<script type="text/javascript" src="<c:url value="/static/js/main.js" />"></script>
	<script type="text/javascript" src="<c:url value="/static/js/validateboxRules.js" />"></script>
</head>
<body>   
        <div style="padding:10px 20px 20px 10px">
        <div class="ftitle">信息</div>
        <form id="fm2" name="fm2" method="post" >
         <div class="fitem">
                <label> Firstname1:</label>
                <input name="firstname1" class="easyui-textbox" required="true">
            </div>
           <div class="fitem">
                <label> Country:</label>
                <input name="country" class="easyui-textbox" required="true">
            </div>
            <div class="fitem">
                <label>School:</label>
                <input name="school" class="easyui-textbox" required="true">
            </div>
            <div class="fitem">
                <label>Weight:</label>
                <input name="weight" class="easyui-textbox">
            </div>
            </form>
     
        
        </div>
</body>
</html>