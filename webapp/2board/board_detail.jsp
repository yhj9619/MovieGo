<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="project_3rd_package.Dao.*"
    import="project_3rd_package.vo.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieGo | 게시글</title>
<link rel = "stylesheet" type = "text/css" href="board_detail.css">
</head>
<body>

<% 
	Dao dao = new Dao();
	
%>

	<div class="wrapper">
	
    <!-- 왼쪽 컨텐츠 영역 -->
    <section>
	<top>
		<div id="board_write">
			<h2>상세페이지</h2>
      <table>
        <thead>
          <tr>
            <th width="200">제목</th>
            <th width="200">글쓴이</th>
            <th width="200">등록일</th>
            <th width="200">조회수</th>
            <th width="200">추천수</th>
          </tr>
        </thead>
      </table>
    <div id="board_detail">
        <section>
        </section>
            <div id="detail_area">
                
                <form method="post">
                    <div id="in_title">
                    <div class="wi_line"></div>
                    <div id="in_content">
                        <textarea name="content" id="ucontent"  rows="39" cols="121" placeholder="내용"  maxlength="100" required></textarea>
                    </div>
                      <input button type="submit" name = "button">
                </form>
            </div>
        </div>
            <thead>
                <div class="mainBoard">
                    <table class = "table">
                
                <h2>게시판</h2>
                <body>
                    <div id="mainWrapper">
                
                        <ul>
                            <!-- 게시판 목록  -->
                            <li>
                                <ul id ="ulTable">
                                    <li>
                                        <ul>
                                            <li>No</li>
                                            <li>제목</li>
                                            <li>작성일</li>
                                            <li>작성자</li>
                                            <li>조회수</li>
                                        </ul>
                                    </li>
                                    <!-- 게시물이 출력될 영역 -->
                                    <li>
                                        <ul>
                                            <li>1</li>
                                            <li class="left">스파이더맨 노웨이홈 후기</li>
                                            <li>2022.01.13</li>
                                            <li>조원1</li>
                                            <li>5</li>
                                        </ul>
                                    </li>
                
                                    <li>
                                        <ul>
                                            <li>2</li>
                                            <li class="left">킹스맨 퍼스트에이전트 후기</li>
                                            <li>2022.01.12</li>
                                            <li>조원2</li>
                                            <li>9</li>
                                        </ul>
                                    </li>
                
                                    <li>
                                        <ul>
                                            <li>3</li>
                                            <li class="left">경관의 피 시사회 후기</li>
                                            <li>2022.01.10</li>
                                            <li>조원3</li>
                                            <li>17</li>
                                        </ul>
                                    </li>
                
                                    <li>
                                        <ul>
                                            <li>4</li>
                                            <li class="left">매트릭스 4 후기</li>
                                            <li>2022.01.09</li>
                                            <li>조원4</li>
                                            <li>22</li>
                                        </ul>
                                    <li>                                        
                                </ul>
                            </li>
                
                            <!-- 게시판 페이징 영역 -->
                            <li>
                                <div id="divPaging">
                                    <div>◀</div>
                                       <div><b>1</b></div>
                                    <div>2</div>
                                    <div>3</div>
                                    <div>4</div>
                                    <div>5</div>
                                    <div>▶</div>
                                </div>
                            </li>
                
                            <!-- 검색 폼 영역 -->
                            <li id='liSearchOption'>
                                <div>
                                    <select id='selSearchOption' >
                                        <option value='A'>제목+내용</option>
                                        <option value='T'>제목</option>
                                        <option value='C'>내용</option>
                                    </select>
                                    <input id='txtKeyWord' />
                                    <input type='button' value='검색'/>
                                </div>
                                </li>
                
                        </ul>
                    </div>
               </table>
		</top>
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
  
      </div>
    </aside>
  </div>
</body>
</html>