// validation.js

// join.jsp - 유효성
let checkUser = function(){
	// alert("가입");
	// 아이디는 4자이상 15자까지 입력해주세요.
	// 비밀번호는 영문자, 숫자, 특수문자 포함 8자 이상 입력해주세요.
	// 이름은 한글로 입력해주세요.
	// 나이는 숫자를 입력해주세요.
	
	let form = document.userform;
	let userId = document.getElementById("userId").value;
	let userPw = document.getElementById("userPasswd").value;
	let userName = document.getElementById("userName").value;
	let userAge = document.getElementById("userAge").value;
	
	// 정규표현식
	let regName = /^[가-힣]+$/       // 한글
	let regPw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/
	 
	if(userId.length < 4 || userId.length > 15){
		alert("아이디는 4~15자 사이로 입력해주세요.");
		document.getElementById("userId").select();
		return false;
	} else if(!regPw.test(userPw)){
		alert("비밀번호는 영문자, 숫자, 특수문자 포함 8자 이상 입력해주세요.");
		document.getElementById("userPasswd").select();
		return false;
	} else if(!regName.test(userName)){
		alert("이름은 한글만 가능합니다.");
		document.getElementById("userName").select();
		return false;
	} else if(isNaN(userAge) || userAge == ""){
		alert("나이는 숫자만 입력 가능합니다.");
		document.getElementById("userAge").select();
		return false;
	} else{
		form.submit();				
	}
} //checkUser() 끝

// 아이디 중복 검사 순서
// 1. 아이디 입력값 가져오기
// 2. 입력값을 서버에 전송하고 중복된 아이디가 있는 지 확인
let checkId = function(){
	// alert("아이디 중복 검사를 해주세요.");
	let userId = document.getElementById("userId").value;
	let checkResult = document.getElementById("check_result");
	console.log(userId);

	if(userId != ""){
		$.ajax({
			// 요청방식 : post, url : /user/checkuserid, 데이터 : userId
			type: "post",
			url: "/user/checkuserid",
			data: {"userId": userId},
			// 서버에서 응단 - 성공과 실패
			success: function(response){
				console.log(response);
				if(response == "usable"){
					checkResult.innerHTML = "사용 가능한 아이디 입니다.";
					checkResult.style.color = "blue";
				} else{
					checkResult.innerHTML = "이미 사용 중인 아이디 입니다.";
					checkResult.style.color = "red";
				}
			},
			error: function(error){
				console.log("에러발생", error);
			}
		});
	} else {
		checkResult.innerHTML = "";
	}
} // checkId() 끝
