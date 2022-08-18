package com.human.vo.shopping;

import org.springframework.web.util.UriComponents; 
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	

	private int page=1;//현재 페이지
	private int perPageNum=5;//한 페이지당 보여줄 게시글 데이터 갯수
	private String searchType;//카테고리
	private String keyword;//검색박스
	
	private int totalCount;//총 데이터 개수
	private int totalStartPage=1;//총 데이터의 첫 페이지
	private int totalEndPage;//총 데이터의 마지막 페이지
	private int startPage;//startPage 11~20 endPage
	private int endPage;//startPage 11~20 endPage
	private boolean prev;//왼쪽버튼
	private boolean next;//오른쪽버튼
	private int displayPageNum = 5;//보여줄 페이지 창 11~20
	
	
	public int getTotalStartPage() {
		return totalStartPage;
	}
	public void setTotalStartPage(int totalStartPage) {
		this.totalStartPage = totalStartPage;
	}
	public int getTotalEndPage() {
		return totalEndPage;
	}
	public void setTotalEndPage(int totalEndPage) {
		this.totalEndPage = totalEndPage;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page<=0) {
			page=1;
		}
		this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		if(perPageNum<=0||perPageNum>100) {
			perPageNum=10;
		}
		this.perPageNum = perPageNum;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	// 컨트롤러에서 매개변수로 bm.listSearchCount(pm) 값을 가져온다.
	// vo의 총 페이지 데이터를 담은 후 calcData() 메소드를 실행한다.
	// 이로써 페이지 기능을 세팅 및 생성한다.
	
	private void calcData() {
		totalStartPage=1;
		totalEndPage=(int)Math.ceil(totalCount/(double)perPageNum);
		// 총 데이터 3/10 = 0.3 반올림은 1. 마지막 페이지는 1
		// 총 데이터 11/10 = 1.1 반올림은 2. 마지막 페이지는 2
	    endPage = (int) (
	    		Math.ceil(page /(double) displayPageNum)
	    		* displayPageNum);
	    // 현재페이지 13/10 = 1.3 반올림은 2. 2*10 = 20. 
	    //startPage 11~20 endPage
	    startPage=endPage-displayPageNum+1;
	    // 20-10+1 == 11
	    //startPage 11~20 endPage
	    
	    if(totalEndPage < endPage) {
	    	endPage=totalEndPage;
	    }
	    // 마지막 페이지가 15인데 endPage가 20일 경우.
	    // 자동으로 마지막 페이지 15 값을 대입한다.
	    
	    if(startPage<1) {
	    	startPage=1;
	    }
	    // 첫 페이지는 절대로 1 이하로 내려갈 수 없다.
	    
	    if(startPage==1) {
	    	prev=false;
	    }else {
	    	prev=true;
	    }   
	    if(endPage==totalEndPage) {
	    	next=false;
	    }else {
	    	next=true;
	    }
	    // prev와 next는 < > 버튼이다.
	    // << >> *버튼show hide는 따로 있다.
	    // 현재 보여주는 start,end 페이지에 따라서 세팅되는 if-else문
	    
//		private boolean prev;//�씠�쟾 �럹�씠吏� 踰덊샇 紐⑸줉 �씠�룞
//		private boolean next;//�떎�쓬 �럹�씠吏� 紐⑸줉 �씠�룞
		
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	
	@Override
	public String toString() {
		return "PageMaker [page=" + page + ", perPageNum=" + perPageNum + ", searchType=" + searchType + ", keyword="
				+ keyword + ", totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", prev=" + prev + ", next=" + next + "]";
	}
	
	public String makeSearch() {
		UriComponents u=UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", perPageNum)
				.queryParam("searchType", searchType)
				.queryParam("keyword", keyword)
				.build();
		return u.toUriString();		
	}
	
	public String makeSearch(int page) {
		UriComponents u=UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", perPageNum)
				.queryParam("searchType", searchType)
				.queryParam("keyword", keyword)
				.build();
		return u.toUriString();		
	}
	public String makePage(int page) {
		UriComponents u=UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", perPageNum)
				.build();
		return u.toUriString();		
	}
	
	
}
















