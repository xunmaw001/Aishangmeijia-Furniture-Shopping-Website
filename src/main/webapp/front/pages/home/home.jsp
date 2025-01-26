<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: scale(0.96);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: scale(0.96);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #5bb450;
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #5bb450;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						transform: scale(1.09);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"padding":"0","margin":"10px auto","flexWrap":"wrap","background":"none","display":"flex","width":"90%","justifyContent":"space-between"}'>
			
				

				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"0","margin":"10px auto 10px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"none","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"3"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0","margin":"0px auto 0px","borderColor":"#f6cccc","alignItems":"center","textAlign":"left","flexDirection":"initial","display":"flex","justifyContent":"flex-start","minHeight":"50px","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230106/3c1030df5b01476da876dcb77796e839.png) no-repeat left top / auto 100%,url(http://codegen.caihongy.cn/20230106/f2208a9b176f427fa196c3e89d7bf7e1.png) no-repeat right top / auto 100%,url(http://codegen.caihongy.cn/20230106/539e485aa0d94fea9f2fbd11dd4c74b6.png) repeat-x center center / auto 100%","borderWidth":"0px","width":"100%","borderStyle":"dashed"}'>
						<span :style='{"fontSize":"12px","lineHeight":"24px","color":"#666","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"margin":"0 8px 0 20px","fontSize":"16px","lineHeight":"24px","color":"#333"}'>家具商品推荐</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<!-- 样式三 -->
				    <div class="list list-3">
						<div :style='{"width":"calc(100% - 40px)","padding":"20px 0 0","background":"none","height":"auto"}' class="swiper-container" id="recommendjiajushangpin">
							<div class="swiper-wrapper">
								<div class="swiper-slide animation-box" :style='{"border":"1px solid #e6e6e6","cursor":"pointer","padding":"10px","borderRadius":"4px","background":"#fff","width":"220px","fontSize":"0","position":"relative","height":"auto"}' v-for="(item,index) in jiajushangpinRecommend" :key="index" @click="jump('../jiajushangpin/detail.jsp?id='+item.id)">
									<img :name="item.id" :style='{"border":"0","width":"100%","boxShadow":"0px 56px 36px -60px #999","borderRadius":"4px","height":"220px"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''" alt="" />
									<div :style='{"padding":"0 0px","margin":"0 auto","color":"#3d74c0","background":"none","width":"100%","fontSize":"14px","lineHeight":"32px"}'>{{item.jiajumingcheng}}</div>
									<div :style='{"padding":"0 0px","margin":"0 auto","color":"#3d74c0","background":"none","width":"100%","fontSize":"14px","lineHeight":"32px"}'>{{item.jiajuleixing}}</div>
									<div :style='{"padding":"0 0px","margin":"0 auto","color":"#3d74c0","background":"none","width":"100%","fontSize":"14px","lineHeight":"32px"}'>{{item.shiyongchanghe}}</div>
									<div :style='{"padding":"0 0px","margin":"0 auto","color":"#3d74c0","background":"none","width":"100%","fontSize":"14px","lineHeight":"32px"}'>{{item.jiajucaizhi}}</div>
								</div>
							</div>
														<!-- 如果需要导航按钮 -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
													</div>
				    </div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"0px auto 0px","borderColor":"#b5e8af","textAlign":"center","display":"inline-block","right":"20px","top":"0","background":"none","borderWidth":"0px","width":"auto","lineHeight":"50px","position":"absolute","borderStyle":"solid"}' @click="jump('../jiajushangpin/list.jsp')">
						<span :style='{"color":"#555","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#666","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->

            
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"margin":"10px auto 10px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"none","borderWidth":"0px","display":"block","width":"58%","position":"relative","borderStyle":"solid","order":"2"}'>
					<div v-if="false && 1 == 1" class="news-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"minHeight":"50px","padding":"0 20px","margin":"0 auto 20px","borderColor":"#DF8A83","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230106/3c1030df5b01476da876dcb77796e839.png) no-repeat left top / auto 100%,url(http://codegen.caihongy.cn/20230106/f2208a9b176f427fa196c3e89d7bf7e1.png) no-repeat right top / auto 100%,url(http://codegen.caihongy.cn/20230106/539e485aa0d94fea9f2fbd11dd4c74b6.png) repeat-x center center / auto 100%","flexDirection":"inherit","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"double"}'>
						<span :style='{"fontSize":"12px","lineHeight":"24px","color":"#666","display":"inline-block","order":"2"}'>HOME NEWS</span>
						<span :style='{"margin":"0 8px 0 0","fontSize":"16px","lineHeight":"24px","color":"#333","display":"inline-block"}'>爱尚美家</span>
					</div>
					
					<div v-if="false && 1 == 2" class="news-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<div :style='{"padding":"10px 20px","flexWrap":"wrap","textAlign":"left","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' v-if="newsList.length" class="list list-10">
						<div v-if="newsList.length>0" @click="jump('../news/detail.jsp?id='+newsList[0].id)" :style='{"border":"1px solid #e6e6e6","cursor":"pointer","padding":"10px","margin":"0 0px","background":"#fff","width":"48%","position":"relative","height":"auto"}' class="new10-list-item animation-box">
							<img :style='{"width":"100%","boxShadow":"0px 56px 36px -60px #999","objectFit":"cover","display":"block","height":"254px"}' :src="newsList[0].picture?baseurl+newsList[0].picture:''" alt="">
							<div :style='{"padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#3d74c0","background":"none","width":"calc(100% - 80px)","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new9-list-item-title">{{newsList[0].title}}</div>
							<div :style='{"padding":"0 10px","overflow":"hidden","color":"#666","background":"none","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"72px"}' class="new9-list-item-descript">{{newsList[0].introduction}}</div>
							<div :style='{"fontSize":"12px","lineHeight":"24px","position":"absolute","right":"10px","color":"#888","top":"270px"}' class="new9-list-item-time">{{newsList[0].addtime.split(' ')[0]}}</div>
							<div :style='{"padding":"0 10px","margin":"0 10px 10px","color":"#999","background":"#fff","display":"none","fontSize":"12px","lineHeight":"24px"}' class="new9-list-item-identification">新闻动态</div>
						</div>
						<div v-if="newsList.length>1" :style='{"margin":"0 0px","background":"none","flexDirection":"column","display":"flex","width":"48%","position":"relative","justifyContent":"space-between","height":"auto"}'>
							<div v-for="(item,index) in newsList" v-if="index<4 && index>0" :key="index" @click="jump('../news/detail.jsp?id='+item.id)" :style='{"border":"1px solid #e6e6e6","cursor":"pointer","width":"100%","position":"relative","background":"#fff","height":"120px"}' class="new10-list-item animation-box">
								<div :style='{"padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#3d74c0","background":"none","width":"calc(100% - 80px)","fontSize":"14px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new9-list-item-title">{{ item.title }}</div>
								<div :style='{"padding":"0 10px","margin":"0 auto","overflow":"hidden","color":"#666","background":"none","width":"calc(100% - 0px)","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"72px"}' class="new9-list-item-descript">{{ item.introduction }}</div>
								<div :style='{"fontSize":"12px","lineHeight":"24px","position":"absolute","right":"10px","color":"#e3aa80","top":"4px"}' class="new9-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
								<div :style='{"padding":"0 10px","fontSize":"12px","lineHeight":"24px","color":"#999","background":"#fff","display":"none"}' class="new9-list-item-identification">新闻动态</div>
							</div>
						</div>
					</div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"0px auto","borderColor":"#b5e8af","textAlign":"center","display":"inline-block","right":"20px","top":"0","background":"none","borderWidth":"0px","width":"auto","lineHeight":"50px","position":"absolute","borderStyle":"solid"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#555","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#666","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
				<!-- 关于我们 -->
				<div :style='{"padding":"0px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"10px auto 10px","borderColor":"#eee","display":"block","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"38%","position":"relative","borderStyle":"solid","height":"auto","order":"1"}'>
					<div :style='{"padding":"0 20px","margin":"0 auto 20px","borderColor":"#DF8A83","color":"#333","textAlign":"left","background":"url(http://codegen.caihongy.cn/20230106/3c1030df5b01476da876dcb77796e839.png) no-repeat left top / auto 100%,url(http://codegen.caihongy.cn/20230106/c34a6be9f73642afb1c2b3e11b43b032.png) no-repeat right top / auto 100%,url(http://codegen.caihongy.cn/20230106/539e485aa0d94fea9f2fbd11dd4c74b6.png) repeat-x center center / auto 100%","borderWidth":"0px","width":"100%","lineHeight":"50px","fontSize":"18px","borderStyle":"double","float":"left"}'>{{aboutUsDetail.title}}</div>
					<div :style='{"margin":"0 auto 20px","borderColor":"#DF8A83","color":"#999","textAlign":"center","borderWidth":"0 0 6px","display":"none","width":"50%","lineHeight":"50px","fontSize":"20px","float":"left","borderStyle":"double"}'>{{aboutUsDetail.subtitle}}</div>
					<div :style='{"width":"46%","padding":"0 0 0 10px","float":"left","flexWrap":"wrap","display":"flex","height":"auto"}'>
						<img :style='{"padding":"10px","boxShadow":"0px 0px 0px #eee","margin":"0 0px","borderColor":"#e6e6e6","objectFit":"cover","borderRadius":"0","borderWidth":"1px","background":"#fff","display":"block","width":"100%","borderStyle":"solid","height":"250px"}' :src="baseurl+aboutUsDetail.picture1">
						<img :style='{"border":"1px solid #e6e6e6","padding":"10px","margin":"20px 0 0","objectFit":"cover","background":"#fff","display":"block","width":"100%","height":"120px"}' :src="baseurl+aboutUsDetail.picture2">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl+aboutUsDetail.picture3">
					</div>
					<div :style='{"padding":"10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0px 10px 0px 0","borderColor":"#e6e6e6","color":"rgb(102, 102, 102)","textIndent":"2em","float":"right","overflow":"hidden","borderRadius":"0","background":"rgba(255,255,255,1)","borderWidth":"1px","width":"48%","lineHeight":"24px","fontSize":"14px","borderStyle":"solid","height":"392px"}' v-html="aboutUsDetail.content"></div>
					<div :style='{"top":"70px","left":"calc(0px)","background":"url(http://codegen.caihongy.cn/20230106/5d0a7d8d50bf45ee9001a5dc0520739f.png) no-repeat center center / 100% 100%","display":"none","width":"48%","position":"absolute","height":"250px","zIndex":"9"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
			

			<!-- 图文列表 -->


			


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {


                    // 推荐数据
					jiajushangpinRecommend: [],





                    aboutUsDetail:{},
                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '520px',
								anim: 'fade',
								autoplay: 'true',
								interval: '6000',
								arrow: 'none',
								indicator: 'inside'
							});
						})
					}
				});

                http.request(`aboutus/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.aboutUsDetail = res.data;
                    }
                });

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 4,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 10;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "jiajushangpin/autoSort";
				if(localStorage.getItem('userid')!=null) {
					autoSortUrl = "jiajushangpin/autoSort2";
				}
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 12,
				}, function(res) {
					vue.jiajushangpinRecommend = res.data.list
					
					let flag = 3;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":600,"spaceBetween":20,"autoplay":{"delay":"6000","disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendjiajushangpin', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swiperjiajushangpin', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				


				
			});
		</script>
	</body>
</html>
