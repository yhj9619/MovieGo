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
        <link rel = "stylesheet" type = "text/css" href = "./mypage.css">
        <meta charset="UTF-8">
        <title>MovieGo | 마이페이지</title>
        <style>
        	body{
				color: #fff;
			    background: linear-gradient(60deg, #000000, #434343);
			}
			li{
			    list-style: none;
			}
			
			a{
			    text-decoration: none;
			    color: black;
			}
			
			a:hover, a:active { 
			    text-decoration: none; 
			}
        	body{
				color: #fff;
			    background: linear-gradient(60deg, #000000, #434343);
			}
            #my_info{
                display: flex;
                align-items: center;
            }
            #my_info> span{
            	display: flex;
            	flex-direction: column;
                background: #434343;
                padding:10px;
                border-radius: 10px;
                margin: 5px;
            }
            #my_info > table{
            	color: #000000;
            }
            #my_info > table > tr > th {
            	width:100px;
            }
            
            #my_btn{
                display: flex;
                flex-direction: column;
            }
            #my_btn > button{
            	color: #fff;
                background: #000000;
                border : none;
                margin: 10px;
                padding: 10px;
                border-radius: 5px;
            }
            #my_btn > button:hover{
                background: #f0872b;
            }
            #my_post{
            	background: #434343;
                border-radius: 10px;
            }
            #my_post> table > tr > td:hover{
            	font-size: 20px;
            	color: #f0872b;
                text-decoration: underline;
            }
            #my_post> table > tr > th,td{
			    width:80px;
			    height:40px;
			}
        </style>
        <script>
            function editProfileBtn(){
                window.open("editProfile.jsp","개인정보 수정","width=500, height=500, left=700, top=100")
            }
            function editDisclosureBtn(){
                window.open("editDisclosure.jsp","정보공개 설정","width=500, height=330, left=700, top=100");
            }
        </script>
    </head>
    <body>
    	<%
    	Member m = (Member)session.getAttribute("mem");
    	%>
    	<%if(m!=null){ %>
        <div class="profile_container">
            <div class="common_div">
                <div id="my_info">
                    <span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
                    <table>
                    	<col width="40%"><col width="60%">
                    	<tr><th>닉네임</th><td><%=m.getNickname() %></td></tr>
                    	<tr><th>등급</th><td><%=m.getGrade() %></td></tr>
                    	<tr><th>포인트</th><td><%=m.getPoint() %></td></tr>
                    </table>
                </div>
                <div id="my_btn">
                    <button onclick="editProfileBtn();">개인정보 수정</button>
                    <button onclick="editDisclosureBtn();">정보공개 설정</button>
                </div>
            </div>
        </div>
        <div class="common_div">
            <div id="my_post">
                <table>
                    <thead>
                        <tr>
                            <th>영화 평점</th>
                            <th>영화 평론</th>
                            <th>게시글</th>
                            <th>댓글</th>
                            <th>팔로워</th>
                            <th>팔로잉</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a href="./my_star.jsp" target="mypage">86</a></td>
                            <td><a href="./my_review.jsp" target="mypage">23</a></td>
                            <td><a href="./my_post.jsp" target="mypage">16</a></td>
                            <td><a href="./my_comment.jsp" target="mypage">592</a></td>
                            <td><a href="./my_follower.jsp" target="mypage">134</a></td>
                            <td><a href="./my_following.jsp" target="mypage">251</a></td>                               
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="common_div">
            <iframe src="./my_star.jsp" name="mypage" width="600" height="500" frameBorder="0"></iframe>
        </div>
        <%}else{ %>
        	<script type="text/javascript">
				alert("로그인 하셔야 합니다!");
				location.href="./login.jsp";
			</script>
        <%} %>
    </body>
</html>