package project_3rd_package.vo;

import java.sql.Date;

public class ReviewBoard {
	private int boardStar;
	private Date boardRegiDate;
	private int boardLike;
	private String boardComment;
	public ReviewBoard() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReviewBoard(int boardStar, Date boardRegiDate, int boardLike, String boardComment) {
		super();
		this.boardStar = boardStar;
		this.boardRegiDate = boardRegiDate;
		this.boardLike = boardLike;
		this.boardComment = boardComment;
	}
	public int getBoardStar() {
		return boardStar;
	}
	public void setBoardStar(int boardStar) {
		this.boardStar = boardStar;
	}
	public Date getBoardRegiDate() {
		return boardRegiDate;
	}
	public void setBoardRegiDate(Date boardRegiDate) {
		this.boardRegiDate = boardRegiDate;
	}
	public int getBoardLike() {
		return boardLike;
	}
	public void setBoardLike(int boardLike) {
		this.boardLike = boardLike;
	}
	public String getBoardComment() {
		return boardComment;
	}
	public void setBoardComment(String boardComment) {
		this.boardComment = boardComment;
	}
	
	
}
