<%-- 
    Document   : header
    Created on : Apr 7, 2021, 11:11:21 AM
    Author     : tranp
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css"> -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/assets/font-awesome/css/font-awesome.css">
        <script src="${pageContext.request.contextPath}/templates/assets/cdnjs/jquery.slim.min.js"></script>
        <script src="${pageContext.request.contextPath}/templates/assets/popper/javascript/popper.js"></script>
        <!-- <script src="assets/bootstrap/js/bootstrap.js"></script> -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templates/assets/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />

        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/assets/Blog/scripts/bootstrap/bootstrap.min.css">
        <!-- IonIcons -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/assets/Blog/scripts/ionicons/css/ionicons.min.css">
        <!-- Toast -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/assets/Blog/scripts/toast/jquery.toast.min.css">
        <!-- OwlCarousel -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/assets/Blog/scripts/owlcarousel/dist/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/assets/Blog/scripts/owlcarousel/dist/assets/owl.theme.default.min.css">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/assets/Blog/scripts/magnific-popup/dist/magnific-popup.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/assets/Blog/scripts/sweetalert/dist/sweetalert.css">
        <!-- Custom style -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/assets/Blog/css/style.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/assets/Blog/css/skins/all.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/assets/Blog/css/demo.css">
    </head>
    <body>
        <div class="main-container">
            <!--Start Of Side Bar-->
            <div class="sidebar">
                <div class="logo">
                    <a href="#">Phi Anh</a>
                </div>
                <ul class="nav">
                    <li id="home"><a href="${pageContext.request.contextPath}/home.jsp"><i class="fa fa-home"></i><span id="c">Home</span></a></li>
                    <li id="about"><a href="${pageContext.request.contextPath}/AboutUs"><i class="fa fa-user"></i>About</a></li>
                    <li id="weblog"><a href="${pageContext.request.contextPath}/ShowBlogs"><i class="fa fa-envelope"></i>Weblog</a></li>
                    <li id="contactus"><a href="${pageContext.request.contextPath}/contact.jsp"><i class="fa fa-phone"></i>Contact</a></li>
                </ul>
            </div>
            <!--End Of Side Bar-->
            <!--Start Of Main Content-->
            <div class="main-content" id="content">