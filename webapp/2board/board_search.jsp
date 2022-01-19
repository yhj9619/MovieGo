<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <% request.setCharacterEncoding("utf-8");%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- <link rel="stylesheet" href="reset.css"> -->
      <title>MovieGo | 게시판 검색</title>
      <link rel="stylesheet" href="board_common.css">
      <style>
        aside {
          width: 250px;
          height: 690px;
          margin-left: 20px;
          border: 1px solid #666;
        }
      </style>
    </head>

    <body>
      <div class="wrapper">
        <section>
          <h3>
            <span class="searchWord">
              '${param.searchValue}'
            </span>검색 결과
            <br>
            <span class="searchNum">15</span>개의 글이 조회되었습니다.
          </h3>
          <!-- 게시글 영역 -->
          <div class="mainBoard">
            <table>
              <thead>
                <% for(int i=1; i <=15; i++) { %>
                  <tr>
                    <td width="100">글 번호</td>
                    <td width="400"><span>[영화 제목]</span>게시글 제목</td>
                    <td width="120">글쓴이</td>
                    <td width="70">등록일</td>
                    <td width="70">조회수</td>
                    <td width="70">추천수</td>
                  </tr>
                  <% } %>
                    </tbody>
            </table>
          </div>

          <!-- 숫자 페이징 -->
          <div class="numbering">
            <a href="#">이전</a>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">7</a>
            <a href="#">8</a>
            <a href="#">9</a>
            <a href="#">10</a>
            <a href="#">다음</a>
            <a href="board_write.html"><button>글쓰기</button></a>
          </div>

          <!-- 검색 영역 -->
          <div class="search">
            <form action="board_search.jsp" method="post">
              <select name="category">
                <option value="제목">제목</option>
                <option value="제목 + 내용">제목 + 내용</option>
                <option value="닉네임">닉네임</option>
              </select>
              <input type="text" name="searchValue" value="">
              <input type="submit" value="검색">
            </form>
          </div>
        </section>

        <!-- aside 영역 -->
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