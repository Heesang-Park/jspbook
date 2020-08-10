package jspbook.ch07;

import java.util.ArrayList;
import java.util.List;

public class AddrManager {
	// �ּҷ� ����� �����ϱ� ���� ArrayList
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	// �ּҷ� �߰� �޼���: add�޼ҵ��� �Ű������� AddBean��  ��ü ab�� Ȱ���Ͽ� List�� �߰�
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	
	// �ּҷ� ��� ���� �޼���
	public List<AddrBean> getAddrList(){
		return addrlist;
	}
	
	// Ư�� ����ڸ� �ּҷ� ��Ͽ��� �˻��ϴ� �޼���
	public AddrBean getAddr(String username) {
		for(AddrBean ab : addrlist) {
			if(ab.getUsername().equals(username))
				return ab;
		}
		return null;
	}

}
