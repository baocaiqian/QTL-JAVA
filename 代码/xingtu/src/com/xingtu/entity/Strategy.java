package com.xingtu.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * ���Ե�ʵ��bean
 * */
@Entity
@Table(name="strategy")
public class Strategy {
	private int sId;
	//һ�����Զ�Ӧһ���û�����Ӧ�����useremail
	private Users user;
	private Date stime;//�û��趨�ĳ���ʱ��
	private String title;//���Ա���
	private String Content;//����
	private String tag;//��ǩ
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getsId() {
		return sId;
	}
	public void setsId(int sId) {
		this.sId = sId;
	}
	@ManyToOne
	@JoinColumn(name="useremail")
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Date getStime() {
		return stime;
	}
	public void setStime(Date stime) {
		this.stime = stime;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	
}
