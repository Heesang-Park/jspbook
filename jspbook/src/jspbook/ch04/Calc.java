package jspbook.ch04;

public class Calc {
	
	// 결과값 저장하기 위한 변수
	int result=0;

	//생성자 오버 라이딩 : 실제 계산 기능을 수행하는 메서드
	public Calc(int num1, int num2, String op) {
			
		if(op.equals("+")) {
			result=num1+num2;
		}else if(op.equals("-")) {
			result=num1-num2;
		}else if(op.equals("*")) {
			result=num1*num2;
		}else if(op.equals("/")) {
			result=num1/num2;
		}
	}
	// 계산 결과값을 리턴하는 메서드
	public int getResult() {
		return result;
	}
		
		
}
