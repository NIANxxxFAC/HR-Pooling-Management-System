$(function(){
	findUserRoleName();
	$("#uploadPhotoBtn_Submit").click(function(){
		document.getElementById("uploadPhotoForm").submit();
	});
});

function findUserRoleName(){
	$.ajax({
		url : "sysUserServlet?method=findUserRoleByName",
		type : "post",
		//datatype:'json',
		//data:{"name":<%=session.getAttribute("uname")%>},//不用传值，session在servlet中可以直接使用
		success : function(result) {
			//alert(result);
			var obj=JSON.parse(result);
			//alert(obj[0].displayname);
			$("#displayname").html(obj[0].displayname);
			$("#personPhoto").attr("src",obj[0].photo);
						/*//var obj = JSON.parse(result);
			var str = "<option value='null'>请选择...</option>";
			$.each(result, function(index, row) {
				str += "<option value='"+row.id+"'>" + row.name
						+ "</option>";
			});*/
			
		//	$("#sysdictype").html(str);
			
		},
		error : function() {
		/*	$("#tipmsg").css("display", "block");
			$("#tipmsg").html("请求服务器失败，请检查网络");*/
		}
	});
}


function showPhotoUploadModal(){
	$("#myphotoUpload").modal("show");
}