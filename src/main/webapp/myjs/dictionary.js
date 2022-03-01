$(function() {
		findDicType();
		
	});
	function findDicType(){
	//	alert("	alert(result);	");
		$.ajax({
			url : "dictionaryServlet?method=findAllDictType",
			type : "post",
			dataType:"json",
			success : function(result) {
				//alert("444"+result);
				var str = "<option value='null'>请选择...</option>";
				$.each(result, function(index, row) {
					str += "<option value='"+row.id+"'>" + row.name
							+ "</option>";
				});
				
				$("#sysdictype").html(str);
			},
			error : function() {
				$("#tipmsg").css("display", "block");
				$("#tipmsg").html("请求服务器失败，请检查网络");
			}
		});
	}
	
	function findDicTypeValue(){
		$.ajax({
			url:"dictionaryServlet?method=findDicTypeValue",
			type:"post",
			data:{"dicid":$("#sysdictype").val()},
			success:function(result){
				var str="";
				//var obj=JSON.parse(result);
				$.each(result,function(index,row){
				str+="<tr><td>"+(index+1)+"</td><td>"+row.name
				+"</td><td>"+row.display+"</td><td>"
				+row.value+"</td><td><a href='javascript:showAddValueInfo(1,\""+row.id+"\")' title='修改'><span class='glyphicon glyphicon-edit'></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:deleteDicTypeValue(\""+row.id+"\")' title='删除'><span class='glyphicon glyphicon-remove-circle'></span></a></td></tr>";	
				});
				$("#tbody").html(str);
			},
			error:function(){
				$("#tipmsg").css("display", "block");
				$("#tipmsg").html("请求服务器失败，请检查网络");
			}
		});
	}
	
	function deleteDicTypeValue(id){
		
		bootbox.confirm({
		    title: "确认提示",
		    message: "是否真的删除本条记录？",
		    buttons: {
		        cancel: {
		            label: '<i class="fa fa-times"></i> 取消'
		        },
		        confirm: {
		            label: '<i class="fa fa-check"></i> 确定'
		        }
		    },
		    callback: function (result) {
		       if(result==true){
		    		$.ajax({
		    			url : "dictionaryServlet?method=deleteDicTypeValue",
		    			type : "post",
		    			data:{
		    				"id":id
		    			},
		    			success : function(result) {
		    				if(result=="true"){
		    				findDicTypeValue();
		    				$("#tipmsg").html("删除记录成功");
		    				}else
		    					$("#tipmsg").html("删除记录失败");
		    				$("#tipmsg").css("display", "block");
		    			},
		    			error : function() {


		    				$("#tipmsg").css("display", "block");
		    				$("#tipmsg").html("请求服务器失败，请检查网络");
		    			}
		    		});
		       }
		    }
		});
	
		
		
	}
	var a;
	function showAddValueInfo(arg,id){
	//	alert("1111");
		$.ajax({
			url : "dictionaryServlet?method=findAllDictType",
			type : "post",
			success : function(result) {
				var obj = JSON.parse(result);
				//alert(result);
				var str = "<option value='null'>请选择...</option>";
				$.each(obj, function(index, row) {
					str += "<option value='"+row.id+"'>" + row.name
							+ "</option>"
				});
				$("#addsysdictypevalue").html(str);
			},
			error : function() {
				$("#tipmsg").css("display", "block");
				$("#tipmsg").html("请求服务器失败，请检查网络");
			}
		});
		if(arg==0){//添加
			a=0;
			//alert(a);
			$("#addDicValueLabel").html("添加字典值信息");
			//$("#addsysdictypevalue option[value='"+obj[0].typeid+"']").attr("selected",true);
			$("#txt_dictypevaluename").val("");
				$("#id").val("");
				$("#txt_dictypevalue").val("");
				$("#txt_remarkvalue").val("");
			
		}else{//修改
			 a=1;
			$("#addDicValueLabel").html("修改字典值信息");
			$.ajax({
    			url : "dictionaryServlet?method=findDicTypeValueById",
    			type : "post",
    			data:{
    				"id":id
    			},
    			success : function(result) {
    				var obj=JSON.parse(result);
    				//alert(obj[0].typeid);
    				$("#addsysdictypevalue option[value='"+obj[0].typeid+"']").attr("selected",true);
    				$("#txt_dictypevaluename").val(obj[0].display);
	   				$("#id").val(obj[0].id);
	   				$("#txt_dictypevalue").val(obj[0].value);
	   				$("#txt_remarkvalue").val(obj[0].remark);
    			},
    			error : function() {
    				$("#tipmsg").css("display", "block");
    				$("#tipmsg").html("请求服务器失败，请检查网络");
    			}
    		});
		}
		$("#tipmsg").css("display", "none");
		$("#myModal").modal("show");
	}
	
	function showDictype(){
		$("#tipmsg").css("display", "none"); /*错误提示框*/
		$("#dictype").modal("show");     /*模态框*/
	}
	
	function deleteDicType(){
		$.ajax({
			url : "dictionaryServlet?method=findAllDictType",
			type : "post",
			dataType:"json",
			success : function(result) {
			//	var obj = JSON.parse(result);
				//alert(result[0].id);
				var str = "";
				$.each(result, function(index, row) {
					str += "<tr><td><input  type='checkbox' name='u_id' value='"+row.id+"'/></td><td>"+(index+1)+"</td><td>"+row.name+"</td></tr>"
				});
				$("#deletetbody").html(str);
			},
			error : function() {
				$("#tipmsg").css("display", "block");
				$("#tipmsg").html("请求服务器失败，请检查网络");
			}
		});
		$("#tipmsg").css("display", "none");
		$("#deletedictype").modal("show");
		
	}
	
	function dictypeModalSubmit(){
		bootbox.confirm({
		    title: "确认提示",
		    message: "是否真的添加本数据字典类型？",
		    buttons: {
		        cancel: {
		            label: '<i class="fa fa-times"></i> 取消'
		        },
		        confirm: {
		            label: '<i class="fa fa-check"></i> 确定'
		        }
		    },
		    callback: function (result) {
		       if(result==true){
		    	   $.ajax({
		   			url : "dictionaryServlet?method=addDictTypeName",
		   			data:{"txt_dictypename":$("#txt_dictypename").val(),
		   				"txt_dictyperemark":$("#txt_dictyperemark").val()
		   			},
		   			type : "post",
		   			success : function(result) {
		   				if(result=="true"){
		   					$("#adddictypetipmsg").css("display", "block");
			   				$("#adddictypetipmsg").html("添加数据字典名称成功！");
		   				}else
		   					{
		   					$("#dictype").modal("hide");
		   					$("#tipmsg").css("display", "block");
			   				$("#tipmsg").html("添加数据字典名称失败，请重试！");
		   					}
			   				window.location.href="dictionary.jsp";
		   				
		   			},
		   			error : function() {
		   				$("#tipmsg").css("display", "block");
		   				$("#tipmsg").html("请求服务器失败，请检查网络");
		   			}
		   		});
		       }
		    }
		});
	}
	
	function selectALL(){
		var chb=$("input[type=checkbox][id=selectAll]")
		$("input[type=checkbox][name=u_id]").each(function(){
			if(chb[0].checked==true)
			$(this).prop("checked",true);
			else
			$(this).prop("checked",false);
		});
		}
	
	function deleteDicTypeModalSubmit(){
	var id=	$('input[type=checkbox][name=u_id]:checked');
/*	$.each(id,function(index,row){
		alert(row.value);
	});*/
	//	var id=$("input[type=checkbox][name=u_id]:checked");   //组件的数组
		//alert(JSON.stringify(id));
		//使用Ajax进行异步请求删除记录
		if(id.length!=0){
		bootbox.confirm({
			message : "是否真的删除所选记录？",
			buttons : {
				cancel : {
					label : '取消',
					className:'btn-danger'
				},
				confirm : {
					label : '确认删除',
					className:'btn-success'
				}
			},
			callback : function(result) {
				if (result) {
					//JQuery循环
					//alert(JSON.stringify(id));
					var str="";
					$.each(id,function(index,row){ //数组  回调函数
						//console.log(index+","+row.value);  //循环次数  第几行元素
						if(index+1!=id.length)
						str+=row.value+",";
						else
							str+=row.value;
					});
				//	alert(str);
				$.ajax({
						url:"dictionaryServlet?method=deleteDicTypeById",
						data:{"id":str},
						type:"post",
						success:function(result){
							if(result=="true"){
								$("#deletedictype").modal("hide");
								findDicType();
			    				$("#tipmsg").html("删除记录成功");
			    				}else
			    					$("#tipmsg").html("删除记录失败");
			    				$("#tipmsg").css("display", "block");
						},
						error:function(){
							bootbox.alert("请求服务器失败!");
						}
					});
				}
			}
		});
		}else{
			bootbox.alert("请选择至少一行进行删除！");
		}
	}
	
	function addDicTypeValueSubmit(){
	//	alert(a);
		if(a==0){   //添加
			bootbox.confirm({
			    title: "确认提示",
			    message: "是否真的添加本数据字典值？",
			    buttons: {
			        cancel: {
			            label: '<i class="fa fa-times"></i> 取消'
			        },
			        confirm: {
			            label: '<i class="fa fa-check"></i> 确定'
			        }
			    },
			    callback: function (result) {
			       if(result==true){
			    	   $.ajax({
			   			url : "dictionaryServlet?method=addDictTypevalue",
			   			data:{
			   				"addsysdictypevalue":$("#addsysdictypevalue").val(),
			   				"txt_dictypevaluename":$("#txt_dictypevaluename").val(),
			   				"txt_dictypevalue":$("#txt_dictypevalue").val(),
			   				"txt_remarkvalue":$("#txt_remarkvalue").val()
			   			},
			   			type : "post",
			   			success : function(result) {
			   				if(result=="true"){
			   					$("#adddictypevaluetipmsg").css("display", "block");
				   				$("#adddictypevaluetipmsg").html("添加数据字典值成功！");
			   				}else
			   					{
			   					$("#myModal").modal("hide");
			   					$("#tipmsg").css("display", "block");
				   				$("#tipmsg").html("添加数据字典值失败，请重试！");
			   					}
				   				window.location.href="dictionary.jsp";
			   				
			   			},
			   			error : function() {
			   				$("#tipmsg").css("display", "block");
			   				$("#tipmsg").html("请求服务器失败，请检查网络");
			   			}
			   		});
			       }
			    }
			});
		}else{//修改
			bootbox.confirm({
			    title: "确认提示",
			    message: "是否真的修改本数据字典值？",
			    buttons: {
			        cancel: {
			            label: '<i class="fa fa-times"></i> 取消'
			        },
			        confirm: {
			            label: '<i class="fa fa-check"></i> 确定'
			        }
			    },
			    callback: function (result) {
			       if(result==true){
			    	   $.ajax({
			   			url : "dictionaryServlet?method=updateDictTypevalue",
			   			data:{
			   				"id":$("#id").val(),
			   				"addsysdictypevalue":$("#addsysdictypevalue").val(),
			   				"txt_dictypevaluename":$("#txt_dictypevaluename").val(),
			   				"txt_dictypevalue":$("#txt_dictypevalue").val(),
			   				"txt_remarkvalue":$("#txt_remarkvalue").val()
			   			},
			   			type : "post",
			   			success : function(result) {
			   				if(result=="true"){
			   					$("#adddictypevaluetipmsg").css("display", "block");
				   				$("#adddictypevaluetipmsg").html("修改数据字典值成功！");
			   				}else
			   					{
			   					$("#myModal").modal("hide");
			   					$("#tipmsg").css("display", "block");
				   				$("#tipmsg").html("修改数据字典值失败，请重试！");
			   					}
				   				window.location.href="dictionary.jsp";
			   				
			   			},
			   			error : function() {
			   				$("#tipmsg").css("display", "block");
			   				$("#tipmsg").html("请求服务器失败，请检查网络");
			   			}
			   		});
			       }
			    }
			});
		}
		
	}