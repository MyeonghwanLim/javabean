package test;

import java.util.ArrayList;

public class MemberMangerBean {
	ArrayList<MemberBean> datas=new ArrayList<MemberBean>();
	
	public boolean insert(MemberBean mb) {
		datas.add(mb);
		return true;
	}
	public ArrayList<MemberBean> selectAll(MemberBean mb){
		return datas;
	}
	
	
	public MemberBean selectOne(MemberBean mb) {
		for(MemberBean v:datas) {
			if(mb.getMname().equals(v.getMname())) {
				return v;
			}
		}
		return null;
		
	}
	
}
