<%-- 
    Document   : weblog
    Created on : Apr 7, 2021, 3:53:22 PM
    Author     : tranp
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/includes/user/header.jsp" %>    
<head>
    <link href="${pageContext.request.contextPath}/templates/assets/load-more-button.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<section class="blog-section sections5" id="Weblog">
    <div class="container">
        <div class="row">
            <div class="title-section padding-15">
                <h2>Personal Blog</h2>
            </div>
        </div>
        <div class="row">
            <c:forEach items="${list}" var="item" varStatus="index">

                <c:if test="${index.index <=2}">
                    <div class="blog-item padding-15 blogBox moreBox">
                    </c:if>
                    <c:if test="${index.index >2}">
                        <div class="blog-item padding-15 blogBox moreBox" style="display: none;">
                        </c:if>
                        <div class="blog-item-inner">
                            <div class="blog-img">
                                <a href="${pageContext.request.contextPath}/Blog?id_blog=${item.id}">  <img src="${item.img}" alt="blog"></a>
                                <div class="blog-date">
                                    ${item.getCreate_date()
                                    }
                                </div>
                            </div>
                            <div class="blog-info">
                                <a href="${pageContext.request.contextPath}/Blog?id_blog=${item.id}">   <h4 class="blog-title">${item.title}</h4> </a>
                                <p class="blog-description">

                                </p>
                                <p class="blog-tags">Tags : <a href="#">${item.tag}</a> </p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <!--1-->
                <c:if test="${list.size() > 3}">
                <div id="loadMore" style="text-align: center">
                    <a href="#">Load More</a>
                </div>
                </c:if>
                <!--3-->
            </div>
        </div>
</section>
<script type="text/javascript">

    $(document).ready(function () {
        $(".moreBox").slice(0, 3).show();
        if ($(".blogBox:hidden").length != 0) {
            $("#loadMore").show();
        }
        $("#loadMore").on('click', function (e) {
            e.preventDefault();
            $(".moreBox:hidden").slice(0, 3).slideDown();
            if ($(".moreBox:hidden").length == 0) {
                $("#loadMore").fadeOut('slow');
            }
        });
    })
</script>
<!--End blog-section-->
<%@ include file="/includes/user/footer.jsp" %>   