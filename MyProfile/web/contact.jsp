<%-- 
    Document   : contact
    Created on : Apr 7, 2021, 3:53:31 PM
    Author     : tranp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ include file="/includes/user/header.jsp" %>    
<section class="contact-section sections6" id="contactUs" onload="sendMail()">
    <div class="container">
        <div class="row">
            <div class="title-section padding-15">
                <h2>Contact Us</h2>
            </div>
        </div>
        <div class="row">
            <div class="contact-item padding-15">
                <div class="icon"><i class="fa fa-phone"></i></div>
                <h4>Call Us</h4>
                <p>0941404225</p>
            </div>
            <div class="contact-item padding-15">
                <div class="icon"><i class="fa fa-map-marker"></i></div>
                <h4>Address</h4>
                <p>FPT dorm - FPT University - Hoa Hai, Ngu Hanh Son - Da Nang</p>
            </div>
            <div class="contact-item padding-15">
                <div class="icon"><i class="fa fa-envelope-open"></i></div>
                <h4>Email</h4>
                <p>tranphianh1518@gmail.com</p>
            </div>
        </div>
        <div class="row">\

            <form action="SendContact" method="POST" onsubmit="sendMail()">
                <div class="contact-form padding-15">
                    <div class="row">
                        <div class="form-item padding-15 col-6">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" placeholder="Enter Name">
                            </div>
                        </div>
                        <div class="form-item padding-15 col-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="email" placeholder="Enter Email">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-item padding-15 col-8">
                            <div class="form-group">
                                <input type="text" name="subject" class="form-control" placeholder="Enter Subject">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-item padding-15 col-12">
                            <div class="form-group">
                                <textarea class="form-control" name="message" placeholder="Enter Messege"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-item padding-15 col-12">
                            <div class="form-group">
                                <button class="btn" type="submit">Send</button>

                            </div>
                            <h4>To send your information, please press SEND and wait...</h4>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<script type="text/javascript">
    function sendMail() {
        alert("OK");
    };
</script>
<%@ include file="/includes/user/footer.jsp" %>   