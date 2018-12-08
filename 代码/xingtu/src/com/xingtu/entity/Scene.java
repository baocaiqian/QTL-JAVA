package com.xingtu.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * �����ʵ��bean
 * */
@Entity
@Table(name="scene")
public class Scene {
	private int sceneId;///�������
	private String sname;//����
	private String address;//��ַ
	private String ticketPrice;//Ʊ��
	private float score;//����
	private String describee;//����
	private String route;//·��
	private String playtime;//���������ʱ��
	private String opentime;//����ʱ��
	private String city;//����
	private String img;//����ͼƬ
	private List<Scenecomment> sc;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getSceneId() {
		return sceneId;
	}
	public void setSceneId(int sceneId) {
		this.sceneId = sceneId;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getTicketPrice() {
		return ticketPrice;
	}
	public void setTicketPrice(String ticketPrice) {
		this.ticketPrice = ticketPrice;
	}
	public String getPlaytime() {
		return playtime;
	}
	public void setPlaytime(String playtime) {
		this.playtime = playtime;
	}
	public String getOpentime() {
		return opentime;
	}
	public void setOpentime(String opentime) {
		this.opentime = opentime;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public String getDescribee() {
		return describee;
	}
	public void setDescribee(String describee) {
		this.describee = describee;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	@OneToMany(mappedBy="scene",targetEntity=Scenecomment.class,
			cascade= {CascadeType.ALL})
	public List<Scenecomment> getSc() {
		return sc;
	}
	public void setSc(List<Scenecomment> sc) {
		this.sc = sc;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
