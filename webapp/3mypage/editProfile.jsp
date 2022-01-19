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
            
            input[type=text]{
                height: auto;
                line-height: normal;
                padding: 10px;
                border: none;
                width: 200px;
            }
            
            input[type=text],textarea:focus{
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
                $("textarea").on('keyup',function(){
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
		%>
        <div class="tab">
            <table><tr><th>프로필<br>이미지</th><td style="text-align: center;"><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></td></tr>
                <tr>
                    <th>닉네임</th>
                    <td><input type="text" value="<%=m.getNickname() %>"/><button>중복확인</button></td>
                </tr>
                <tr>
                    <th>전화번호</th>
                    <td><input type="text" value="010-0000-0000"/></td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td><input type="text" value="himan@sist.com"/></td>
                </tr>
                <tr>
                    <th>주소</th>
                    <td><input type="text" value="서울특별시 영등포구 영등로 123"/></td>
                </tr>
                <tr>
                    <th>선호 장르</th>
                    <td><input type="text" value="#액션 #로맨스"/></td>
                </tr>
                <tr>
                    <th>한 줄 소개<br><span></span></th>
                    <td><textarea><%=m.getIntro() %></textarea></td>
                </tr>
            </table>
            <div class="btn">
                <input type="submit" value="저장">
                <input type="button" value="닫기" onclick="self.close();" />
            </div>
        </div>
    </body>
</html>