<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 家具商品 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>家具商品</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form .layui-form-item .layui-form-select .layui-input {
						border-radius: 4px;
						padding: 0 20px 0 10px;
						margin: 0;
						color: #333;
						width: 120px;
						font-size: 14px;
						border-color: #98c6e2 #5fa6d0 #98c6e2 #5fa6d0;
						border-width: 8px 8px 8px 8px;
						line-height: 40px;
						border-style: solid;
						height: 48px;
					}
		
		/* lists */
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
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			
			<div id="breadcrumb">
				<span class="en">DATA SHOW</span>
				<span class="cn">家具商品展示</span>
			</div>

			<!-- 图文列表 -->
			<div class="recommend" :style='{"margin":"10px auto","flexWrap":"wrap","background":"none","display":"flex","width":"90%","position":"relative","justifyContent":"space-between"}'>
				<div class="category-1" :style='{"border":"0px solid #bdefb6","padding":"20px 0px 20px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","height":"auto"}'>
					<div class="category-search" :index="-1" :style='swiperIndex == -1 ? {"cursor":"pointer","margin":"0 20px 20px 0","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#333","borderRadius":"0px","textAlign":"center","background":"#fff","borderWidth":"10px","width":"auto","lineHeight":"48px","fontSize":"16px","borderStyle":"outset"} : {"cursor":"pointer","padding":"0 10px","margin":"0 20px 20px 0","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#666","textAlign":"center","minWidth":"120px","borderRadius":"0px","background":"#fff","borderWidth":"10px","width":"auto","lineHeight":"48px","fontSize":"16px","borderStyle":"inset","height":"68px"}'>全部</div>
					<div class="category-search" :index="index" :style='swiperIndex == index ? {"cursor":"pointer","margin":"0 20px 20px 0","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#333","borderRadius":"0px","textAlign":"center","background":"#fff","borderWidth":"10px","width":"auto","lineHeight":"48px","fontSize":"16px","borderStyle":"outset"} : {"cursor":"pointer","padding":"0 10px","margin":"0 20px 20px 0","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#666","textAlign":"center","minWidth":"120px","borderRadius":"0px","background":"#fff","borderWidth":"10px","width":"auto","lineHeight":"48px","fontSize":"16px","borderStyle":"inset","height":"68px"}' v-for="(item,index) in categoryList" :key="index">
						{{categoryList[index]}}
					</div>
				</div>

					
				<form class="layui-form filter" :style='{"padding":"10px 10px 0","margin":"0 0 10px","alignItems":"center","flexWrap":"wrap","background":"none","display":"flex","width":"100%","height":"auto"}'>

					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>家具名称</div>
						<input type="text" :style='{"padding":"0 10px","margin":"0","outline":"none","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","color":"#333","borderRadius":"4px","borderWidth":"8px","width":"140px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"48px"}' name="jiajumingcheng" id="jiajumingcheng" placeholder="家具名称" autocomplete="off" class="layui-input">
					</div>

					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 8px 0 4px","borderColor":"#fbbaba","color":"#333","outline":"none","borderRadius":"4px","background":"#fff","borderWidth":"8px","width":"auto","fontSize":"14px","lineHeight":"36px","borderStyle":"outset","height":"48px"}' id="btn-search" type="button" class="layui-btn layui-btn-normal">
						<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon layui-icon-search"></i>搜索
					</button>
					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 4px 0 0","borderColor":"#ffc766","color":"#333","outline":"none","borderRadius":"4px","background":"#fff","borderWidth":"8px","width":"auto","fontSize":"14px","lineHeight":"36px","borderStyle":"outset","height":"48px"}' v-if="isAuth('jiajushangpin','新增')" @click="jump('../jiajushangpin/add.jsp')" type="button" class="layui-btn btn-theme">
						<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe654;</i>添加
					</button>
				</form>
						
				<div :style='{"width":"100%","margin":"20px 0 10px","minWidth":"1050px","background":"none","flex":"1","order":"3"}' class="lists">
					<!-- 样式一 -->
					<div :style='{"padding":"0px","margin":"0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-1">
						<div :style='{"border":"1px solid #e6e6e6","padding":"10px","margin":"0 0 20px","flexWrap":"wrap","background":"rgba(255,255,255,.8)","display":"flex","width":"23.5%","position":"relative","justifyContent":"space-between","height":"auto"}' @click="jump('../jiajushangpin/detail.jsp?id='+item.id)" v-for="(item,index) in dataList" :key="index" class="list-item animation-box">
							<img :style='{"cursor":"pointer","border":"0px inset #98c6e2","padding":"0px","boxShadow":"0px 56px 36px -60px #999","objectFit":"cover","borderRadius":"4px","display":"block","width":"100%","height":"275px"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''">
							<div v-if="item.price" :style='{"padding":"4px 10px","color":"red","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"14px","order":"2"}' class="price">￥{{Number(item.price).toFixed(2)}}</div>
							<div v-if="item.vipprice&&item.vipprice>0" :style='{"padding":"4px 10px","color":"red","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"14px","order":"2"}' class="price">￥{{Number(item.vipprice).toFixed(2)}} 会员价</div>
							<div v-if="item.jf" :style='{"padding":"4px 10px","color":"red","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"14px","order":"2"}' class="price">{{Number(item.jf).toFixed(0)}}积分</div>
							<div :style='{"cursor":"pointer","padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#3d74c0","textAlign":"center","display":"inline-block","width":"100%","lineHeight":"30px","fontSize":"14px","textOverflow":"ellipsis"}' class="name">{{item.jiajumingcheng}}</div>
							<div :style='{"cursor":"pointer","padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#3d74c0","textAlign":"center","display":"inline-block","width":"100%","lineHeight":"30px","fontSize":"14px","textOverflow":"ellipsis"}' class="name">{{item.jiajuleixing}}</div>
							<div :style='{"cursor":"pointer","padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#3d74c0","textAlign":"center","display":"inline-block","width":"100%","lineHeight":"30px","fontSize":"14px","textOverflow":"ellipsis"}' class="name">{{item.shiyongchanghe}}</div>
							<div :style='{"cursor":"pointer","padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#3d74c0","textAlign":"center","display":"inline-block","width":"100%","lineHeight":"30px","fontSize":"14px","textOverflow":"ellipsis"}' class="name">{{item.jiajucaizhi}}</div>
						</div>
					</div>
					
				</div>
				
				<!-- 热门信息 -->
				<div v-if="1 == 1 && true" class="hot" :style='{"width":"200px","margin":"20px 0 0 20px","background":"none","height":"auto","order":"4"}'>
				  <div :style='{"borderColor":"#98c6e2","color":"#fff","textAlign":"center","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 80%, rgba(48,134,185,1) 100%)","borderWidth":"8px","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"inset"}'>热门信息</div>
				  <div :style='{"width":"100%","padding":"10px 0 5px","background":"none","height":"auto"}'>
				    <div v-for="item in hotList" :key="item" :style='{"cursor":"pointer","border":"1px solid #e6e6e6","padding":"10px","margin":"0 0 20px","background":"#fff","width":"100%","height":"auto"}' @click="jump('../jiajushangpin/detail.jsp?id='+item.id)">
				      <img :style='{"width":"100%","objectFit":"cover","display":"block","height":"150px"}' :src="item.tupian?(baseurl+item.tupian.split(',')[0]):''" alt="">
				      <div :style='{"padding":"4px 5px 0","lineHeight":"24px","fontSize":"14px","color":"#3d74c0"}'>{{item.jiajumingcheng}}</div>
				      <div :style='{"padding":"4px 5px 0","lineHeight":"24px","fontSize":"14px","color":"#3d74c0"}'>{{item.jiajuleixing}}</div>
				      <div :style='{"padding":"4px 5px 0","lineHeight":"24px","fontSize":"14px","color":"#3d74c0"}'>{{item.shiyongchanghe}}</div>
				      <div :style='{"padding":"4px 5px 0","lineHeight":"24px","fontSize":"14px","color":"#3d74c0"}'>{{item.jiajucaizhi}}</div>
				      <!--<div :style='{"padding":"0 5px","lineHeight":"12px","fontSize":"12px","color":"#999","textAlign":"right"}'>{{item.price}}</div>-->
				    </div>
				  </div>
				</div>
				<div v-if="1 == 2 && true" class="hot" :style='{"width":"100%","margin":"20px 0 0","background":"none","height":"auto","order":"4"}'>
				  <div :style='{"padding":"0 20px","margin":"0 auto","color":"#fff","textAlign":"left","background":"#666","width":"100%","lineHeight":"44px","fontSize":"16px"}'>热门信息</div>
				  <div :style='{"width":"100%","padding":"20px 0px","background":"none","justifyContent":"space-between","display":"flex","height":"auto"}'>
				    <div v-for="item in hotList" :key="item" :style='{"cursor":"pointer","padding":"10px","boxShadow":"inset 0px 0px 56px 0px #eee","borderColor":"#eee","borderRadius":"10% 5%","background":"rgba(255,255,255,.6)","borderWidth":"1px","width":"23%","borderStyle":"solid","height":"auto"}' @click="jump('../jiajushangpin/detail.jsp?id='+item.id)">
				      <img :style='{"padding":"0px","borderColor":"#c7eec2","objectFit":"cover","borderRadius":"10% 5%","borderWidth":"0px","background":"#fff","display":"block","width":"100%","borderStyle":"solid","height":"250px"}' :src="item.tupian?(baseurl+item.tupian.split(',')[0]):''" alt="">
				      <div :style='{"padding":"0 10px","borderColor":"#c7eec2","margin":"8px 0 8px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","borderWidth":"0px 0px","lineHeight":"32px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"solid"}'>{{item.jiajumingcheng}}</div>
				      <div :style='{"padding":"0 10px","borderColor":"#c7eec2","margin":"8px 0 8px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","borderWidth":"0px 0px","lineHeight":"32px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"solid"}'>{{item.jiajuleixing}}</div>
				      <div :style='{"padding":"0 10px","borderColor":"#c7eec2","margin":"8px 0 8px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","borderWidth":"0px 0px","lineHeight":"32px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"solid"}'>{{item.shiyongchanghe}}</div>
				      <div :style='{"padding":"0 10px","borderColor":"#c7eec2","margin":"8px 0 8px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","borderWidth":"0px 0px","lineHeight":"32px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"solid"}'>{{item.jiajucaizhi}}</div>
				      <!-- <div :style='{"padding":"0 10px","margin":"4px 0 0","lineHeight":"24px","fontSize":"14px","color":"#999","textAlign":"right"}'>{{item.price}}</div> -->
				    </div>
				  </div>
				</div>
				
				<div class="pager" id="pager"></div>
				
			</div>
		</div>


		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					categoryList: [],

				        jiajuleixingOptions: [],
					baseurl: '',
                    hotList: [],
					dataList: []
				},
				methods: {
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['form', 'layer', 'element', 'carousel', 'laypage', 'http', 'jquery','laydate', 'slider'], function() {
				var form = layui.form;
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;
				var laydate = layui.laydate;
                var slider = layui.slider;
				var limit = 16;
				vue.baseurl = http.baseurl;
				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						let swiperList = [];
						res.data.list.forEach(element => {
						  if (element.value != null) {
						    swiperList.push({
						      img: http.baseurl+element.value
						    });
						  }
						});
						vue.swiperList = swiperList;
						
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
        			http.request(`option/jiajufenlei/leixing`,'get',{},(res)=>{
                			vue.jiajuleixingOptions = res.data
							vue.$nextTick(() => {form.render()})
        			});

				//类型查询
			      categoryList();
				//类型搜索
			      $(document).on("click", ".category-search", function(e){
					  vue.swiperIndex = $(this).attr('index')
				  pageList(e.target.innerText);
			      });

			      function categoryList() {
				  // 获取列表数据
				  http.request('option/jiajufenlei/leixing', 'get', {}, function(res) {
				    vue.categoryList = res.data
				  })

				}
			      var vCategory = '';


				// 分页列表
				pageList();

				// 搜索按钮
				jquery('#btn-search').click(function(e) {
					pageList();
				});
                getHotList();

                function getHotList() {
                    var autoSortUrl = "jiajushangpin/autoSort";
                    if(localStorage.getItem('Token')) {
                        autoSortUrl = "jiajushangpin/autoSort2";
                    }
                    var param = {
                        page: 1,
                        limit: 4
                    }

                    // 获取列表数据
                    http.request(autoSortUrl, 'get', param, function(res) {
                        vue.hotList = res.data.list
                    })
                }

				function pageList(category) {
					var param = {
						page: 1,
						limit: limit
					}
				if(category!=null && category!='全部') {
					vCategory = category;
					if (jquery('#jiajumingcheng').val()) {
						param['jiajumingcheng'] = '';
					}
				}
				if(vCategory!='' && category!='全部') {
					param['jiajuleixing'] = category;
				}

			        if (jquery('#jiajumingcheng').val()) {
			          param['jiajumingcheng'] = jquery('#jiajumingcheng').val() ? '%' + jquery('#jiajumingcheng').val() + '%' : '';
			        }


				if (jquery('#jiajumingcheng').val()) {
					param['jiajumingcheng'] = jquery('#jiajumingcheng').val() ? '%' + jquery('#jiajumingcheng').val() + '%' : '';
				}  

					// 获取列表数据
					http.request('jiajushangpin/list', 'get', param, function(res) {
						vue.dataList = res.data.list
						// 分页
						laypage.render({
							elem: 'pager',
							count: res.data.total,
							limit: limit,
							groups: 5,
							layout: ["count","prev","page","next","skip"],
							prev: '上一页',
							next: '下一页',
							jump: function(obj, first) {
								param.page = obj.curr;
								//首次不执行
								if (!first) {
									http.request('jiajushangpin/list', 'get', param, function(res) {
										vue.dataList = res.data.list
									})
								}
							}
						});
					})
				}
			});
		</script>
	</body>
</html>
