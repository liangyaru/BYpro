<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="e"%>
<e:set var="erp" value="${pageContext.request.contextPath}"></e:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>弹窗-客户管理</title>

<style>
html,body,div,span,ul,li,h1,h2,h3,h4,p,a,img,input,form{margin:0;padding:0;border:0;list-style:none;outline:0;}
div,td,ul,li,dl,dt,dd,h2,h3,h4{list-style:none;margin:0;padding:0;}
div{display:block;}
body{font-size:12px;font-family:"微软雅黑", "宋体", Arial;color:#666;}
li{display:list-item;text-align:-webkit-match-praent;}
img{vertical-align:middle;}
em{font-style:normal;color:#fff;}
input, textarea, select, button { font-family: inherit; font-size: 100%; outline:0;}
a img{border:0}
body{color:#333;font:12px "微软雅黑";}
ul, ol, li{list-style-type:none;vertical-align:0}
a{outline-style:none;color:#535353;text-decoration:none;cursor:pointer}
a:hover{text-decoration:none;}
.clear{height:0;overflow:hidden;clear:both}
i,s{text-decoration:none;font-style:normal;}



.formoverlay{cursor:default;width:1419px;height:949px;z-index:5;opacity:0.5;background:#999;position:absolute;left:0;top:0;width:100%;height:100%;display: block;}
.formborder{border:1px solid #476f9a;}
.formcap{color:#fff;background:#476f9a;}
td{font-size:12px;line-height:18px;}
.form-cap-label{padding:3px 0 0 4px;height:30px;cursor:default;}
.form-cap-txt{font-size:14px;text-indent:5px;letter-spacing:1px;}
.formcap-btn{padding-right:5px;}
.formcap-btn a img{width:15px;height:15px;}

.layoutitem{width:840px;border:1px solid #ddd;margin:15px  auto;}
.layout-xx{padding:8px;}
.layout-xx li{height:40px;line-height:40px;margin-bottom:5px;display:block;overflow:hidden;}
.item-input{float:left;overflow:hidden;display:inline-block;width:50%;}
.item-label{width:68px;line-height:40px;display:inline-block;text-align:right;}
.layoutitemcon{width:235px;background:#fff;height:24px;line-height:24px;border:1px solid #c9c9c9;text-indent:5px;margin-left:8px;}
.layout-sele{width:110px;background:#fff;height:24px;line-height:24px;border:1px solid #c9c9c9;text-align:center;margin-left:8px;}
.layout-input{width:200px;border:1px solid #c9c9c9;height:24px;line-height:24px;margin-left:8px;text-indent:5px;}
.item-input1{overflow:hidden;display:inline-block;width:100%;float:left;}
.layout-bz{width:687px;height:24px;line-height:24px;border:1px solid #c9c9c9;background:#fff;margin-left:8px;text-indent:5px;}
.lab{text-indent:5px;}
.item-op{width:235px;height:24px;margin-left:8px;border:1px solid #ddd;}
.item-label i{color:#ff0303;font-size:14px;line-height:24px;padding-right:5px;}
.tc-kh{width:50px;}
.kh{width:70%;}
.item-ts{margin-top:15px;}
.layoutitem-add{float:right;padding-right:15px;}
.layoutitem-add a{width:45px;height:24px;line-height:24px;margin:12px 8px ;display:inline-block;padding:2px 3px;}
.add{background:#ff0303;color:#fff;border-radius:3px;text-align:center;}
.bc{background:#f94913;border-radius:3px;text-align:center;color:#fff;}
.tc{background:#333;border-radius:3px;text-align:center;color:#fff;}
.gridbar{border:1px solid #ddd;width:100%;clear:both;}
.gridbar input{padding:1px 3px 1px 3px; margin:0px; border:none;}
.gridbar th{height:34px;line-height:34px;border-bottom:1px solid #ddd;text-indent:11px;text-align:left;background:#f2f2f2}
.gridbar td{line-height:35px;text-indent:11px;border-right:1px dotted #ddd;text-align:left;}
</style>
</head>
<body>
	<div class="formoverlay"></div>
	<table cellpadding="0" cellspacing="0" border="0" class="formborder"
		style="z-index: 99; position: absolute; left: 500px; top: 150px; width: 880px; display: block;">
		<tbody>
			<tr>
				<td align="left" valign="top"
					style="width: 880px; height: auto; background: #fff;">
					<div class="formcontentsize" style="width: auto; height: auto;">
						<!--仓库基本信息   开始-->
						<div class="layoutitem">
							<div class="layout-xx">
								<ul>
									<li>
										<div class="item-input">
											<label class="item-label"><i>*</i>客户编号</label> <input
												type="text" class="layoutitemcon" maxlength="50">
										</div>
										<div class="item-input">
											<label class="item-label"><i>*</i>客户名称</label> <input
												type="text" class="layoutitemcon" maxlength="50">
										</div>
									</li>
									<li>
										<div class="item-input">
											<label class="item-label">客户类型</label> <input type="text"
												class="layoutitemcon" maxlength="50">
										</div>
										<div class="item-input">
											<label class="item-label">客户等级</label> <select
												class="item-op">
												<option>VIP会员</option>
												<option>黄钻会员</option>
												<option>普通会员</option>
												<option>折扣等级一</option>
											</select>
										</div>
									</li>
									<li>
										<div class="item-input">
											<label class="item-label"> 期初应收款</label> <input type="text"
												class="layoutitemcon" maxlength="50">
										</div>
										<div class="item-input">
											<label class="item-label">期初预收款</label> <input type="text"
												class="layoutitemcon" maxlength="50">
										</div>
									</li>
									<li>
										<div class="item-input">
											<label class="item-label">开户银行</label> <input type="text"
												class="layoutitemcon" maxlength="50">
										</div>
										<div class="item-input">
											<label class="item-label">银行账号</label> <input type="text"
												class="layoutitemcon" maxlength="50">
										</div>
									</li>
									<li>
										<div class="item-input">
											<label class="item-label">销售人员</label> <input type="text"
												class="layoutitemcon" maxlength="50">
										</div>

									</li>
								</ul>
							</div>
						</div>
						<!--仓库基本信息   结束-->
						<!--联系人信息   开始-->

					</div>
				</td>
			</tr>

			<tr>
				<td align="left" valign="top"
					style="width: 880px; height: auto; background: #fff;">
					<div class="formcontentsize" style="width: auto; height: auto;">
						<!--仓库基本信息   开始-->
						<div class="layoutitem">
							<form method="post">
								<table class="gridbar bar" border="0" cellpadding="0"
									cellspacing="0">
									<thead>
										<tr>
											<th>联系人</th>
											<th>手机</th>
											<th>座机</th>
											<th>QQ/微信/Email</th>
											<th>联系地址</th>
											<th>首要联系人</th>
											<th>身份证号</th>

										</tr>
										<tr>
											<td><input type="text" class="cj-bf kh"></td>
											<td><input type="text" class="cj-bf kh"></td>
											<td><input type="text" class="cj-bf kh"></td>
											<td><input type="text" class="cj-bf kh"></td>
											<td><input type="text" class="cj-bf kh"></td>
											<td><input type="text" class="cj-bf kh"></td>
											<td><input type="text" class="cj-bf kh"></td>
										</tr>
									</thead>
								</table>
							</form>
						</div>
						<!--仓库基本信息   结束-->
						<!--联系人信息   开始-->
						<div class="layoutitem-add">
							<a href="${erp }/#" class="bc">保存</a> <a href="${erp }/#" class="tc">退出</a>
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	<!--弹窗 仓库管理开始-->
</body>
</html>