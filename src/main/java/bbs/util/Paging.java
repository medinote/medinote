package bbs.util;

public class Paging {
	
	private int nowPage,    // 현재 페이지 값
				rowTotal,   // 총 게시물 수
				blockList,  // 한 페이지에 표현할 게시물 수
				blockPage,  // 한 블럭당 표현할 페이지 번호 수
				totalPage,  // 총 페이지 수
				startPage,  // 시작 페이지
				endPage,    // 끝 페이지
				begin,      // 시작 게시물의 행 번호
				end;        // 끝 게시물의 행 번호
	
	private boolean isPrePage;   // 이전페이지로 갈 수 있는지 확인여부
	private boolean isNextPage;  // 다음페이지로 갈 수 있는지 확인여부
	
	

	// ↱JSP에서 표현할 페이징 HTML코드를 저장할 곳. (이전으로 다음으로 보이는 기능)
	private StringBuffer sb;
	private StringBuffer sb2;
	private StringBuffer sb3;

	// ↱기본 필요한 것들 생성자를 통해 저장하기 (현재페이지, 총게시물 수, 한 페이지에 표현할 게시물 수, 한 블럭당 표현할 페이지번호 수)
	public Paging(int nowPage, int rowTotal, int blockList, int blockPage) {
		super();
		this.nowPage = nowPage;
		this.rowTotal = rowTotal;
		this.blockList = blockList;
		this.blockPage = blockPage;
		
		// 이전기능과 다음기능을 초기화 한다.
		isPrePage = isNextPage = false;  // 이렇게 써도 되긴함...
		
		
		//                     ↱ 무조건 올림기능 (ceil은 double이 들어가야 하므로 double로 바꿔줘야함)
		totalPage = (int)Math.ceil((double)rowTotal/blockList);
		
		// ↱ 현재 페이지의 값이 전체페이지의 값보다 크다면 전체 페이지값을 현재 페이지 값으로 지정한다.
		if(nowPage > totalPage) {
			nowPage = totalPage;
		}
	
		// ↱현재 블럭의 시작페이지 값과 페이지 값을 구하기.
		startPage = ((nowPage - 1)/blockPage * blockPage +1);
		endPage = startPage + blockPage -1;
		
		// ↱ 끝페이지의 값이 전체페이지의 값보다 크면 끝페이지의 값을 전체페이지 값으로 지정
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
		// ↱ 현재 페이지 값을 이용해 시작 게시물의 행번호와 
		//   끝 게시물의 행번호를 지정하여 -> 현재 페이지에 보여질 게시물 목록얻기.
		begin = (nowPage-1) *blockList+1;
		end = begin+blockList-1;
		
		// ↱ 이전기능 가능여부 확인하기 (즉 startPage가 1이 아닌 경우)
		if(startPage > 1) {
			isPrePage = true;
		}
		
		// ↱ 다음기능 가능여부 확인하기 (endPage가 totalPage보다 작은 경우)
		if(endPage < totalPage) {
			isNextPage = true;
		}
		
		
		// ↱ 이제 현재페이지 값도 알고, 시작페이지와 끝페이지 값을 알았으니
		// ⎥  페이징 기법에 사용할 HTML코드를 작성하여 StringBuffer에 저장하자!
		sb = new StringBuffer("<ul class=\'pagination\' style=\'margin-left: 45%;\'>");
		
		if (isPrePage) { //이전기능 활성화 상태임 (즉 페이지블럭을 이전 페이지 블럭으로 이동가능한 상태)
			sb.append("<li class=\'page-item\'>");
			sb.append("<a class=\'page-link\' href='bbs?cPage=");
			// ↱만약 페이지가 6인 경우 6-5를 한거임
			sb.append(startPage - blockPage);
			sb.append("'>&laquo; </a></li>");
			
		}else { // 이전기능 비활성화 상태임 (즉 startPage가 1인 경우임 a태그 없음)
			sb.append("<li class ='page-item disabled'><a class='page-link' href='#'> &laquo; </a></li>");
			
		}
		
		// ↱ 페이지 번호 출력하는 반복문(현재 페이지에는 now라는 css클래스를 적용하자)
		for(int i= startPage; i<=endPage; i++) {
			// i의 값이 현재페이지(nowPage)와 같을 때를 구별하여 css클래스를 적용하기!
			if(i == nowPage) {
				sb.append("<li class='page-item disabled'><a class='page-link' href=javascript:;'>"); //css를 입히기 위해 비활성된 a태그 넣어줌
				sb.append(i);
				sb.append("</li>");
			}else {
				sb.append("<li class='page-item'><a class='page-link' href='bbs?cPage=");
				sb.append(i);
				sb.append("'>");
				sb.append(i);  //위에 i는 표시가 안되므로 다시 한번적어줘야 함
				sb.append("</a></li>");
			}
		}// for문끝
		
//		System.out.println("-------이전기능 활성 비활성 관련 및 페이지for문 -----------");
//		System.out.println(sb.toString());
		
		// ↱ 다음기능 가능여부 확인 (페이지 블록이 전체가 바뀌는 경우임)
		if (isNextPage) { //다음기능 활성화
			sb.append("<li class='page-item'><a class='page-link' href='bbs?cPage=");
			// ↱만약 페이지가 6인 경우 6+5를 한거임
			sb.append(startPage + blockPage);
			sb.append("'>&raquo; </a></li>");
			
		}else { // 다음기능 비활성화 (즉 startPage가 1인 경우임 a태그 없음)
			sb.append("<li class ='page-item disabled'><a class='page-link' href='#'> &raquo; </a></li>");
			
		}
		sb.append("</ul>");
		
//		System.out.println("--------다음기능 활성 비활성 관련----------");
//		System.out.println(sb.toString());
		
		//도량이가 쓸 페이징
		sb2 = new StringBuffer("<ul class=\'pagination\' style=\'margin-left: 45%;\'>");
		
		if (isPrePage) { //이전기능 활성화 상태임 (즉 페이지블럭을 이전 페이지 블럭으로 이동가능한 상태)
			sb2.append("<li class=\'page-item\'>");
			sb2.append("<a class=\'page-link\' href='myPage?cPage=");
			sb2.append(startPage - blockPage);
			sb2.append("'>&laquo; </a></li>");
			
		}else {
			sb2.append("<li class ='page-item disabled'><a class='page-link' href='#'> &laquo; </a></li>");
		}
		
		for(int i= startPage; i<=endPage; i++) {
			// i의 값이 현재페이지(nowPage)와 같을 때를 구별하여 css클래스를 적용하기!
			if(i == nowPage) {
				sb2.append("<li class='page-item disabled'><a class='page-link' href=javascript:;'>"); 
				sb2.append(i);
				sb2.append("</li>");
			}else {
				sb2.append("<li class='page-item'><a class='page-link' href='myPage?cPage=");
				sb2.append(i);
				sb2.append("'>");
				sb2.append(i);  //위에 i는 표시가 안되므로 다시 한번적어줘야 함
				sb2.append("</a></li>");
			}
		}
		if (isNextPage) { //다음기능 활성화
			sb2.append("<li class='page-item'><a class='page-link' href='myPage?cPage=");
			// ↱만약 페이지가 6인 경우 6+5를 한거임
			sb2.append(startPage + blockPage);
			sb2.append("'>&raquo; </a></li>");
			
		}else { // 다음기능 비활성화 (즉 startPage가 1인 경우임 a태그 없음)
			sb2.append("<li class ='page-item disabled'><a class='page-link' href='#'> &raquo; </a></li>");	
		}
		sb2.append("</ul>");
		
		//도량이가 쓸 페이징3

		sb3 = new StringBuffer("<ul class=\'pagination\' style=\'margin-left: 45%;\'>");
		
		if (isPrePage) { //이전기능 활성화 상태임 (즉 페이지블럭을 이전 페이지 블럭으로 이동가능한 상태)
			sb3.append("<li class=\'page-item\'>");
			sb3.append("<a class=\'page-link\' href='myComm?cPage=");
			sb3.append(startPage - blockPage);
			sb3.append("'>&laquo; </a></li>");
			
		}else {
			sb3.append("<li class ='page-item disabled'><a class='page-link' href='#'> &laquo; </a></li>");
		}
		
		for(int i= startPage; i<=endPage; i++) {
			// i의 값이 현재페이지(nowPage)와 같을 때를 구별하여 css클래스를 적용하기!
			if(i == nowPage) {
				sb3.append("<li class='page-item disabled'><a class='page-link' href=javascript:;'>"); 
				sb3.append(i);
				sb3.append("</li>");
			}else {
				sb3.append("<li class='page-item'><a class='page-link' href='myComm?cPage=");
				sb3.append(i);
				sb3.append("'>");
				sb3.append(i);  //위에 i는 표시가 안되므로 다시 한번적어줘야 함
				sb3.append("</a></li>");
			}
		}
		if (isNextPage) { //다음기능 활성화
			sb3.append("<li class='page-item'><a class='page-link' href='myComm?cPage=");
			// ↱만약 페이지가 6인 경우 6+5를 한거임
			sb3.append(startPage + blockPage);
			sb3.append("'>&raquo; </a></li>");
			
		}else { // 다음기능 비활성화 (즉 startPage가 1인 경우임 a태그 없음)
			sb3.append("<li class ='page-item disabled'><a class='page-link' href='#'> &raquo; </a></li>");	
		}
		sb3.append("</ul>");
		
	}


	public int getNowPage() {
		return nowPage;
	}


	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}


	public int getRowTotal() {
		return rowTotal;
	}


	public void setRowTotal(int rowTotal) {
		this.rowTotal = rowTotal;
	}


	public int getBlockList() {
		return blockList;
	}


	public void setBlockList(int blockList) {
		this.blockList = blockList;
	}


	public int getBlockPage() {
		return blockPage;
	}


	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}


	public int getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
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


	public int getBegin() {
		return begin;
	}


	public void setBegin(int begin) {
		this.begin = begin;
	}


	public int getEnd() {
		return end;
	}


	public void setEnd(int end) {
		this.end = end;
	}


	public boolean isPrePage() {
		return isPrePage;
	}


	public void setPrePage(boolean isPrePage) {
		this.isPrePage = isPrePage;
	}


	public boolean isNextPage() {
		return isNextPage;
	}


	public void setNextPage(boolean isNextPage) {
		this.isNextPage = isNextPage;
	}


	public StringBuffer getSb() {
		return sb;
	}


	public void setSb(StringBuffer sb) {
		this.sb = sb;
	}
	
	public StringBuffer getSb2() {
		return sb2;
	}


	public void setSb2(StringBuffer sb2) {
		this.sb2 = sb2;
	}
	
	public StringBuffer getSb3() {
		return sb3;
	}

	public void setSb3(StringBuffer sb3) {
		this.sb3 = sb3;
	}
	

}
