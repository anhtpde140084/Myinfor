<%-- 
    Document   : adminPost
    Created on : Jan 10, 2021, 4:00:38 PM
    Author     : PC
--%>

<%@ include file="/includes/admin/header.jsp" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
</head>
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">
            <h1 class="mt-4">Bảng điều khiển</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Bảng điều khiển</li>
            </ol>
            <h3>${msg}</h3>
            <form action="AddBlog" method="POST">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroup-sizing-default">Tiêu đề</span>
                    </div>
                    <input type="text" name="title" class="form-control" aria-label="Default" required aria-describedby="inputGroup-sizing-default">

                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroup-sizing-default">Ảnh tiêu đề (link ảnh)</span>
                    </div>
                    <input type="text" name="img" class="form-control" aria-label="Default" required aria-describedby="inputGroup-sizing-default">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroup-sizing-default">Thẻ tên (TAG)</span>
                    </div>
                    <input type="text" name="tag" class="form-control" required aria-label="Default" aria-describedby="inputGroup-sizing-default">
                </div>
                <textarea id="content" name="content"></textarea>
                <button type="submit"  class="btn btn-primary display-4">Đăng bài</button>
            </form>
        </div>
    </main>
    <%@ include file="/includes/admin/footer.jsp" %>
    <script
        type="text/javascript"
        src='<%=request.getContextPath()%>/templates/admin/assets/tinymce/tinymce.min.js'
        referrerpolicy="origin">
    </script>
    <script type="text/javascript">
        tinymce.init({
            selector: '#content',
            width: 1100,
            height: 500,
            plugins: [
                'advlist autolink link image lists charmap print preview hr anchor pagebreak',
                'searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking',
                'table emoticons template paste help'
            ],
            toolbar: 'undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | ' +
                    'bullist numlist outdent indent | link image | print preview media fullpage | ' +
                    'forecolor backcolor emoticons | help',
            menu: {
                favs: {title: 'My Favorites', items: 'code visualaid | searchreplace | emoticons'}
            },
            menubar: 'favs file edit view insert format tools table help',
            content_css: 'css/content.css'
        });
    </script>