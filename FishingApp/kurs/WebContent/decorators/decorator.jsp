<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title>About - Fishing Website Template</title>
<sitemesh:write property='head' />
<link rel="stylesheet" href="/kurs/css/style.css"
	type="text/css">
</head>
<body>
	<div id="page">
		<div id="header">
			<ul id="login">
				<li class="first"><a href="register.html">Register</a><span>/</span>
				</li>
				<li><a href="accounts.html">My Account (Акаўнты)</a></li>
			</ul>
			<ul id="service">
				<li class="first"><a href="help.html">Help</a><span>/</span></li>
				<li><a href="contacts.html">Contact Us</a></li>
			</ul>
			<div>
				<a href="index.html" id="logo"></a>
				<div>
					<p>Shopping Cart: 0 item</p>
					<p>$ 0.00</p>
				</div>
				<ul id="navigation">
					<li><s:a action="hello">Home</s:a></li>
					<li>
						<s:url var="FishAdminUrl" namespace="/"
							action="loadFishAdmin">
						</s:url>
						<s:a href="%{FishAdminUrl}">Fish-admin</s:a></li>
					<li><a href="products.html">Products</a></li>
					<li><a href="cards.html">Gift Card</a></li>
					<li><a href="clearance.html">Clearance</a></li>
				</ul>
			</div>
		</div>
		<div id="contents">
			<sitemesh:write property='body' />
		</div>
		<div id="footer">
			<div id="footnote">
				<a href="index.html" class="logo"></a> <span>&#169; Copyright
					&#169; 2012. All rights reserved</span>
			</div>
			<div class="navigation">
				<div class="primary">
					<h3>Shop</h3>
					<ul>
						<li><a href="products.html">Products</a></li>
						<li><a href="featured.html">Featured Products</a></li>
						<li><a href="clearance.html">Clearance</a></li>
						<li><a href="cards.html">Gift Card</a></li>
					</ul>
				</div>
				<div class="secondary">
					<h3>About</h3>
					<ul>
						<li><a href="about.html">The Company</a></li>
						<li><a href="shipping.html">Shipping FAQ's</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="help.html">Help</a></li>
					</ul>
				</div>
			</div>
			<div id="connect">
				<h3>lets be friends &amp; Share us to the world</h3>
				<ul>
					<li><a href="http://freewebsitetemplates.com/go/facebook/"
						target="_blank" class="fb" title="Facebook"></a></li>
					<li><a href="http://freewebsitetemplates.com/go/twitter/"
						target="_blank" class="twitter" title="Twitter"></a></li>
					<li><a href="http://freewebsitetemplates.com/go/googleplus/"
						target="_blank" class="googleplus" title="Googleplus"></a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>