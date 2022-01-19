<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="project_3rd_package.Dao.*"   
    import="project_3rd_package.vo.*" 
    %>
<!DOCTYPE html>
<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title>무비고 : 회원가입</title>
        <link rel="stylesheet" href="./login.css">
        <script type="text/javascript" src="../0jquery/jquery-3.6.0.js"></script>
	    <script type="text/javascript">
			$(document).ready(function(){
				$("#btnJoin").click(function(){
					if($("[name=id]").val()==""){
						alert("아이디 입력이 필요합니다.!");
						$("[name=id]").focus();
						return;
					}
					if($("[name=pass]").val()==""){
						alert("패스워드 입력이 필요합니다.!");
						$("[name=pass]").focus();
						return;
					}			
					if($("[name=passCfm]").val()==""){
						alert("패스워드  확인 입력이 필요합니다.!");
						$("[name=passCfm]").focus();
						return;
					}			
					if($("[name=pass]").val() != $("[name=passCfm]").val()){
						alert("패스워드와 패스워드 확인이 동일하지 않습니다.")
						return;
					}
					if($("[name=name]").val()==""){
						alert("이름 입력이 필요합니다.!");
						$("[name=name]").focus();
						return;
					}
					if($("[name=nickname]").val()==""){
						alert("이름 입력이 필요합니다.!");
						$("[name=nickname]").focus();
						return;
					}
					if($("[name=point]").val()==""||isNaN($("[name=point]").val())){
						alert("포인트는 숫자형으로 입력하여야 합니다.");
						$("[name=point]").val("");
						$("[name=point]").focus();
						return;
					}
					if(confirm("등록하시겠습니까?")){
						$("form").submit();
					}
				});
			});
	    
	    </script>
        
    </head>
    <body>
        <!-- header -->
        <h2 align="center">MovieGo</h2>


        <!-- wrapper -->
        <form>
	        <div id="wrapper">
	
	            <!-- content-->
	            <div id="content">
	
	                <!-- ID -->
	                <div>
	                    <h3 class="join_title">
	                        <label for="id">아이디</label>
	                    </h3>
	                    <span class="box int_id">
	                        <input type="text" name="id" id="id" class="int" maxlength="20">
	                      
	                    </span>
	                    <span class="error_next_box"></span>
	                </div>
	
	                <!-- PW1 -->
	                <div>
	                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
	                    <span class="box int_pass">
	                        <input type="password" name="pass" id="pswd1" class="int" maxlength="20">
	                        <span id="alertTxt">사용불가</span>
	                       
	                    </span>
	                    <span class="error_next_box"></span>
	                </div>
	
	                <!-- PW2 -->
	                <div>
	                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
	                    <span class="box int_pass_check">
	                        <input type="password" name="passCfm"id="pswd2" class="int" maxlength="20">
	                      
	                    </span>
	                    <span class="error_next_box"></span>
	                </div>
	
	                <!-- NAME -->
	                <div>
	                    <h3 class="join_title"><label for="name">이름</label></h3>
	                    <span class="box int_name">
	                        <input type="text" name="name" id="name" class="int" maxlength="20">
	                    </span>
	                    <span class="error_next_box"></span>
	                </div>
	                
	                <!-- NICKNAME -->
	                <div>
	                    <h3 class="join_title"><label for="name">닉네임</label></h3>
	                    <span class="box int_name">
	                        <input type="text" name="nickname" id="nickname" class="int" maxlength="20">
	                    </span>
	                    <span class="error_next_box"></span>
	                </div>
	
	                <!-- GRADE -->
	                <div>
	                    <h3 class="join_title"><label for="gender">등급</label></h3>
	                    <span class="box gender_code">
	                        <select name="grade" id="gender" class="sel">
	                            <option>일반사용자</option>
	                            <option>유료사용자</option>
	                            <option>관리자</option>
	                        </select>                            
	                    </span>
	                    <span class="error_next_box">필수 정보입니다.</span>
	                </div>
	                
	                <!-- point -->
	                <div>
	                    <h3 class="join_title"><label for="name">포인트</label></h3>
	                    <span class="box int_name">
	                        <input type="text" name="point" id="name" class="int" maxlength="20">
	                    </span>
	                    <span class="error_next_box"></span>
	                </div>	                
	                
	                <!-- JOIN BTN-->
	                <div class="btn_area">
	                	<input type="button" id="btnJoin" value="가입하기"/>
	                </div>
	            </div> 
	            <!-- content-->
	        </div> 
	        <!-- wrapper -->
        </form>
    </body>
<%
	String id= request.getParameter("id"); 
	String pass= request.getParameter("pass"); 
	String name= request.getParameter("name"); 
	String nickname= request.getParameter("nickname"); 
	String grade= request.getParameter("grade"); 
	String pointS= request.getParameter("point");
	if(id!=null){
		Member ins = new Member(id, pass, name, nickname, grade, Integer.parseInt(pointS) );
		Dao dao = new Dao();
		dao.insertMember(ins);
%>
	<script type="text/javascript">
		alert("등록 성공\n로그인 페이지 이동!");
		location.href="./login.jsp";
	</script>
<%		
	}

%>    
</html>