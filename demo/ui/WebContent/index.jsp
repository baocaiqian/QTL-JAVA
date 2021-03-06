<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>行途</title>
    <!-- Bootstrap -->
    <link href="css/home/bootstrap.min.css" rel="stylesheet">
    <link href="css/home/swiper.min.css" rel="stylesheet">
    <link href="css/home/main.css" rel="stylesheet">
</head>
<body>

<jsp:include page="header.jsp" flush="true"></jsp:include>
<!--*********************** banner start ***************************-->
<section>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/banner0.jpg" alt="banner">
                <div class="carousel-caption">
                    <h2>Only food and love can live up to it.</h2>
                    <h3>唯有美食与爱不可辜负</h3>
                </div>
            </div>
            <div class="item">
                <img src="img/banner2.jpg" alt="banner">
                <div class="carousel-caption">
                    <h2>The most healing thing in the world, the first is food, and the second is the text.</h2>
                    <h3>世界上最治愈的东西第一是美食，第二才是文字</h3>
                </div>
            </div>
            <div class="item">
                <img src="img/banner3.jpg" alt="banner">
                <div class="carousel-caption">
                    <h2>People don't take trips,trips take people</h2>
                    <h3>非庄生梦蝶，蝶梦庄生也</h3>
                </div>
            </div>
        </div>
    </div>
</section>
<!--************************* banner end **********************************************-->
<!--************************* 主体第一部分 **********************************************-->
<div class="blue_title text-center">
        <span>行途中，随心行</span>
    </div>
    <div class="row">
    <div style="width: 100%;position:static;background-image:url('img/bg.jpg'); margin-bottom: 1%;">
    <span style="font-size: 2em;">热门景点</span><span style="margin-left: 80%"><a>更多</a></span>
    </div>
    <div class="col-md-6 col-lg-4">
            <div class="category-item effect-1">
              <img src="img/zhiwuyuan.jpg" alt="img12">
              <div class="caption">
                <div>
                  <p class="title">植物园</p>
                  <p class="description">地址：石家庄市植物园街60号</p>
                  <p class="description">公交：旅游1路；旅游11路</p>
                  <p class="description">票价：植物园：20元/人；科普馆：30元/人；游乐场：120元/人</p>
                  
                </div>
                <a href="#">View more</a>
              </div>     
            </div>
          </div>
           
          <div class="col-md-6 col-lg-4">
            <div class="category-item effect-1">
              <img src="img/zhengding.jpg" alt="img12">
              <div class="caption">
                <div>
                  <p class="title">正定南门</p>
                  <p class="description">地址：石家庄市正定县</p>
                  <p class="description">公交：177路；130路</p>
                  <p class="description">票价：无门票</p>
                </div>
                <a href="#">View more</a>
              </div>     
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="category-item effect-1">
              <img src="img/quna.jpg" alt="img12">
              <div class="caption">
                <div>
                  <p class="title">正定森林河趣那主题公园</p>
                  <p class="description">地址：石家庄市中华北大街滹沱河景区云龙大桥河心岛西侧</p>
                  <p class="description">公交：117路</p>
                  <p class="description">票价：40元</p>
                </div>
                <a href="#">View more</a>
              </div>     
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="category-item effect-1">
              <img src="img/yeshi.jpg" alt="img12">
              <div class="caption">
                <div>
                  <p class="title">石家庄新市中路夜市</p>
                  <p class="description">营业时间：18:00-23:00</p>
                  <p class="description">地址：石家庄市新石中路</p>
                  <p class="description">公交：2环1路</p>
                  <p class="description">人均：15元</p>
                </div>
                <a href="#">View more</a>
              </div>     
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="category-item effect-1">
              <img src="img/fuyuan.jpg" alt="img12">
              <div class="caption">
                <div>
                  <p class="title">福缘烤肉王</p>
                  <p class="description">营业时间：全天</p>
                  <p class="description">地址：石家庄市长安区中山东路39号勒泰中心4楼</p>
                  <p class="description">公交：10路、30路、31路</p>
                  <p class="description">人均：56元</p>
                </div>
                <a href="#">View more</a>
              </div>     
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="category-item effect-1">
              <img src="img/chunmao.jpg" alt="img12">
              <div class="caption">
                <div>
                   <p class="title">春猫音乐餐厅</p>
                  <p class="description">营业时间：11:00-00:00</p>
                  <p class="description">地址：石家庄市中山路与广安大街交叉口北行50米路东</p>
                  <p class="description">公交：130路，141路</p>
                  <p class="description">人均：81元</p>
                </div>
                <a href="#">View more</a>
              </div>     
            </div>
          </div>
    </div>
      <!-- *******************************上半部分**************************** -->
      <div class="blue_title text-center">
        <span>行途中，吃喝玩儿乐</span>
    </div>
<div class="container blue_still">
    <div class="row">
        <div class="col-md-3 col-xs-6">
            <div class="blue_bg blue_still_box" style="background-image: url('img/bg.jpg');">
                <div class="blue_still_img">
                    <img src="img/shanbei.jpg" alt="">
                </div>
                 <h2 style="font-size: 2em;font-weight: 400">各色小吃</h2>
                <p style="font-weight: 600">时光将味道烙在了我们的味蕾上，随生而生，永不磨灭</p>
                <a href="#">查看更多>></a>
            </div>
        </div>
        <div class="col-md-3 col-xs-6">
            <div class="blue_bg blue_still_box" style="background-image: url('img/bg.jpg');">
                <div class="blue_still_img">
                    <img src="img/cha.png" alt="">
                </div>
                 <h2 style="font-size: 2em;font-weight: 400">精美茶点</h2>
                <p style="font-weight: 600">最美的时光，不过午后的是一杯茶，一本书，三两闺蜜，或执手之人，浪漫惬意</p>
                <a href="#">查看更多>></a>
            </div>
        </div>
        <div class="col-md-3 col-xs-6">
            <div class="blue_bg blue_still_box" style="background-image: url('img/bg.jpg');">
                <div class="blue_still_img">
                    <img src="img/qixing.jpg" alt="">
                </div>
                 <h2 style="font-size: 2em;font-weight: 400">周边美景</h2>
                <p style="font-weight: 600">没有值得分享的感伤爱情故事，唯有讲述此间途经的美景，分享没有男主角的相片。</p>
                <a href="#">查看更多>></a>
            </div>
        </div>
        <div class="col-md-3 col-xs-6">
            <div class="blue_bg blue_still_box" style="background-image: url('img/bg.jpg');">
                <div class="blue_still_img">
                    <img src="img/motianlun.jpg" alt="">
                </div>
                 <h2 style="font-size: 2em;font-weight: 400">游玩场所</h2>
                <p style="font-weight: 600">欢快的游乐场，烧脑的密室，恐怖的鬼屋，热闹的演唱会，邀三两好友，一起进入欢乐世界</p>
                <a href="#">查看更多>></a>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="blue_title text-center">
        <span>出行类型</span>
    </div>

    <div class="container">
        <div class="blue_type">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="javascript:;">
                            <div class="blue_img">
                                <img src="img/type_1.jpg" alt="">
                            </div>
                            <p>家庭出游</p>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="javascript:;">
                            <div class="blue_img">
                                <img src="img/type_2.jpg" alt="">
                            </div>
                            <p>个人旅游</p>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="javascript:;">
                            <div class="blue_img">
                                <img src="img/type_3.jpg" alt="">
                            </div>
                            <p>情侣出游</p>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="javascript:;">
                            <div class="blue_img">
                                <img src="img/type_4.jpg" alt="">
                            </div>
                            <p>生日聚餐</p>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="javascript:;">
                            <div class="blue_img">
                                <img src="img/type_5.jpg" alt="">
                            </div>
                            <p>朋友相聚</p>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="javascript:;">
                            <div class="blue_img">
                                <img src="img/type_6.jpg" alt="">
                            </div>
                            <p>团队团建</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="swiper-button swiper-button-prev"><span class="glyphicon glyphicon-menu-left"></span></div>
            <div class="swiper-button swiper-button-next"><span class="glyphicon glyphicon-menu-right"></span></div>
        </div>
    </div>
</div>


<div class="container-fluid blue_bg" style="margin-bottom: 5%">
    <div class="blue_title text-center">
        <span>是什么让我们与众不同</span>
    </div>
    <div class="container">
        <article class="text-center col-md-10 col-md-offset-1">
            <div class="blue_article_before">
                <p>
                  行途不仅仅是一个推荐旅游景点以及美食的网站，他还可以帮我们记录我们旅途的点点滴滴，建立自己的相册，记录自己的旅游心得，与大家分享自己的一些新鲜体验，查找旅游攻略，
                  为自己的每一次出行指定完美计划......
                    <a class="btn_article_before" href="javascript:;">了解更多</a>
                </p>
            </div>
            <div class="blue_article_after">
                <p>我们有对您周边的景点和美食场所的介绍，还有来自其他人对一些景点或者餐饮地点的推荐和评价，让您在出行之前了解好每一个景点最好玩儿的地方。不浪费每每一分时光</p>
                <p>我们有让您自己指定旅游攻略的功能，您可以自行创建属于您自己的攻略，为出行提前做一个完美的计划。同时，您还可以将自己的攻略发布出去，分享给其他人。与此同时，您也可以参考其他人的旅游攻略来制定适合自己的出行计划</p>
                <p>我们还设有相册和游记板块，让您记录下每一次出行的心得体会，相册中保存着您出行过程中每一个难忘的瞬间，为您营造一个浪漫的回忆空间</p>
                <p>我们还设有一些活动的推荐，让您及时关注到您想要看的一些比赛，演唱会等活动。
                    <a class="btn_article_after" href="javascript:;">返回</a>
                </p>
            </div>
        </article>
    </div>
</div>
<!-- ********************分类介绍 /吃喝玩玩儿乐*************************-->

<!-- ****************************footer******************************* -->
<jsp:include page="footer.jsp" flush="true"></jsp:include>



<!-- 浮框 
<div class="blue_fixed">
    <span class="btn_fixed_close"></span>
    <h2>优惠精选</h2>
    <p>还没有找到你的下一个旅行吗，我们这里有一些高性价比的</p>
    <a href="#">查看更多</a>
</div>
<div class="blue_share">
    <div class="blue_share_btn">
        <div class="blue_share_icon blue_wx"></div>
        <div class="blue_share_icon blue_mail"></div>
    </div>   
    <div class="blue_share_wx">
        <img src="img/share-wx.png" alt="">
        <p>扫描二维码即刻关注我们</p>
    </div>
    <div class="blue_share_mail">
        <p>地址: 北京市朝阳区望京园402号楼<br>东亚望京中心B座3802</p>
        <p>电话: +86-010-8476-6802</p>
        <p>邮箱: contactus@bluespiritvoyages.com</p>
    </div>
</div>
-->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/home/jquery-1.11.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/home/bootstrap.min.js"></script>
<script src="js/home/swiper.min.js"></script>
<script src="js/home/main.js"></script>
</body>
</html>