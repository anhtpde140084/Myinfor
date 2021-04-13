<%-- 
    Document   : ShowBlogAdmin
    Created on : Feb 20, 2021, 10:05:08 AM
    Author     : tranp
--%>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/admin/header.jsp" %>

<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">
            <h1 class="mt-4">Tables</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="home.jsp">Dashboard</a></li>
                <li class="breadcrumb-item active">Tables</li>
            </ol>
            <div class="card mb-4">
                <div class="card-body">
                    Dưới đây là dữ liệu về các bài đăng.
                    .
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table mr-1"></i>
                    Bảng tài khoản
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>Tiêu đề</th>
                                    <th>Người đăng</th>
                                    <th>Ngày đăng</th>
                                    <th>Số người xem</th>
                                    <th>Xóa</th>
                                    <th>Chỉnh sửa</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Tiêu đề</th>
                                    <th>Người đăng</th>
                                    <th>Ngày đăng</th>
                                    <th>Số người xem</th>
                                    <th>Xóa</th>
                                    <th>Chỉnh sửa</th>
                                </tr>
                            </tfoot>
                            <tbody>
                            <c:forEach items="${list}" var="item">
                                <tr>
                                    <td>${item.title}</td>
                                    <td>Phi Anh</td>
                                    <td>${item.create_date}</td>
                                    <td>${item.view}</td>
                                    <td><a onclick="return confirm('Bạn có chắc chắn muốn xóa?')" href="DeleteBlog?id_blog=${item.id}"><i class="far fa-trash-alt"></i></a></td>
                                    <td><a href="displayBlog?id_blog=${item.id}"><i class="fas fa-edit"></i></a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <%@ include file="/includes/admin/footer.jsp" %>