<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel = "stylesheet" type = "text/css" href = "../0_css/common.css">
        <link rel = "stylesheet" type = "text/css" href = "./mypage.css">
        <meta charset="UTF-8">
        <title>팔로워</title>
        <style>
        	body{
        		background:none;
        	}
        	#follower_div{
        		display:flex;
        		align-items: center;
    			justify-content: center;
        		flex-wrap: wrap;
        	}
        	.user_img{
        		display: flex;
			    flex-direction: column;
        		padding:10px;
        	}
        	.user_img > span{
        		background: #f0872b;
        	}
        </style>
        <script src="../0_jquery/jquery-3.6.0.js" type="text/javascript"></script>
        <script>
	        function selectAll(selectAll)  {
        	  const checkboxes 
        	       = document.getElementsByName('comment');
        	  
        	  checkboxes.forEach((checkbox) => {
        	    checkbox.checked = selectAll.checked;
        	  })
        	}
	        /*
	        window.onload=function(){
				var s01 = new Star("제목","★★★★★",,"0","2021-12-30");
				s01.star();
				s01.star();
				s01.star();
				s01.star();
				s01.star();
			}
	        
	        class Star{
				constructor(title, star, like ,date){
					this.title = title;
					this.star = star;
					this.like = like;
					this.date = date;
				}
				star(){
					var tbodyObj = document.querySelector("tbody");
					var htmlCode = "";
					htmlCode += "<tr>td><input type='checkbox' name='star'/></td><td>"+this.title+"</td><td style="color:yellow;">"+this.star+"</td><td>"+this.like+"</td><td>"+this.date+"</td></tr>"
					tbodyObj.innerHTML += htmlCode;
				}
			}
	        */
        </script>

    </head>
    <body>
    	<h2 style="text-align:center;background:#f0872b;color:#fff;">팔로워</h2>
        <div class="common_div">
            <div id="follower_div">
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            	<span class="user_img">
            		<span><img src="media/profile.png" height="140"width="140" alt="프로필사진"/></span>
            		<span style="text-align:center;">닉네임</span>
            	</span>
            </div>
        </div>
    </body>
</html>