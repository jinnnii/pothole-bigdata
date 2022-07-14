<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="sec" uri="http://www.springframework.org/tags"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%-- <sec:authorize access="isAuthenticated()">
        	<sec:authentication property="principal" var="principal"/>
        </sec:authorize> --%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />

        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
    
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        />
        <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="/css/root.css" />
    </head>
    <body>
        <header>
            <nav>
                <a href="/home">ABOUT</a>
                <a href="/maps">MAPS</a>
                <a href="/news/list">NEWS</a>
                <a href="/report">REPORT</a>
            </nav>
        </header>