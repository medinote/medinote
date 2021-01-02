package mybatis.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import mybatis.vo.BbsVO;
import mybatis.vo.MemVO;
import mybatis.vo.MypageVO;

@Component
public class MypageDAO {
	
	@Autowired
	private SqlSessionTemplate sst;
	
	//회원이 최근에 검색한 증상 내역 뿌려줄 List 준비
	public MypageVO[] recent_srch(int begin, int end, String u_id){
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		map.put("u_id", u_id);
		
		List<MypageVO> list = sst.selectList("mypage.recent_srch", map);
		
		MypageVO[] ar = null;
		if(list != null && list.size() > 0) {
			ar = new MypageVO[list.size()];
			list.toArray(ar);
		}
		
		//System.out.println("도대체 뭐가 문제냐아아앙아"+u_id);
		
		return ar;
	}
	
	//최근 검색 내역 삭제하기
	public boolean del_srch(MypageVO vo) {
	 	int cnt = sst.delete("mypage.del_srch", vo);
	 	boolean result = false;
	 	if(cnt > 0) {
	 		result = true;
	 	}
	 	return result;
	}
	
	//최근 검색 내역 총 개수 ***************
	public int srchTagTotalCount(String u_id) {
		int cnt = sst.selectOne("mypage.srchTagTotalCount", u_id);
		//System.out.println("뭔가 문제여어어어어엉어어"+u_id);
		return cnt;
	}
	
	//개인정보 수정 전 비밀번호 확인하기
	public boolean pwChk(String u_id, String u_pw) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", u_id);
		map.put("u_pw", u_pw);
		
		int cnt = sst.selectOne("mypage.pwChk", map);
		boolean result = false;
		if(cnt > 0 ) {
			result = true;
		}
		return result;
	}
	
	//회원정보 수정하기
	public boolean infoEdit(MemVO vo) {
		boolean result = false; 
		int cnt = sst.update("mypage.infoEdit", vo);
		if(cnt>0) {
			result = true;
		}
		return result;
	}
	
	//마이노트
	
	//"내"가 커뮤니티에 작성한 글 보기
	public BbsVO[] mylist(int begin, int end, String writer) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		map.put("writer", writer);
		
		List<BbsVO> mylist = sst.selectList("mypage.mylist", map);
		
		System.out.println("해당 게시물을 쓴 사람은"+writer);
		
		BbsVO[] ar = null;
		if(mylist != null && mylist.size() > 0) {
			ar = new BbsVO[mylist.size()];
			mylist.toArray(ar);
		}
		
		return ar;
	}
	
	//"내"가 작성한 총게시물 수
	public int myCommTotalCount(String writer) {
		int cnt = sst.selectOne("mypage.myCommTotalCount", writer);
		
		return cnt;
	}
	
	//"내"가 작성한 게시물 중 검색
	public BbsVO[] myCommsrch(String type, String content) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("search_type", type);
		map.put("search_content", content);
		
		List<BbsVO> list = sst.selectList("mypage.myCommsrch", map);
		
		BbsVO[] ar = null;
		if(list != null && list.size() > 0) {
			ar = new BbsVO[list.size()];
			list.toArray(ar);
		}
		return ar;
	}
	
}
