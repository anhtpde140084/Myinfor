<%-- 
    Document   : about
    Created on : Apr 7, 2021, 11:13:46 AM
    Author     : tranp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/user/header.jsp" %>   
<section class="about-section sections2" id="About" style="font-family: Times New Roman;">
                    <div class="container">
                        <div class="row">
                            <div class="title-section">
                                <h2>About Us</h2>
                            </div>
                        </div>
                        <!--1-->
                        <div class="row">
                            <div class="about-content">
                                <div class="row">
                                    <div class="about-text">
                                        <h3>I Am  <span>Web Developer</span></h3>
                                        <p>
                                            Hi, I am Anh.  I am currently working on FPT University. Here is some of what i am able to do and the collection of my finished and ongoing works . Please feel free to explore & tell me what you think about it! Have a look at <a class="text-danger" href="">my blog</a> for more technical and life experiences.
                                            
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--2-->
                        <div class="row">
                            <div class="personal-info">
                                <div class="row">
                                    <div class="info-item">
                                        <p>Birthday: <span>${acc.getBirthday()}</span></p>
                                    </div>
                                    <div class="info-item">
                                        <p>Age: <span>${acc.getAge()}</span></p>
                                    </div>
                                    <div class="info-item">
                                        <p>Degree: <span>Bachlar</span></p>
                                    </div>
                                    <div class="info-item">
                                        <p>Country: <span>${acc.country}</span></p>
                                    </div>
                                    <div class="info-item">
                                        <p>City: <span>${acc.city}</span></p>
                                    </div>
                                    <div class="info-item">
                                        <p>Email: <span>${acc.email}</span></p>
                                    </div>
                                    <div class="info-item">
                                        <p>Youtube: <span>codeSkill</span></p>
                                    </div>
                                    <div class="info-item">
                                        <p>Facebook: <span>codeSkill</span></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="button">
                                        <a href="#" class="btn">Subscribe</a>
                                        <a href="#" class="btn">Join Us</a>
                                    </div>
                                </div>
                            </div>
                            <div class="skill">
                                <div class="row">
                                    <div class="skill-item">
                                        <h5>Java</h5>
                                        <div class="progress">
                                            <div class="progress-in" style="width: 60%;"></div>
                                            <div class="skill-perecent">60%</div>
                                        </div>
                                    </div>
                                    <div class="skill-item">
                                        <h5>C#</h5>
                                        <div class="progress">
                                            <div class="progress-in" style="width: 40%;"></div>
                                            <div class="skill-perecent">40%</div>
                                        </div>
                                    </div>
                                    <div class="skill-item">
                                        <h5>SqlServer</h5>
                                        <div class="progress">
                                            <div class="progress-in" style="width: 80%;"></div>
                                            <div class="skill-perecent">80%</div>
                                        </div>
                                    </div>
                                    <div class="skill-item">
                                        <h5>Spring, struts 2</h5>
                                        <div class="progress">
                                            <div class="progress-in" style="width: 60%;"></div>
                                            <div class="skill-perecent">60%</div>
                                        </div>
                                    </div>
                                    <div class="skill-item">
                                        <h5>JavaScript, html, css, boostrap</h5>
                                        <div class="progress">
                                            <div class="progress-in" style="width: 65%;"></div>
                                            <div class="skill-perecent">65%</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--3-->
                    </div>
                </section>
<%@ include file="/includes/user/footer.jsp" %>   