<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 充值 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>充值</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<!-- layui -->
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		
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

			<!-- 标题 -->
			<div id="breadcrumb">
				<span class="en">USER ADDRESS</span>
				<span class="cn">收货地址添加</span>
			</div>
			<!-- 标题 -->

			<div id="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container">
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="item.url=='../shop-address/list.jsp'?'layui-this':''">
							<a :href="'javascript:window.location.href=\''+item.url+'\''">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 添加地址表单 -->
				<div :style='{"width":"calc(100% - 350px)","padding":"0px","margin":"20px 0 0","background":"#fff"}' class="right-container">
					<form :style='{"padding":"30px 20px","boxShadow":"0px 0px 0px #eee","borderColor":"#98c6e2 #5fa6d0 #98c6e2 #5fa6d0","borderRadius":"0","flexWrap":"wrap","background":"rgba(255,255,255,.0)","borderWidth":"12px","display":"flex","width":"100%","borderStyle":"solid","justifyContent":"space-between","height":"auto"}' class="layui-form" lay-filter="myForm">
						<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","background":"none","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid"}' class="layui-form-item layui-form-text">
							<label :style='{"width":"140px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#2693b3","textAlign":"right"}' class="layui-form-label">联系人：</label>
								<input :style='{"padding":"0 10px","margin":"0","borderColor":"#d2e5fd","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"330px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" name="name" id="name" required lay-verify="required" placeholder="联系人" autocomplete="off"
								 class="layui-input">
						</div>
						<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","background":"none","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid"}' class="layui-form-item layui-form-text">
							<label :style='{"width":"140px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#2693b3","textAlign":"right"}' class="layui-form-label">手机号码：</label>
								<input :style='{"padding":"0 10px","margin":"0","borderColor":"#d2e5fd","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"330px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" name="phone" id="phone" required lay-verify="required|phone" placeholder="手机号码" autocomplete="off"
								 class="layui-input">
						</div>
						<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","background":"none","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid"}' class="layui-form-item layui-form-text">
							<label :style='{"width":"140px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#2693b3","textAlign":"right"}' class="layui-form-label">默认地址：</label>
							<div class="layui-input-block" style="width: 300px;text-align: left;margin-left: 0;">
								<input type="radio" name="isdefault" value="是" title="是" checked>
								<input type="radio" name="isdefault" value="否" title="否">
							</div>
						</div>
						<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","background":"none","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"solid"}' class="layui-form-item layui-form-text">
							<label :style='{"width":"140px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#2693b3","textAlign":"right"}' class="layui-form-label">地址：</label>
								<input :style='{"padding":"0 10px","margin":"0","borderColor":"#d2e5fd","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"330px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" name="address" id="address" required lay-verify="required" placeholder="地址" autocomplete="off"
								 class="layui-input">
						</div>
						<div :style='{"width":"100%","margin":"30px 0 20px","alignItems":"center","textAlign":"center","justifyContent":"center","display":"flex"}' class="layui-form-item">
							<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 20px 0 0","borderColor":"#fbbaba","color":"#333","minWidth":"120px","outline":"none","borderRadius":"0","background":"#f8e0e0","borderWidth":"8px","width":"auto","fontSize":"16px","lineHeight":"36px","borderStyle":"outset","height":"54px"}' class="layui-btn btn-submit" lay-submit lay-filter="*">修改</button>
							<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 10px","borderColor":"#ccc","color":"#333","minWidth":"120px","outline":"none","borderRadius":"0","background":"#eee","borderWidth":"8px","width":"auto","fontSize":"16px","lineHeight":"36px","borderStyle":"outset","height":"54px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</form>
				</div>
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
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;

			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					centerMenu: centerMenu
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 200) {
								return val.substring(0, 200).replace(/<[^>]*>/g).replace(/undefined/g, '');
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
					}
				}
			})

			// 初始化地图插件
			jquery(document).ready(function() {
			});

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var form = layui.form;

				var id = http.getParam('id');

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
				// 表单校验
				form.verify({
					phone: function(value, item) {
						if (!isMobile(value)) {
							return '请输入正确的手机号码'
						}
					},
				});

				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
					data.id = id;
					data.userid = localStorage.getItem('userid');
					console.log(data);
					http.requestJson(`address/update`, 'post', data, function(data) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.history.go(-1);
						});
					});
					return false
				});

				// 获取数据
				http.request(`address/info/${id}`, 'get', {}, function(data) {
					// 表单赋值
					form.val("myForm", data.data);
				});

			});
		</script>
	</body>
</html>
