package kr.ac.kopo.mbti.vo;

public class MbtiVO {

	private int score;
	private String myAnswer;
	private String realAnswer;
	
	
	
	public MbtiVO() {
		super();
	}
	
	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getMyAnswer() {
		return myAnswer;
	}
	public void setMyAnswer(String myAnswer) {
		this.myAnswer = myAnswer;
	}
	public String getRealAnswer() {
		return realAnswer;
	}
	public void setRealAnswer(String realAnswer) {
		this.realAnswer = realAnswer;
	}
	@Override
	public String toString() {
		return "MbtiVO [score=" + score + ", myAnswer=" + myAnswer + ", realAnswer=" + realAnswer + "]";
	}


	
}
