<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배드민턴 코트예약 관리프로그램</title>
<style>
*{margin:0;padding: 0;}
a{text-decoration: none;color: inherit;}
.wrap{width: 1200px;margin: 0 auto;}
.header{width: 100%;height: 100px;background: #00F;text-align: center;line-height: 100px;color:#FFF;}
.nav{width: 100%;height: 50px;background: #77F;line-height: 50px;color:#FFF;}
.nav a {margin-left: 33px;}
.section{width: 100%;height: 444px;background: #EEF;}
.footer{width: 100%;height: 50px;background: #00F;line-height: 50px;color:#FFF;}
h2,h3{text-align: center;}
h2{padding: 20px;}
p{padding:15px;}
table{width:60%}
table,th,td{text-align: center;border: 1px solid;margin: 0 auto;}
.book > tr > td {text-align: left;height: 50px;}
.list{height:200px;}
</style>
</head>
<body>

<div class="wrap">
<div class="header"><h1>배드민턴 코드예약 관리프로그램</h1></div>
<div class="nav">
<a href="booking.jsp">코트예약</a><a href="list.jsp">코트예약조회</a>
<a href="days.jsp">사용일수조회</a><a href="index.jsp">홈으로</a>
</div>
<div class="section">