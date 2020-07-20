package bbs.dto;

public class BbsDto {
	private int bbsID;
	private String bbsTitle;
	private String id;
	private String bbsDate;
	private String bbsContent;
	private int bbsAvailable;
	//페이징 처리를 하기 위한 필드 
	private int startRowNum;
	private int endRowNum;

	public BbsDto() {}

	public BbsDto(int bbsID, String bbsTitle, String id, String bbsDate, String bbsContent, int bbsAvailable,
			int startRowNum, int endRowNum) {
		super();
		this.bbsID = bbsID;
		this.bbsTitle = bbsTitle;
		this.id = id;	
		this.bbsDate = bbsDate;
		this.bbsContent = bbsContent;
		this.bbsAvailable = bbsAvailable;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
	}

	public int getBbsID() {
		return bbsID;
	}

	public void setBbsID(int bbsID) {
		this.bbsID = bbsID;
	}

	public String getBbsTitle() {
		return bbsTitle;
	}

	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBbsDate() {
		return bbsDate;
	}

	public void setBbsDate(String bbsDate) {
		this.bbsDate = bbsDate;
	}

	public String getBbsContent() {
		return bbsContent;
	}

	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}

	public int getBbsAvailable() {
		return bbsAvailable;
	}

	public void setBbsAvailable(int bbsAvailable) {
		this.bbsAvailable = bbsAvailable;
	}

	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}

	
	
}
