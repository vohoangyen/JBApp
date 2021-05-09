<%-- 
    Document   : employee-info
    Created on : Apr 28, 2021, 11:31:44 AM
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
                                    <a href="<c:url value="/employee-info/"/>">
                                        <i class="fa fa-user"></i>
                                        Profile
                                    </a>
                                </li>
                                <li class="aligned-left">
                                    <a href="<c:url value="/employee-update-info/"/>">
                                        <i class="fas fa-edit"></i>
                                        Cập nhật thông tin
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
                                    <div class="cmb-td image-icon">
                                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>                                       
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                    <div class="cmb-th">
                                        <label>Họ</label>
                                    </div>
                                    <div class="cmb-td">
                                        <input type="text" class="form-control" value="Võ Hoàng" readonly="true">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                    <div class="cmb-th">
                                        <label>Tên</label>
                                    </div>
                                    <div class="cmb-td">
                                        <input type="text" class="form-control" value="Yến" readonly="true">
                                    </div>
                                </div> 
                                <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                    <div class="cmb-th">
                                        <label>Năm sinh</label>
                                    </div>
                                    <div class="cmb-td">
                                        <input type="text" class="form-control" value="01/01/1999" readonly="true">
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
                                        <label>File CV</label>
                                    </div>
                                    <div class="cmb-td-cv">
                                        <div class="widget-cv">
                                            <a href="<c:url value="/resources/images/English.docx" />" download>vohoangyen.docx</a>
                                        </div>                                       
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
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
