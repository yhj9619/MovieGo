package project_3rd_package.vo;
/*
CREATE TABLE Member (
	id       varchar2(20) CONSTRAINT Member_id_uq UNIQUE,     -- 아이디
	pass     varchar2(20) NOT NULL,     -- 패스워드
	name     varchar2(20) NOT NULL,     -- 이름
	nickname varchar2(20) CONSTRAINT Member_nickname_uq UNIQUE,     -- 닉네임
	grade    varchar2(20) DEFAULT '일반사용자',    -- 등급
	point    NUMBER DEFAULT 0      -- 포인트
);
*/
public class Member {
	private String id;
	private String pass;
	private String name;
	private String nickname;
	private String grade;
	private int point;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(String id, String pass, String name, String nickname, String grade, int point) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.nickname = nickname;
		this.grade = grade;
		this.point = point;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
}
