<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel = "stylesheet" type = "text/css" href = "../0_css/common.css">
        <link rel = "stylesheet" type = "text/css" href = "./mypage.css">
        <meta charset="UTF-8">
        <title>평론</title>
        <style>
        	body{
        		background:none;
        	}
  			table{
  				width: 600px;
  			}
  			td, th{
  				height:40px;
  			}
  			td{
  				color:#424242;
  			}
  			.bottom_div{
  				text-align-last:justify;
  				padding: 20px;
  			}
  			.bottom_div > span{
  				margin: 5px;
  				color: white;
  			}
  			.bottom_div > span:hover{
  				margin: 5px;
  				text-decoration: underline;
  			}
  			.bottom_div > input[type=button]{
  				color: #fff;
  				background: #434343;
  				border: none;
  				border-radius:10px;
  				padding:5px;
  			}
  			.bottom_div > input[type=button]:hover{
  				background: #f0872b;
  			}
        </style>
        <script src="../0_jquery/jquery-3.6.0.js" type="text/javascript"></script>
        <script>
	        function selectAll(selectAll)  {
        	  const checkboxes 
        	       = document.getElementsByName('post');
        	  
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
    	<h2 style="text-align:center;background:#f0872b;color:#fff;">게시글</h2>
        <div class="common_div">
            <div id="post_div">
                <table>
                    <thead>
                        <tr>
                            <th>선택</th>
                            <th>게시글 제목</th>
                            <th>댓글</th>
                            <th>공감</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<col width="10%"><col width="50%"><col width="10%"><col width="10%"><col width="25%">
                        <tr>
                            <td><input type="checkbox" name="post"/></td>
                            <td>게시글 제목</td>
                            <td>0</td>
                            <td>0</td>
                            <td>2021.10.24</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="post"/></td>
                            <td>게시글 제목</td>
                            <td>0</td>
                            <td>0</td>
                            <td>2021.10.24</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="post"/></td>
                            <td>게시글 제목</td>
                            <td>0</td>
                            <td>0</td>
                            <td>2021.10.24</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="post"/></td>
                            <td>게시글 제목</td>
                            <td>0</td>
                            <td>0</td>
                            <td>2021.10.24</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="post"/></td>
                            <td>게시글 제목</td>
                            <td>0</td>
                            <td>0</td>
                            <td>2021.10.24</td>
                        </tr>
                	</tbody>
                </table>
                <div class="bottom_div">
	                <input type="checkbox" name="post" onclick="selectAll(this)"/><span>전체선택</span>
	                <span><<</span><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>>></span>
	            	<input type="button" value="선택 삭제" />
                </div>
                
            </div>
        </div>
    </body>
</html>