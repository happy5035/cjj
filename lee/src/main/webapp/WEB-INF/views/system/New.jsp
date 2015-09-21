<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员列表</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/easyui/1.4/themes/bootstrap/easyui.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/static/easyui/1.4/themes/icon.css" />">
	<script type="text/javascript" src="<c:url value="/static/easyui/1.4/jquery.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/static/easyui/1.4/jquery.easyui.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/static/easyui/1.4/locale/easyui-lang-zh_CN.js" />"></script>
	
</head>
<body>
      <h2>Basic CRUD Application</h2>
    <p>Click the buttons on datagrid toolbar to do crud actions.</p>
	<div style="padding-top:15px; padding-left:5px; padding-right:15px; ">	
		 
			<div id="managerSd" class="easyui-panel" title="查询条件" style="height:100px;padding:10px; margin-bottom:10px;" data-options="collapsible:true">
		       <form action="" id="managerSdForm">            
		                 <!--    登录名：<input class="easyui-combobox"  style="width:10%;"  id="firstname">  -->
	                   
	                   登录名：<input type="text" id="firstname" name="firstname">
	                         
	            <a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="searchLoad()">查询</a>
	            </form> 
		    </div>  
	       
	       
	       
    <!--  	<div id="managerTb" style="margin-bottom:5px">
            <a href="#" class="easyui-linkbutton" iconCls="fa fa-plus fa-lg" plain="true" onclick="newObj()">添加</a>
            <a href="#" class="easyui-linkbutton" iconCls="fa fa-pencil-square-o fa-lg" plain="true" onclick="editObj()">修改</a>
            <a href="#" class="easyui-linkbutton" iconCls="fa fa-trash-o fa-lg" plain="true" onclick="destroyObj()">删除</a>
            <a href="#" class="easyui-linkbutton" iconCls="fa fa-crosshairs fa-lg" plain="true" onclick="viewObj()">查看</a>
        </div>           
	     -->
	        
    
    <table id="dg" title="My Users" class="easyui-datagrid" style="width:700px;height:250px"
            url="list1"
            toolbar="#toolbar" pagination="true"
             sortName="firstname" sortOrder="asc" rownumbers="true"
            rownumbers="true" fitColumns="true" singleSelect="true">
             
        <thead>
            <tr>
                <th field="firstname" width="50">First Name</th>
                <th field="lastname" width="50">Last Name</th>
                <th field="phone" width="50">Phone</th>
            </tr>
        </thead>
    </table>
     <div id="toolbar">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">New User</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit User</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">Remove User</a>
    </div>
    
    
      <table id="dg2" title="Message" class="easyui-datagrid" style="width:700px;height:250px"
            url="../message/list2"
            toolbar="#toolbar2" pagination="true"
             sortName="country" sortOrder="asc" rownumbers="true"
            rownumbers="true" fitColumns="true" singleSelect="true">
             
        <thead>
            <tr>
                <!--  <th field="firstname1" width="50">Firstname</th> -->
            
             <th field="country" width="50">Country</th>
                <th field="school" width="50">School</th>
               
                <th field="weight" width="50">Weight</th>
                 
        </thead>
    </table>
    
    
     <div id="toolbar2">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newMessage()">New Message</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editMessage()">Edit Message</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyMessage()">Remove Message</a>
    </div>
    
    <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
            closed="true" buttons="#dlg-buttons" href="<c:url value="/New/info1" />">
        <div class="ftitle">User Information</div>
    <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveUser()" style="width:90px">Save</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">Cancel</a>
    </div>    
        
        
         
    <div id="dlg2" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
            closed="true" buttons="#dlg2-buttons" href="<c:url value="/message/info2" />">
        <div class="ftitle">User Message</div>
   <!--      <form id="fm" method="post" novalidate>
            <div class="fitem">
                <label>First Name:</label>
                <input name="firstname" class="easyui-textbox" required="true">
            </div>
            <div class="fitem">
                <label>Last Name:</label>
                <input name="lastname" class="easyui-textbox" required="true">
            </div>
            <div class="fitem">
                <label>Phone:</label>
                <input name="phone" class="easyui-textbox">
            </div>
            </form> --> 
            
        </div>   
             
	</div>   
	
	
	<div id="dlg2-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveMessage()" style="width:90px">Save</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">Cancel</a>
    </div>
	
	
	<script type="text/javascript">
	
	
	//$(function() {  	
		  // 下拉框选择控件，下拉框的内容是动态查询数据库信息
	/* 	  $( '#firstname').combobox({ 
		          url:'${pageContext.request.contextPath}/loadInstitution', 
		          editable:false, //不可编辑状态
		          cache: false,
		          panelHeight: '150',
		          valueField:'id',   
		          textField:'institutionName',
		  }) */
	
	
	
	
	//获得查询条件
	function dgParams(){
		 var params = {};  
		    $.each($("#managerSdForm").serializeArray(), function(index) {
		    	if(this['value'] != ""){				       
		        	params['params['+this['name']+']'] = this['value'];  
		    	}
		    }); 
		return params;
	}
	function dg2Params(){
		 var params = {};  
		    $.each($("#managerSdForm").serializeArray(), function(index) {
		    	if(this['value'] != ""){				       
		        	params['params['+this['name']+']'] = this['value'];  
		    	}
		    }); 
		return params;
	}
	
	//dg在初始化时加入查询条件
	$('#dg').datagrid({
		queryParams: dgParams()
	});		
	//按查询条件查询
	function searchLoad(){		
		$('#dg').datagrid('options').queryParams=dgParams();		
		$('#dg2').datagrid('options').queryParams=dg2Params();
		$('#dg').datagrid('load');
		$('#dg2').datagrid('load');
	}
	
	
	
        var url;
        function newUser(){
            $('#dlg').dialog('open').dialog('center').dialog('setTitle','New User');
            $('#fm').form('clear');
            url =  "insert1";
        }
        
       
        function newMessage(){
            $('#dlg2').dialog('open').dialog('center').dialog('setTitle','New Message');
            $('#fm2').form('clear');
            url =  "../message/insert2";
        }
        
        
        function editUser(){
        	$('#save').show();
            var row = $('#dg').datagrid('getSelected');
            if (row!=null){ 
                $('#dlg').dialog('open').dialog('center').dialog('setTitle','Edit User');
                $('#fm').form('load',row.firstname+'/edit1');
                url = 'update1';
            }
            else{
	        	 $.messager.alert('操作提示！','请选择一行','info');
	         }
        }
        
        
        
        function editMessage(){
        	$('#save').show();
            var row = $('#dg2').datagrid('getSelected');
            if (row!=null){ 
                $('#dlg2').dialog('open').dialog('center').dialog('setTitle','Edit Message');
                $('#fm2').form('load','../message/'+row.country+'/edit2');
                url = '../message/update2';
            }
            else{
	        	 $.messager.alert('操作提示！','请选择一行','info');
	         }
        }
        
      /*  
	    function viewObj(){
	        var row = $('#dg').datagrid('getSelected');
	        if (row != null){
	            $('#dlg').dialog('open').dialog('setTitle','编辑管理员信息');
	            $('#fm').form('load',+row.firstname+'/view');
	            $('#save').hide();
	         }else{
	        	 $.messager.alert('操作提示！','请选择一行','info');
	         }
	    }
	     */
	    
	   /*  function viewMessage(){
	        var row = $('#dg2').datagrid('getSelected');
	        if (row != null){
	            $('#dlg2').dialog('open').dialog('setTitle','信息');
	            $('#fm2').form('load','../message'+row.firstname+'/view');
	            $('#save').hide();
	         }else{
	        	 $.messager.alert('操作提示！','请选择一行','info');
	         }
	    }  
         */
      
        function saveUser(){
            $('#fm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.errorMsg){
                       
                        	 $.messager.alert('操作失败',result.errorMsg,'error');
                       
                    }  else {
	                    $.messager.show({
		                    title: '操作成功',
		                    msg: result.successMsg
		                 });
	                    $('#dg').datagrid('reload');    // reload data
	                    $('#dlg').dialog('close');        // close the dialog
                   
                }}
            });
        }
        
        
        function saveMessage(){
            $('#fm2').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.errorMsg){
                       
                        	 $.messager.alert('操作失败',result.errorMsg,'error');
                       
                    }  else {
	                    $.messager.show({
		                    title: '操作成功',
		                    msg: result.successMsg
		                 });
	                    $('#dg2').datagrid('reload');    // reload data
	                    $('#dlg2').dialog('close');        // close the dialog
                   
                }}
            });
        }
        
     
        
        
        
        function destroyUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
                    if (r){
                        $.post(row.firstname+'/delete1',function(result){
                            if (result.successMsg){
                                $('#dg').datagrid('reload');    // reload the user data
                            } else {
                                $.messager.show({    // show error message
                                    title: 'Error',
                                    msg: result.errorMsg
                                });
                            }
                        },'json');
                    }
                });
            }
        }
        
        
        
        function destroyMessage(){
            var row = $('#dg2').datagrid('getSelected');
            if (row){
                $.messager.confirm('Confirm','Are you sure you want to destroy this messager?',function(r){
                    if (r){
                        $.post('../message/'+row.country+'/delete2',function(result){
                            if (result.successMsg){
                                $('#dg2').datagrid('reload');    // reload the user data
                            } else {
                                $.messager.show({    // show error message
                                    title: 'Error',
                                    msg: result.errorMsg
                                });
                            }
                        },'json');
                    }
                });
            }
        }
        
    </script>
    <style type="text/css">
        #fm{
            margin:0;
            padding:10px 30px;
        }
        .ftitle{
            font-size:14px;
            font-weight:bold;
            padding:5px 0;
            margin-bottom:10px;
            border-bottom:1px solid #ccc;
        }
        .fitem{
            margin-bottom:5px;
        }
        .fitem label{
            display:inline-block;
            width:80px;
        }
        .fitem input{
            width:160px;
        }
    </style>
</body>
</html>