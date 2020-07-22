<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="margin-top:150px;margin-left:620px">
<section>
      <article>
         <h1>
         <a class="navbar-brand" href="index.do">
         <img
         src="<%=request.getContextPath()%>/resources/img/MAIN Logo.png"
         style="width: 250px; height: 250px;margin-left:45px"></a></h1>
      </article>
      <article>
         <form name="login" action="login.do" method="post">
            <table style="wid: 300px;">
               <tr>
                  <td>아이디</td>
                  <td><input type="text" name="userid"></td>
                  <td rowspan="4">
                  <input type="submit" style="width: 70px; height: 50px; background-color: skyblue; color: white;border:0;outline:0;" value="로그인"></td>
               </tr>
               <tr>
                  <td>사용자암호</td>
                  <td><input type="password" name="userpwd"></td>
               </tr>
            </table>
         </form>
      </article>
   </section>
</div>
</body>
</html>