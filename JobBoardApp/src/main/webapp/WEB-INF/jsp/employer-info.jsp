<%-- 
    Document   : employer-info
    Created on : Apr 27, 2021, 5:42:14 PM
    Author     : Dy
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="<c:url value="/resources/css/employee-update-info.css"/>" rel="stylesheet"/>

<div class="container-infomation" style="padding-top: 70px;">
    <div class="site-main-content" style="min-height: 80vh;">
        <div class="row content-info">
            <div class="col-xs-12 col-md-2">
                <div class="sitebar-left">
                    <div class="widget-infomation">
                        <div class="navbar-collapse no-padding">
                            <ul class="menu_short_profile">
                                <li class="active aligned-left">
                                    <a href="<c:url value="/employer-info/"/>">
                                        <i class="fa fa-user"></i>
                                        Profile
                                    </a>
                                </li>
                                <li class="aligned-left">
                                    <a href="<c:url value="/employer-update-info/"/>">
                                        <i class="fas fa-edit"></i>
                                        Cập nhật thông tin
                                    </a>
                                </li>
                                <li class="aligned-left">
                                    <a href="<c:url value="/list-post/"/>">
                                        <i class="fas fa-file-alt"></i>
                                        Danh sách bài post
                                    </a>
                                </li>
                                <li class="aligned-left">
                                    <a href="<c:url value="/search-applyer/"/>">
                                        <i class="fas fa-search"></i>
                                        Tìm kiếm ứng viên
                                    </a>
                                </li>
                                <li class="aligned-left">
                                    <a href="<c:url value="/logout"/>">
                                        <i class="fa fa-sign-out"></i>
                                        Đăng xuất
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-9 aligned-right">
                <div class="show-info">
                    <div class="widget-ifo-titles">
                        <h2>Profile</h2>
                    </div>
                    <div class="widget-infomation-contents">
                        <form method="POST">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12 md-clearfix sm-clearfix fullname">
                                    <div class="cmb-th">
                                        <label>Logo công ty/doanh nghiệp</label>
                                    </div>
                                    <div class="cmb-td image-logo">
                                        <img src="<c:url value="/resources/images/e1.jpg"/>" alt="">
                                        <!--<input type="text" class="form-control" value="Redesign Co" readonly="true">-->
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                    <div class="cmb-th">
                                        <label>Tên công ty/doanh nghiệp</label>
                                    </div>
                                    <div class="cmb-td">
                                        <input type="text" class="form-control" value="Redesign Co" readonly="true">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                    <div class="cmb-th">
                                        <label>Email</label>
                                    </div>
                                    <div class="cmb-td">
                                        <input type="email" class="form-control" value="abc@gmail.com" readonly="true">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                    <div class="cmb-th">
                                        <label>Số điện thoại</label>
                                    </div>
                                    <div class="cmb-td">
                                        <input type="number" class="form-control" value="0987654321" readonly="true">
                                    </div>
                                </div> 
                                <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                    <div class="cmb-th">
                                        <label>Quy mô</label>
                                    </div>
                                    <div class="cmb-td">
                                        <input type="text" class="form-control" value="Từ 1-100 người" readonly="true">
                                    </div>
                                </div>  
                                <div class="col-md-12 col-sm-12 col-xs-12 md-clearfix sm-clearfix fullname">
                                    <div class="cmb-th">
                                        <label>Địa chỉ</label>
                                    </div>
                                    <div class="cmb-td">
                                        <input type="text" class="form-control" value="123 Nguyễn Kiệm, P3, Quận Gò Vấp" readonly="true">
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12 md-clearfix sm-clearfix fullname">
                                    <div class="cmb-th">
                                        <label>Mô tả công ty/ doanh nghiệp</label>
                                    </div>
                                    <div class="cmb-td">
                                        <textarea class="form-control" value="123 Nguyễn Kiệm, P3, Quận Gò Vấp" rows="10" readonly="true">
Far much that one rank beheld bluebird after outside ignobly allegedly
more when oh arrogantly vehement irresistibly fussy penguin insect
additionally wow absolutely crud meretriciously hastily dalmatian a
glowered inset one echidna cassowary some parrot and much as goodness
some froze the sullen much connected bat wonderfully on instantaneously
eel valiantly petted this along across highhandedly much.</textarea>
                                    </div>
                                </div>                           
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

