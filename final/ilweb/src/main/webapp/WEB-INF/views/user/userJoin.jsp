<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="./webjars/bootstrap/3.3.2/css/bootstrap.css">

<!-- 우편찾기 -->
<script
   src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js">
</script>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
   //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
   function sample4_execDaumPostcode() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                  // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var roadAddr = data.roadAddress; // 도로명 주소 변수
                  var extraRoadAddr = ''; // 참고 항목 변수

                  // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                  // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                  if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                     extraRoadAddr += data.bname;
                  }
                  // 건물명이 있고, 공동주택일 경우 추가한다.
                  if (data.buildingName !== '' && data.apartment === 'Y') {
                     extraRoadAddr += (extraRoadAddr !== '' ? ', '
                           + data.buildingName : data.buildingName);
                  }
                  // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                  if (extraRoadAddr !== '') {
                     extraRoadAddr = ' (' + extraRoadAddr + ')';
                  }

                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('sample4_postcode').value = data.zonecode;
                  document.getElementById("sample4_roadAddress").value = roadAddr;
                  document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

                  // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                  if (roadAddr !== '') {
                     document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                  } else {
                     document.getElementById("sample4_extraAddress").value = '';
                  }

                  var guideTextBox = document.getElementById("guide");
                  // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                  if (data.autoRoadAddress) {
                     var expRoadAddr = data.autoRoadAddress
                           + extraRoadAddr;
                     guideTextBox.innerHTML = '(예상 도로명 주소 : '
                           + expRoadAddr + ')';
                     guideTextBox.style.display = 'block';

                  } else if (data.autoJibunAddress) {
                     var expJibunAddr = data.autoJibunAddress;
                     guideTextBox.innerHTML = '(예상 지번 주소 : '
                           + expJibunAddr + ')';
                     guideTextBox.style.display = 'block';
                  } else {
                     guideTextBox.innerHTML = '';
                     guideTextBox.style.display = 'none';
                  }
               }
            }).open();
   }
</script>
<script>
   function inputPhoneNumber(obj) {

      var number = obj.value.replace(/[^0-9]/g, "");
      var phone = "";

      if (number.length < 4) {
         return number;
      } else if (number.length < 7) {
         phone += number.substr(0, 3);
         phone += "-";
         phone += number.substr(3);
      } else if (number.length < 11) {
         phone += number.substr(0, 3);
         phone += "-";
         phone += number.substr(3, 3);
         phone += "-";
         phone += number.substr(6);
      } else {
         phone += number.substr(0, 3);
         phone += "-";
         phone += number.substr(3, 4);
         phone += "-";
         phone += number.substr(7);
      }
      obj.value = phone;
   }
</script>
<style>
body {
   font-size: 12px;
}

/*table {width:800}*/
table, th, td {
   border: 0px solid #333333;
   border-collapse: collapse;
   padding: 5px
}

/*서브타이틀*/
.signSubTitle {
   color: #96C;
   background-color: #FC9;
   text-align: center;
   font-weight: 700;
   font-size: 12px
}

/*헤드부 */
caption {
   font-size: 18px;
   font-weight: bold;
   text-decoration: underline;
   padding: 20px;
}

thead, th {
   background-color: ffffff;
}

/*바디부*/
.toNo, .tdDate, .tdCount {
   text-align: center;
}

.inBorder {
   border: solid 1px #CCCCCC;
   width:300px;
   height:30px;
}

/*버텀부*/
tfoot {
   text-align: center;
}

/*link*/

/*tbody*/
tbody a {
   color: #333;
}

tbody a:link {
   font-size: 12px;
   font-family: 굴림;
   text-decoration: none;
}

tbody a:visited {
   font-size: 12px;
   color: #333;
   font-family: 굴림;
   text-decoration: none;
}

tbody a:hover {
   text-decoration: underline;
}

tbody a:active {
   font-size: 13px;
   font-family: 궁서;
}

/*tfoot*/
tfoot a {
   color: #06F;
}

tfoot a:link {
   font-size: 10pt;
   font-family: 굴림;
   text-decoration: none;
}

tfoot a:visited {
   font-size: 12px;
   font-family: 굴림;
   text-decoration: none;
}

tfoot a:hover {
   text-decoration: underline;
}

tfoot a:active {
   font-size: 13px;
   font-family: 궁서;
}

.agree .all_agree input[type="checkbox"] {
   display: none;
}

.agree .all_agree input[type="checkbox"] {
   display: none;
}

.agree .all_agree input[type="checkbox"]+label {
   display: inline-block;
   width: 17px;
   height: 17px;
   background: #fa3062;
   cursor: pointer;
   border-radius: 3px;
   float: right;
}

.agree .all_agree:after {
   display: block;
   clear: both;
   content: "";
}

.agree .all_agree input[type="checkbox"]:checked+label {
   background: url(../images/check.png) #fa3062 no-repeat center/10px 10px;
   float: right
}

.agree {
   position: relative;
}

.agree .all_agree input[type="checkbox"]+label span {
   position: absolute;
   top: 0;
   left: 0px;
   display: block;
   font-weight: bold;
}

.agree ul {
   margin-top: 10px;
}

.agree ul li {
   margin-bottom: 15px;
}

.agree ul li:after {
   display: block;
   clear: both;
   content: "";
}

.agree ul li input[type="checkbox"] {
   display: none;
}

.agree ul li input[type="checkbox"]+label {
   width: 17px;
   height: 17px;
   background: #fa3062;
   cursor: pointer;
   border-radius: 3px;
   float: right;
}

.agree ul li input[type="checkbox"]:checked+label {
   background: url(../images/check.png) #fa3062 no-repeat center/10px 10px;
   float: right
}

.agree ul li input[type="checkbox"]+label span {
   position: absolute;
   left: 0px;
   display: block;
}
.interval{
   margin-bottom: 20px;
}
.agree ul {margin-top: 10px;}
.agree ul li {margin-bottom: 15px;}
.agree ul li:after {display:block; clear:both; content:"";}
.agree ul li input[type="checkbox"] {display: none;}
.agree ul li input[type="checkbox"] + label { width:17px; height: 17px; background: #fa3062; cursor: pointer; border-radius: 3px;float: right;}
.agree ul li input[type="checkbox"]:checked + label {background:url(../images/check.png) #fa3062 no-repeat center/10px 10px; float: right}
.agree ul li input[type="checkbox"] + label span {position: absolute; left:0px; display: block; }
</style>
<script>
   function show() {
      new daum.Postcode({
         oncomplete : function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
         }
      }).open();
   }
</script>
<script>
function idCheck() {
   var id = 'id='+document.userjoin.id.value;
   var param = id;
   sendRequest('idCheck.do',param,showResult,'GET');
   
}
function showResult() {
   if(XHR.readyState==4){
      if(XHR.status==200){
         var data=XHR.responseText;
         
         var idcheck = document.all.checkid;
         idcheck.innerHTML=data;
      }
   }
}
function nicknameCheck(){
   var nickname = 'nickname='+document.userjoin.nickname.value;
   var param = nickname;
   sendRequest('nicknameCheck.do',param,showResult1,'GET');
}
function showResult1() {
   if(XHR.readyState==4){
      if(XHR.status==200){
         var data = XHR.responseText;
         
         var nickname = document.all.checkNickname;
         nickname.innerHTML=data;
      }
   }
}
function checkPwd(){
     var f1 = document.forms[0];
     var pw1 = f1.pw.value;
     var pw2 = f1.pwd_check.value;
     if(pw1!=pw2){
      document.getElementById('checkPwd').style.color = "red";
      document.getElementById('checkPwd').innerHTML = "암호가 일치하지 않습니다.";
     }else{
      document.getElementById('checkPwd').style.color = "black";
      document.getElementById('checkPwd').innerHTML = "<span style=color:blue>암호가 확인 되었습니다.</span>";
      
     }
     
    }
</script>

</head>
<body>
   <form name="userjoin" action="userjoin.do" method="POST">
      
         <br>
         <br>
         <br>
      
         <!-- 헤드부 -->
         <thead>
         <colgroup>
            <col width="110" />

         </colgroup>
         </thead>
         
            <!-- 이름 -->
            <div style="margin:0 auto;border:0px solid #333333;width:300px;height:500px;">
               <b>이름</b>
               <div class="interval"><input type="text" name="user_name" class="inBorder" required/></div>
               
               <b>아이디</b> 
               <div id="checkid"></div>
               <div class="interval">
               <input type="text" name="id" class="inBorder" onchange="idCheck()" required/>
               
               
               </div>
               

            
               <b>비밀번호</b><div id="checkPwd"></div>

               <div class="interval"><input type="password" name="pw" class="inBorder" required/></div>
               
               <b>비밀번호확인</b>
               <div class="interval"><input type="password" class="inBorder" name="pwd_check" onkeyup="checkPwd()"/></div>

            <!-- 아이디 -->
            
               <b>닉네임</b>
               <div id="checkNickname"></div>
               <div class="interval"><input type="text" name="nickname" class="inBorder" onchange="nicknameCheck()" required/>
               </div>
            
               <b>핸드폰번호</b>
               <div class="interval"><input type="text" name="phone"
                  onKeyup="inputPhoneNumber(this);" maxlength="13"
                  style="text-align: left;" class="inBorder" /></div>
            
               <b>생년월일</b>
               <div class="interval"><input type="date" name="birth" class="inBorder" style="height: 35px;" required></div>
               
      
               <b>우편번호</b>
               <div class="interval"><input type="text" name="postal_code"
                  id="sample4_postcode" placeholder="우편번호" class="inBorder" required> 
                  <input type="button" onclick="sample4_execDaumPostcode()" class="inBorder" value="우편번호 찾기" required><br>
                  <input type="text" name="road_addr" id="sample4_roadAddress" class="inBorder" placeholder="도로명주소" required><br>
                   <input type="text" name="branch_addr" class="inBorder" id="sample4_jibunAddress" placeholder="지번주소" required> <br>
                   <span id="guide" style="color: #999; display: none"></span> 
                   <input type="text" name="detailed_addr" class="inBorder" id="sample4_detailAddress" placeholder="상세주소" required> <br>
                   <input type="text" name="noted"  class="inBorder" id="sample4_extraAddress" placeholder="참고항목" required></div>
            

            
               <b>이메일</b>
               <div class="interval">
               <input type="email" name="email" class="inBorder" required/>
               </div>
            
               <div class="agree">
  <div class="all_agree">
    약관동의
  </div><!-- .all_agree -->
</div><!-- .agree -->

<ul>
  <li><input type="checkbox" id="a2" name="전체동의" required/>
    <label for="a2"><span>이용약관동의 (필수)</span></label>
  </li>

  <li><input type="checkbox" id="a3" name="전체동의" required/>
    <label for="a3"><span>개인정보수집이용 동의 (필수)</span></label>
  </li>

  <li><input type="checkbox" id="a4" name="전체동의" required/>
    <label for="a4"><span>만 14세 이상 확인 (필수)</span></label>
  </li>
</ul>



            
         
               <input type="submit" value="회원가입" class="inBorder" /> 
               <br><br>
               <input type="reset" value="취소" class="inBorder" />
            </div>
      
   </form>
   
</body>
</html>