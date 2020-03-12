<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jQuery.js"></script>
<script type="text/javascript" src="kQuery.js"></script>
<script type="text/javascript" src="05.javascript_function2_lib.js"></script>
<script type="text/javascript">
	/*
	1. function 객체를 변수에 대입(일급함수)
	2. function 객체를 파라미터 데이터로 사용
	3. function 객체를 반환
	*/
	/*************파라미터로 사용 func**************/	
	function func1() {
		document.write("func1() 실행<br>");
	}
	
	function func2() {
		document.write("func2() 실행<br>");
	}
	
	/***********************************************/	
	

	/*************파라미터로 사용 func**************/	
	function func5(arg1) {
		document.write("func5(" + arg1 + ") 실행<br>");
	}
	
	function func6(arg1, arg2) {
		document.write("func6(" + arg1 + ", " + arg2 + ") 실행<br>");
	}
	
	/***********************************************/	
	
</script>
</head>
<body>
<h1>javascript function2</h1><hr>
<script type="text/javascript">
	func3(func1);
	func4(func1,func2);
	func7(func5);
	func8(func5,func6);
	func9(function(){
		document.write("func9(funcArg) 실행 시에 인자로 대입한 익명함수 실행<br>")
	});
	func10(function(){
		document.write("func10(funcArg1, funcArg2)실행 시에 첫 번째 인자로 대입한 익명함수 실행<br>");
	},function(){
		document.write("func10(funcArg1, funcArg2)실행 시에 두 번째 인자로 대입한 익명함수 실행<br>");
		
	});
	
	hello(function(recvMsg) {
		/*
		hello function에서 내가 인자로 전달한 익명함수를 인자를 넣어서 호출
		*/
		document.write(recvMsg + "<br/>");
	}, "기기김");
	
	hello(function(recvMsg) {
		document.write(recvMsg + "<br/>");
	}, "니니님");
	
	var nameArray = ["ㄱ", "ㄴ", "ㄷ", "ㄹ", "ㅁ"]
	
	forEach(nameArray, function(index, e) {
		document.write(index + ". " + e + "<br>");
	})
	
	document.write("*****************jQuey*******************<br>");	
	
	jQuery.each(nameArray,function(index, e){
		document.write(index + " : " + e + "<br>");	
	});
	
	
</script>
</body>
</html>