package project_3rd_package.vo;

import java.sql.Date;

public class FreeBoard {
	private int boardNum;
	private String boardTitle;
	private Date boardRegiDate;
	private int boardHits;
	private int boardLike;
	private String boardContent;
	public FreeBoard() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FreeBoard(int boardNum, String boardTitle, Date boardRegiDate, int boardHits, int boardLike,
			String boardContent) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardRegiDate = boardRegiDate;
		this.boardHits = boardHits;
		this.boardLike = boardLike;
		this.boardContent = boardContent;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public Date getBoardRegiDate() {
		return boardRegiDate;
	}
	public void setBoardRegiDate(Date boardRegiDate) {
		this.boardRegiDate = boardRegiDate;
	}
	public int getBoardHits() {
		return boardHits;
	}
	public void setBoardHits(int boardHits) {
		this.boardHits = boardHits;
	}
	public int getBoardLike() {
		return boardLike;
	}
	public void setBoardLike(int boardLike) {
		this.boardLike = boardLike;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	
	
}
