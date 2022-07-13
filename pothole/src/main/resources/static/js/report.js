 
$(document).ready(function(){
	
	$("#btnReport").click(function(){
		if($("#title").val()==""){
			alert("제목을 입력하세요");
			$("#title").focus();
			return false;
		}
		if($("#content").val()==""){
			alert("신고내용을 입력하세요");
			$("#content").focus();
			return false;
		}
		if($("#phone").val() == "") {
			alert("전화번호를 입력하세요");
			$("#phone").focus();
            return false;
		}
		if($("#phone2").val() == "") {
			alert("전화번호를 입력하세요");
			$("#phone2").focus();
            return false;
		}
		if($("#phone3").val() == "") {
			alert("전화번호를 입력하세요");
			$("#phone3").focus();
            return false;
		}
		if($("#name").val() == "") {
			alert("이름을 입력하세요");
			$("#name").focus();
            return false;
		}
		
		if($("#email1").val() == "") {
			alert("이메일을 입력하세요");
			$("#email1").focus();
            return false;
		}
		if($("#sample6_postcode").val() == "") {
			alert("우편번호를 입력하세요");
			$("#sample6_postcode").focus();
            return false;
		}
		if($("#sample6_address").val() == "") {
			alert("주소를 입력하세요");
			$("#sample6_address").focus();
            return false;
		}
		if($("#sample6_detailAddress").val() == "") {
			alert("상세주소를 입력하세요");
			$("#sample6_detailAddress").focus();
            return false;
		}
		if($("#sample6_extraAddress").val() == "") {
			alert("참고항목 입력하세요");
			$("#sample6_extraAddress").focus();
            return false;
		}
		
		var data={
			"reportType":$("#reportType").val(),
			"title":$("#title").val(),
			"content":$("#content").val(),
			"email":$("#email1").val()+$("#email2").val(),
			"phone":$("#phone").val()+"-"+$("#phone2").val()+"-"+$("#phone3").val(),
			"addr":$("#sample6_address").val()+" "+$("#sample6_detailAddress").val(),
			"latitude":$("#latitude").val(),
			"longitude":$("#longitude").val(),
			"isshare":$("input[name='isshare']:checked").val(),
			"name":$("#name").val()
		}
		
		$.ajax({
			type:"post",
			url:"/reportProc",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(data)
		})
		.done(function(res){
			if(res=="success"){
				alert("신고가 정상적으로 되었습니다.");
				location.href="/index";
			}
			//else if(res=="fail"){
			//	alert("아이디 중복확인하세요");
			//	$("#username").val("")
			//}
		})
		
	});
	
});