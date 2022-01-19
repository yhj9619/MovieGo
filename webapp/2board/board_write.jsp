<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*" 
   import="project_3rd_package.Dao.*"
   import="project_3rd_package.vo.*"   
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" type = "text/css" href="board_write.css">
<title>Insert title here</title>


</head>
<body>

<%  Dao d1 = new Dao(); 
//ArrayList<CriticBoard> bList = d1.boardList();
//ArrayList<Userid> uList = d1.userList();

%>

<div class="wrapper">
	<top>
		<div id="board_write">
			<h2>글쓰기</h2>
			<section>
			</section>
				<div id="write_area">
					
					<form enctype="multipart/form-data" action="" method="post">
						<div id="in_title">
							<textarea name="title" id="utitle" rows="1" cols="134" placeholder="제목" length="300" required></textarea>
						</div>
	 
						<div class="wi_line"></div>
						<div id="in_content">
							<textarea name="content" id="ucontent"  rows="42" cols="134" placeholder="내용"  maxlength="100" required></textarea>
						</div>
	 
						  <input type="file" name="SelectFile" />

						  <input button1 type="submit" name = "button">
					</form>
				</div>
			</div>
		</top>
    <!-- 왼쪽 컨텐츠 영역 -->
    <section>

    </section>
	

    <!-- 오른쪽 aside 영역 -->
    <aside>
      <!-- 인기 게시글 영역 -->
      <div>
        <h3>인기 게시글</h3>
        <a href="#">게시글 제목</a>
        <a href="#">게시글 제목</a>
        <a href="#">게시글 제목</a>
        <a href="#">게시글 제목</a>
        <a href="#">게시글 제목</a>
      </div>
      <!-- 최근 본 게시글 영역 -->
      <div>
        <h3>최근 본 게시글</h3>
        <a href="#">게시글 제목</a>
        <a href="#">게시글 제목</a>
        <a href="#">게시글 제목</a>
        <a href="#">게시글 제목</a>
        <a href="#">게시글 제목</a>
      </div>
      <!-- 영화 순위 영역 -->
      <div>
        <h3>현재 영화 순위</h3>
        <a href="#">1 <span>영화제목</span></a>
        <a href="#">2 <span>영화제목</span></a>
        <a href="#">3 <span>영화제목</span></a>
        <a href="#">4 <span>영화제목</span></a>
        <a href="#">5 <span>영화제목</span></a>
        <a href="#">6 <span>영화제목</span></a>
        <a href="#">7 <span>영화제목</span></a>
        <a href="#">8 <span>영화제목</span></a>
        <a href="#">9 <span>영화제목</span></a>
      </div>
    </aside>
  </div>
</body>
</html>