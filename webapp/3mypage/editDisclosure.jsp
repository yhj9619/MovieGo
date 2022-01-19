<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="../0jquery/jquery-3.6.0.js"></script>
        <meta charset="UTF-8">
        <title>MovieGo | 정보공개 여부</title>
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
            .btn{
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .btn>input{
                margin: 20px;
                padding: 5px;
                color:#fff;
                background: #000000;
                border: none;
                border-radius: 10px;
            }
            .btn>input:hover{
                background: #f0872b;
                color:white;
            }
            td{
            	background: #434343;
                text-align: center;
                width: 80px;
                height: 30px;
            }
            th{
                background: #000000;
                text-align: center;
                width: 80px;
                height: 30px;
            }
            input[type='radio']:after {
		        width: 15px;
		        height: 15px;
		        border-radius: 15px;
		        top: -2px;
		        left: -1px;
		        position: relative;
		        background-color: #fff;
		        content: '';
		        display: inline-block;
		        visibility: visible;
		        border: 2px solid white;
		    }
		    input[type='radio']:checked:after {
		        width: 15px;
		        height: 15px;
		        border-radius: 15px;
		        top: -2px;
		        left: -1px;
		        position: relative;
		        background-color: #f0872b;
		        content: '';
		        display: inline-block;
		        visibility: visible;
		        border: 2px solid white;
		    }
        </style>
        <script>

        </script>

    </head>
    <body>
        <div class="tab">
            <form>
                <table>
                    <thead>
                        <tr><th>분류</th><th>전체공개</th><th>팔로워공개</th><th>맞팔공개</th><th>비공개</th></tr>
                    </thead>
                    <tbody>
                        <tr><th>영화 별점</th>
                            <td><input type="radio" name="star" value="all" checked="checked"/></td>
                            <td><input type="radio" name="star" value="follower"/></td>
                            <td><input type="radio" name="star" value="friend"/></td>
                            <td><input type="radio" name="star" value="private"/></td>
                        </tr>
                        <tr><th>영화 평론</th>
                            <td><input type="radio" name="review" value="all" checked="checked"/></td>
                            <td><input type="radio" name="review" value="follower"/></td>
                            <td><input type="radio" name="review" value="friend"/></td>
                            <td><input type="radio" name="review" value="private"/></td>
                        </tr>
                        <tr><th>게시글</th>
                            <td><input type="radio" name="post" value="all" checked="checked"/></td>
                            <td><input type="radio" name="post" value="follower"/></td>
                            <td><input type="radio" name="post" value="friend"/></td>
                            <td><input type="radio" name="post" value="private"/></td>
                        </tr>
                        <tr><th>댓글</th>
                            <td><input type="radio" name="comment" value="all" checked="checked"/></td>
                            <td><input type="radio" name="comment" value="follower"/></td>
                            <td><input type="radio" name="comment" value="friend"/></td>
                            <td><input type="radio" name="comment" value="private"/></td>
                        </tr>
                        <tr><th>팔로잉</th>
                            <td><input type="radio" name="following" value="all" checked="checked"/></td>
                            <td><input type="radio" name="following" value="follower"/></td>
                            <td><input type="radio" name="following" value="friend"/></td>
                            <td><input type="radio" name="following" value="private"/></td>
                        </tr>
                        <tr><th>팔로워</th>
                            <td><input type="radio" name="follower" value="all" checked="checked"/></td>
                            <td><input type="radio" name="follower" value="follower"/></td>
                            <td><input type="radio" name="follower" value="friend"/></td>
                            <td><input type="radio" name="follower" value="private"/></td>
                        </tr>
                    </tbody>
                </table>
                <div class="btn">
                    <input type="submit" value="저장">
                    <input type="button" value="닫기" onclick="self.close();" />
                </div>
            </form>
        </div>
    </body>
</html>