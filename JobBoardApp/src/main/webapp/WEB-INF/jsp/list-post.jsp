<%-- 
    Document   : list-post
    Created on : Apr 28, 2021, 12:31:48 AM
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
                                <li class="aligned-left">
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
                                <li class="active aligned-left">
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
            <div class="col-xs-12 col-md-10 aligned-right">
                <div class="show-info">
                    <div class="widget-ifo-titles">
                        <h2>Danh sách bài post</h2>
                    </div>
                    <div class="widget-content" style="padding-top: 10px;">
                        <div class="row">
                            <div class="col-12 list-item">
                                <article class="apllyer-item">
                                    <div class="applyers">
                                        <div class="left-applyer">
                                            <div class="flex-middle">
                                                <div class="employers-icon">
                                                    <img src="<c:url value="/resources/images/e1.jpg"/>" alt="alt" class="card-img"/>
                                                </div>
                                                <h2 class="employers-name">Product Design</h2>
                                            </div>
                                        </div>
                                        <div class="employer-position">
                                            <h2>Internship</h2>
                                        </div>
                                        <div class="employer-salary">
                                            <i class="fas fa-dollar-sign" aria-hidden="true"></i>
                                            <h2>7.000.000 VNĐ/tháng</h2>
                                        </div>
                                        <div class="employer-kv">
                                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                                            <h2>TP. Hồ Chí Minh</h2>                              
                                        </div>
                                        <div class="applyer-see">                                                    
                                            <span class="btn-group">
                                                <button type="button" class="btn-update btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu btn_drop" style="z-index: 9999;">
                                                    <li class="btn-choose">
                                                        <a href="<c:url value="/list-applyer/" />" class="edit_action">
                                                            <i class="fa fa-pencil-square-o"></i>
                                                            Xem chi tiết
                                                        </a>
                                                    </li>
                                                    <li class="btn-choose">
                                                        <a href="3" class="edit_action" onclick="return confirm('Are You Sure To Delete ?')">
                                                            <i class="fa fa-trash" style="padding-right: 5px;"></i>
                                                            Xóa dữ liệu
                                                        </a>
                                                    </li>
                                                </ul>
                                            </span>
                                        </div>
                                    </div>
                                </article>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

