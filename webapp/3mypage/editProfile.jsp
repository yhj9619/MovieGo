<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="project_3rd_package.Dao.*"   
    import="project_3rd_package.vo.*"   
    %>
<!DOCTYPE html>
<html>
    <head>
        <link rel = "stylesheet" type = "text/css" href = "../0_css/common.css">
        <meta charset="UTF-8">
        <title>MovieGo | 개인정보 수정</title>
        <style>
        	body{
				color: #fff;
			    background: linear-gradient(60deg, #000000, #434343);
			}
            .tab{
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
            }
            table{
            	background: #fff;
                border-radius: 10px;
                border: 1px solid #434343;
            }
            th{
                background: #434343;
                color: white;
                border-radius: 10px;
                width: 100px;
            }
            td{
                text-align: left;
                width:320px;
            }
            td>button{
                margin: 10px;
                padding: 5px;
                background: none;
                border: 1px solid #434343;
                border-radius: 10px;
            }
            td>button:hover{
            	border: 1px solid #fff;
                background: #f0872b;
                color:white;
            }
            .btn{
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .btn>input{
                margin: 10px;
                padding: 5px;
                color: white;
                background: #000000;
                border: none;
                border-radius: 10px;
            }

            .btn>input:hover{
                background: #f0872b;
                color:white;
            }
            
            input[type=text], input[type=password]{
                height: auto;
                line-height: normal;
                padding: 10px;
                border: none;
                width: 200px;
            }
            
            input[type=text],input[type=password],textarea:focus{
                outline: none;
            }
            textarea{
                resize: none;
                border: none;
                width: 290px;
            }

        </style>
        <script type="text/javascript" src="../0jquery/jquery-3.6.0.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("span").html("("+$(this).val().length+" / 40)");
                $("[name=intro]").on('keyup',function(){
                    $("span").html("("+$(this).val().length+" / 40)");

                    if($(this).val().length > 40 ) {
                        $(this).val($(this).val().substring(0,40));
                        $("span").html("(40 / 40)");
                    }
                });
            });
        </script>

    </head>
    <body>
    	<%
		// 저장된 session 값가져오기..
		Member m = (Member)session.getAttribute("mem");

    	String id= request.getParameter("id"); 
    	String pass= request.getParameter("pass"); 
    	String name= request.getParameter("name"); 
    	String nickname= request.getParameter("nickname"); 
    	String grade= request.getParameter("grade"); 
    	String pointS= request.getParameter("point");
    	String intro= request.getParameter("intro");
    	if(id!=null){
    		Member upt = new Member(id, pass, name, nickname, grade, Integer.parseInt(pointS), intro );
    		Dao dao = new Dao();
    		dao.updateMember(upt);
    		session.setAttribute("mem", dao.getMember(id));
    	}
		%>
		<script type="text/javascript">
			$(document).ready(function(){
				$("#uptBtn").click(function(){
					if($("[name=nickname]").val()==""){
						alert("이름 입력이 필요합니다.!");
						$("[name=nickname]").focus();
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
					if(confirm("수정하시겠습니까?")){
						$("form").submit();
					}
				});
			});
	    
	    </script>
		<form>
	        <div class="tab">
	        	<input type="hidden" name="id" value="${mem.id}"/>
	        	<input type="hidden" name="name" value="${mem.name}"/>
	        	<input type="hidden" name="grade" value="${mem.grade}"/>
	        	<input type="hidden" name="point" value="${mem.point}"/>
	            <table><tr><th>프로필<br>이미지</th><td style="text-align: center;"><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></td></tr>
	                <tr>
	                    <th>닉네임</th>
	                    <td><input type="text" name="nickname" value="${mem.nickname}"/><button>중복확인</button></td>
	                </tr>
	                <tr>
	                    <th>비밀번호</th>
	                    <td><input type="password" name="pass" value="${mem.pass}"/></td>
	                </tr>
	                <tr>
	                    <th>2차 비밀번호</th>
	                    <td><input type="password" name="passCfm" value=""/></td>
	                </tr>
	                <tr>
	                    <th>한 줄 소개<br><span></span></th>
	                    <td><input type="text" name="intro" value="${mem.intro}"/> </td>
	                </tr>
	            </table>
	            <div class="btn">
	                <input type="button" id="uptBtn" value="저장">
	                <input type="button" value="닫기" onclick="self.close();" />
	            </div>
	        </div>
        </form>
    </body>
</html>