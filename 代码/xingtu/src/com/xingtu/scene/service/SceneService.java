package com.xingtu.scene.service;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingtu.entity.Scene;
import com.xingtu.entity.SceneImgs;
import com.xingtu.entity.Sceneshoucang;
import com.xingtu.entity.Users;
import com.xingtu.scene.dao.SceneDao;

@Service
@Transactional(readOnly=false)
public class SceneService {
	@Resource
	private SceneDao sd;
	public Scene findScene(int id) {
		return sd.findSceneById(id);
	}
	public void update(int id,float avg) {
		this.sd.update(id, avg);
	}
	public List<SceneImgs> findSceneimg(String name) {
		return sd.findSceneImgs(name);
	}
	public List<Scene> findAllScene(int pageNum,int pageSize){
		return sd.findAllScene(pageNum,pageSize);
	}
	public List<Scene> getSceList(){
		return sd.getSceList();
	}
	public List<Scene> getHotScene(){
		return sd.getHotScene();
	}
	//获取热门景点
	public List<Scene> getBaseItemScene(List sceneidList){
		return sd.getBaseItemScene(sceneidList);
	}
	
	public List<Scene> getHotSceneList(){
		return sd.getHotScene();
	}
	
	
	//判断是否已收藏
	public Boolean IfShouCang(int sceneid,Users user) {
		return sd.IfShouCang(sceneid, user);
	}
	//点击收藏，将收藏名单插入收藏表
	public Sceneshoucang InsertShoucang(int sceneid,Users user) {
		return sd.InsertShoucang(sceneid, user);
	}
	//将收藏者删除
	public void delectShoucang(int sceneid,Users user) {
		sd.delectShoucang(sceneid, user);
	}
	//获取我的收藏
	public List<Scene> findShoucangs(String myemail) {
		return sd.findShoucangs(myemail);
	}
	public List<Scene> findByName(String name){
		return sd.findbyname(name);
	}
	public List<Scene> TjScene(List<String> id){
		return sd.findTjScene(id);
	}
	public List<Scene> findByNames(Set<String> names){
		return sd.findbynames(names);
	}
}
