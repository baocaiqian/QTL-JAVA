package com.xingtu.entity;

import java.util.Date;

/**
 * ���Ե�
 * */
public class StrategyComment {
	private int scId;//���
	//һ�����۶�Ӧһ�����ԣ���Ӧ�����sId
	private Strategy strategy;//��Ӧ�Ĺ���
	//һ�����Զ�Ӧһ���û�����Ӧ�����useremail
	private Users user;//��Ӧ���û�
	private Date createtime;//�������Ե�ʱ��
	private String content;//���۵�����
	public int getScId() {
		return scId;
	}
	public void setScId(int scId) {
		this.scId = scId;
	}
	public Strategy getStrategy() {
		return strategy;
	}
	public void setStrategy(Strategy strategy) {
		this.strategy = strategy;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
