package com.xingtu.entity;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * �������۵�ʵ��bean
 * */
public class Scenecomment {
	private int scommid;//�������
	//һ�����۶�Ӧһ���û�����Ӧ�����useremail
	private Users user;//��Ӧ��user
	//һ�����۶�Ӧһ��һ�����㣬��Ӧ�����sceneId
	private Scene scene;//��Ӧ�ľ�ɫ
	private String content;//��������
	public int getScommid() {
		return scommid;
	}
	public void setScommid(int scommid) {
		this.scommid = scommid;
	}
	@ManyToOne
	@JoinColumn(name="useremail")
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	@ManyToOne
	@JoinColumn(name="sceneId")
	public Scene getScene() {
		return scene;
	}
	public void setScene(Scene scene) {
		this.scene = scene;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
