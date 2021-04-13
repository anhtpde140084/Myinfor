<%-- 
    Document   : home
    Created on : Apr 9, 2021, 10:49:05 AM
    Author     : tranp
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/admin/header.jsp" %>
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">
            <h1 class="mt-4">Bảng điều khiển</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Bảng điều khiển</li>
            </ol>
            <div class="row">
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-primary text-white mb-4">
                        <div class="card-body">Thêm blog</div>
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-white stretched-link" href="BlogPost.jsp">View Details</a>
                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-warning text-white mb-4">
                        <div class="card-body">Quản lý blog</div>
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-white stretched-link" href="ShowBlogs">View Details</a>
                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="row">


            </div>
            
        </div>
    </main>

    <%@ include file="/includes/admin/footer.jsp" %>
