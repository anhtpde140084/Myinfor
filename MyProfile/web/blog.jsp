<%-- 
    Document   : news0102
    Created on : Feb 1, 2021, 7:53:34 AM
    Author     : PC
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/user/header.jsp" %>

<div class="col-md-8">
    <ul class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/ShowBlogs">Back</a></li>
        <li class="active"></li>
    </ul>
    <article class="article main-article">
        <header>
            <h1>${blogDetail.title}</h1>
            <ul class="details">
                <li>Posted on ${blogDetail.getCreate_date()}</li>
                <li><a>${blogDetail.tag}</a></li>
                <li>By <a href="#">Trần Phi Anh</a></li>
            </ul>
        </header>
        <div class="main">
          
            ${blogDetail.content}
            
        </div>
        
    </article>
   
</div>

<%@ include file="/includes/user/footer.jsp" %>