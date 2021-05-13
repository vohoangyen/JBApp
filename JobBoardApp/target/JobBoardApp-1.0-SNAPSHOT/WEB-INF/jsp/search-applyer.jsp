<%-- 
    Document   : search-applyer
    Created on : Apr 28, 2021, 8:54:52 AM
    Author     : Dy
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
                                    <a href="<spring:url value="/employer-info/${pageContext.request.userPrincipal.name}" />">
                                        <i class="fa fa-user"></i>
                                        Profile
                                    </a>
                                </li>
                                 <li class="aligned-left">
                                    <c:choose>
                                        <c:when test="${not empty employers}">
                                            <c:forEach items="${employers}" var="e">
                                                <a href="<spring:url value="/EmployerUpdateInfo/${e[0]}" />">
                                                    <i class="fas fa-edit"></i>
                                                    Cập nhật thông tin
                                                </a>
                                            </c:forEach>
                                        </c:when>                                        
                                        <c:when test="${empty employers}">
                                            <a href="<spring:url value="/add-info-employer/${pageContext.request.userPrincipal.name}" />">
                                                <i class="fas fa-edit"></i>
                                                Cập nhật thông tin
                                            </a>
                                        </c:when>
                                    </c:choose>
                                </li>
                                <li class="aligned-left">
                                    <a href="<spring:url value="/ListPost/${pageContext.request.userPrincipal.name}" />">
                                        <i class="fas fa-file-alt"></i>
                                        Danh sách bài post
                                    </a>
                                </li>
                                <li class="active aligned-left">
                                    <a href="<spring:url value="/search-applyer/${pageContext.request.userPrincipal.name}" />">
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
            <div class="col-xs-12 col-md-10 aligned-right" style="padding-top: 20px;">
                <form method="POST">
                    <div class="show-info">
                        <div class="widget-content" style="padding-top: 10px;">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group form-group-appler">
                                        <div class="form-group-inner inner">
                                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                                            <select class="form-control form-search" placeholder="Location">
                                                <option value="TP. Hồ Chí Minh" class="text-dark" name="option">TP. Hồ Chí Minh</option>
                                                <option value="TP. Hồ Chí Minh" class="text-dark" name="option">Hà Nội</option>
                                                <option value="TP. Hồ Chí Minh" class="text-dark" name="option">Hải Phòng</option>
                                                <option value="TP. Hồ Chí Minh" class="text-dark" name="option">Đà Nẵng</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group form-group-appler">
                                        <div class="form-group-inner inner">
                                            <i class="fas fa-dollar-sign"></i>
                                            <select class="form-control form-search">
                                                <option value="CNTT" class="text-dark" name="option">Công nghệ thông tin</option>
                                                <option value="TC-NH" class="text-dark" name="option">TC-NH</option>
                                                <option value="KT-KT" class="text-dark" name="option">KT-KT</option>
                                                <option value="QTNL" class="text-dark" name="option">QTNL</option>
                                            </select>                                    
                                        </div>
                                    </div>
                                </div>   
                                <div class="col-md-3">
                                    <div class="form-group form-group-appler">
                                        <div class="form-group-inner inner">
                                            <i class="fas fa-dollar-sign"></i>
                                            <select class="form-control form-search">
                                                <option value="Dưới 10 triệu" class="text-dark" name="option">Dưới 10 triệu</option>
                                                <option value="Từ 10 - 20 triệu" class="text-dark" name="option">Từ 10 - 20 triệu</option>
                                                <option value="Từ 20 - 30 triệu" class="text-dark" name="option">Từ 20 - 30 triệu</option>
                                                <option value="Trên 30 triệu" class="text-dark" name="option">Trên 30 triệu</option>
                                            </select>                                    
                                        </div>
                                    </div>
                                </div>  
                                <div class="col-md-1">
                                    <div class="form-group form-group-appler">
                                        <div class="form-group-inner inner">
                                            <!--<i class="fas fa-search"></i>--> 
                                            <button class="form-control btn-search-applyer">
                                                <i class="fas fa-search"></i> 
                                            </button>
                                            <!--<input type="button" class="form-control" value="Tìm kiếm">-->
                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                </form>
                <div class="search-applers" style="margin-top: 20px;">
                    <div class="row">
                        <c:forEach items="${employees}" var="e">
                            <div class="col-12 list-item">
                                <article class="apllyer-item">
                                    <div class="applyers">
                                        <div class="left-applyer">
                                            <div class="flex-middle">
                                                <div class="employers-icon">
                                                    <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                                                </div>
                                                <h2 class="employers-name">${e.lastName} ${e.firstName}</h2>
                                            </div>
                                        </div>
                                        <div class="applyer-email">
                                            <!--<i class="fas fa-envelope" aria-hidden="true"></i>-->
                                            <h2>${e.major.name}</h2>
                                        </div>
                                        <div class="employer-salary">
                                            <!--<i class="fas fa-file" aria-hidden="true"></i>-->
                                            <!--<a href="<c:url value="/resources/images/English.docx" />" download>-->
                                            <h2><fmt:formatNumber type="number" value="${e.salary}" /> VNĐ</h2>
                                            </a>                                
                                        </div>
                                        <div class="applyer-see">
                                            <a href="<spring:url value="/info-applyers/${e.id}" />" class="btn btn-see">Xem Chi tiết</a>                                
                                        </div>
                                    </div>
                                </article>
                            </div> 
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>