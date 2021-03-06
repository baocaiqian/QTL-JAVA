<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${ctx }/css/home/header.css" rel="stylesheet">
<link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
<link href="${ctx }/css/home/swiper.min.css" rel="stylesheet">
<link href="${ctx }/css/xiangqing/detils.css" rel="stylesheet">
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
<link href="${ctx }/css/comment.css" rel="stylesheet">
<script type="text/javascript" src="${ctx }/js/xiangqing/script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
	#allmap {width:100%;height:300px;overflow: hidden;margin:0;font-family:"微软雅黑"}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=no84ceXVi8gDw2sbzALgBU2HxUkcwEpM"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<div class="content">
	<div class="first">
		<div class="title">
			<div class="name"><span id="scenename">${singlescene.sname }</span></div>
			<div class="icon">
			<c:if test="${isSigned==false or isSigned==null }">
			<a href="${ctx }/sign.jsp" onmouseover="gone()" onmouseout="gone1()" onclick="gone()"><img alt="" src="${ctx }/img/icon/go.png" id="go" >&nbsp<span style="font-size: 16px;">去过&nbsp&nbsp&nbsp&nbsp</span></a>
			<a href="${ctx }/sign.jsp" onmouseover="shoucang()" onmouseout="shoucang1()" onclick="shoucang()"><img alt="" src="${ctx }/img/icon/shoucang.png" id="shoucang" >&nbsp&nbsp<span style="font-size: 16px;">收藏</span></a>
			</c:if>
			<c:if test="${isSigned==true}">
			   <!-- 如果还未收藏 -->
			     <c:if test="${ifShoucang==false }">
			          <a href="#" onmouseover="gone()" onmouseout="gone1()" onclick="gone()"><img alt="" src="${ctx }/img/icon/go.png" id="go" >&nbsp<span style="font-size: 16px;">去过&nbsp&nbsp&nbsp&nbsp</span></a>
			          <a href="${ctx }/sence/addshoucang?sceneid=${singlescene.sceneId}" onmouseover="shoucang()" onmouseout="shoucang1()" onclick="shoucang()"><img alt="" src="${ctx }/img/icon/shoucang.png" id="shoucang" >&nbsp&nbsp<span style="font-size: 16px;">收藏</span></a>
			     </c:if>
			     <!-- 如果已收藏 -->
			     <c:if test="${ifShoucang==true }">
				     <a href="#" onmouseover="gone()" onmouseout="gone1()" onclick="gone()"><img alt="" src="${ctx }/img/icon/go.png" id="go" >&nbsp<span style="font-size: 16px;">去过&nbsp&nbsp&nbsp&nbsp</span></a>
			         <a href="${ctx }/sence/noshoucang?sceneid=${singlescene.sceneId}" onmouseover="shoucang()" onmouseout="shoucang1()" onclick="shoucang()"><img alt="" src="${ctx }/img/icon/shoucanged.png" id="shoucang" >&nbsp&nbsp<span style="font-size: 16px;">收藏</span></a>
			     </c:if>
			</c:if>
			</div>
			<div><span style="font-size: 14px;color: #bcbcbc">${singlescene.address }</span></div>
		</div>
		<div class="pic">
			<div class="left_pic">
				<div class="imgs">
			<div class="product_introduce">
				<div class="product_picture" style="display: inline-block;">
					<div class="product_picture1">
						<a href="###"><img src="${imglist[1].imgsrc }"></a>
						<span>点击查看更多图集</span>
					</div>
				</div>
			</div>
			<div class="tanchukuang_bg11"></div>
		<div class="picture">
			<div class="picture_top">
				<span>查看大图</span>
				<a class="clos" href="###">×</a>
			</div>
			<div class="picture_bottom">
				<div class="picture_left">
					<div class="picture_img">
						<div class="picture_img2">
							<img src="" class="showImg" />
						</div>
					</div>
					<div class="prev">
						<a href="###"><img src="${ctx }/img/zj.png"/></a>
					</div>
					<div class="next">
						<a href="###"><img src="${ctx }/img/yj.png"/></a>
					</div>
				</div>
					<div class="picture_right">
						<div class="picture_name">
							<a href="###">
								<h3>${singlescene.sname }</h3>
							</a>
						</div>
						<div class="picture_suo">
							<div class="picture_suo_t">
							<c:forEach items="${imglist }" var="img">
								<div class="picture_suo_img suo-img">
									<img class="lazy" src="${img.imgsrc }" />
								</div>
							</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="right_pic">
			<div class="right_pic1"> 
				<img alt="" src="${imglist[2].imgsrc }">
			</div>
			<div class="right_pic2"> 
				<img alt="" src="${imglist[3].imgsrc }">
			</div>
		</div>
		</div>
	</div>
	<div class="f_nav">
		<ul id="menu">
 			<li><a href="#miaoshu" style="color:#c09b75">概述&nbsp&nbsp</a></li>
 			<li><a href="#menpiao">门票&nbsp&nbsp</a></li>
 			<li><a href="#opentime">开放时间</a></li>
 			<li style="border-right: none;"><a href="#route">交通路线</a></li>
		</ul>
	</div>
	<br>
	<div id="miaoshu">
	<p>${singlescene.describee }</p>
	</div>
	<div id="menpiao">
	<h3>门票</h3>
	${singlescene.ticketPrice }
	</div>
	<div id="opentime">
	<h3>开放时间</h3>
	${singlescene.opentime }
	</div>
	<div id="route">
	<h3>交通路线</h3>
	${singlescene.route }
	</div>
	<div class="map"><div id="allmap"></div></div>
</div>

<div class="xiazong">


        
        <div class="alapinglun" style=" width: 80%;    margin:0px auto;">  <h1 style="width: 810px"   >评论区</h1> </div>


        <div class="pinglunzong">
           <div  class="zongxiao">
				<div class="talkMsg">
					<ul id="msgBox">
					
					<c:forEach items="${commentslist}" var="ctl">
					
					
					
					
					
					
						<li class="clearFix">
						 
						   <div  class="yiqi">
						       <!--<img style="float: left; width: 120px;height: 50px;" src=" ${user.icon}">  --> 
						        <div  class="pingluntime"> ${ctl.username}  </div>
						        <div  class="pinglunname"> ${ctl.time}</div>
						   </div>
						   <br>
						   <br>
						   
						 <div class="co">${ctl.comment}</div> 
						   
						  
						<hr>
						
						<!--<p class="pingluntime">           ${ctl.time}      </p>
							<p class="pingluncontent">
							${ctl.username}  -->
						
							
								<!-- <img style="float: left; width: 120px;height: 50px;" src="images/ping2.png"> -->
                            <!-- 	</p>
							<br>

							<p>
								<font>${ctl.comment}</font>
							</p>
                             -->    
                    	
						
						</li>

                   </c:forEach>

					


					  
					
					</ul>
				</div> <!-- "talkMsg" -->
				<div class="talkInp">
				<form id="form" action="${ctx }/save" >
				    <input name="id" type="hidden" value="${singlescene.sceneId}">
					<input type="text" name="comment" style="width:95%;height:50px;"/>					
					<input type="submit" class="ssubmit" value="评论"/>
				</form>
				</div>  <!-- talkInp -->
			 </div>

</div>
    </div><!-- xiazong -->
    
    
<!--评星 -->
<div id="starRating" " >
    <p class="photo">
        <span><i class="high"></i><i class="nohigh"></i></span>
        <span><i class="high"></i><i class="nohigh"></i></span>
        <span><i class="high"></i><i class="nohigh"></i></span>
        <span><i class="high"></i><i class="nohigh"></i></span>
        <span><i class="high"></i><i class="nohigh"></i></span>
    </p>
   
    
    <form action="${ctx }/savePF">
    <input name="id" type="hidden" value="${singlescene.sceneId}">
    <input id="PF" type="text" name="PF" value="">
    <input type="submit" class="qsubmit" value="确认">
    <p class="sureStar"></p>
    </form>
    <div class="bottoms">
        <a class="garyBtn cancleStar">取消评分</a>
    </div>
</div>
<script>
    $(function () {
        //评分
        var starRating = 0;
        $('.photo span').on('mouseenter',function () {
            var index = $(this).index()+1;
            $(this).prevAll().find('.high').css('z-index',1)
            $(this).find('.high').css('z-index',1)
            $(this).nextAll().find('.high').css('z-index',0)
            $('.starNum').html((index*2).toFixed(1)/2+'分')
            document.getElementById('PF').value=(index*2).toFixed(1)/2;
        })
        $('.photo').on('mouseleave',function () {
            $(this).find('.high').css('z-index',0)
            var count = starRating / 2
            if(count == 5) {
                $('.photo span').find('.high').css('z-index',1);
            } else {
                $('.photo span').eq(count).prevAll().find('.high').css('z-index',1);
            }
            $('.starNum').html(starRating.toFixed(1)/2+'分')
            document.getElementById('PF').value=starRating.toFixed(1)/2;
        })
        $('.photo span').on('click',function () {
            var index = $(this).index()+1;
            $(this).prevAll().find('.high').css('z-index',1)
            $(this).find('.high').css('z-index',1)
            starRating = index*2;
            $('.starNum').html(starRating.toFixed(1)/2+'分');
            // alert('评分：是哪嘞'+(starRating.toFixed(1)+'分'))
        })
        //取消评分
        $('.cancleStar').on('click',function () {
            starRating = 0;
            $('.photo span').find('.high').css('z-index',0);
            $('.starNum').html(starRating.toFixed(1)+'分');
        })
        //确定评分
        $('.sureStar').on('click',function () {
            if(starRating===0) {
            	$('.sureStar').html('最低一颗星！');
            } else {
            	$('.sureStar').html('评分lalala先看看是哪：'+(starRating.toFixed(1)+'分'))
            }
        })
    })
</script>
    
    
    
<div style="clear: both;">
<%@include file="footer.jsp" %>
</div>

 

</body>
<script src="${ctx }/js/xiangqing/detils.js"></script>
<script src="${ctx }/js/xiangqing/jquery-1.4.2.js"></script>
<script src="${ctx }/js/xiangqing/new_file.js"></script>
<script src="${ctx }/js/comment.js"></script>
</html>
<script type="text/javascript">
	// 百度地图API功能 
	var ad = document.getElementById("scenename").innerText;
	var map = new BMap.Map("allmap");    // 创建Map实例
	map.centerAndZoom(ad, 17);  // 初始化地图,设置中心点坐标和地图级别
	//添加地图类型控件
	map.addControl(new BMap.MapTypeControl({
		mapTypes:[
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]}));	  
	map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
	
	
</script>

















