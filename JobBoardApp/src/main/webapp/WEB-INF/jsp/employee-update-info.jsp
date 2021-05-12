<%-- 
    Document   : employee-info
    Created on : Apr 25, 2021, 10:47:34 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<link href="<c:url value="/resources/css/employee-update-info.css"/>" rel="stylesheet"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
      crossorigin="anonymous">


<div class="container-infomation" style="padding-top: 70px;">
    <div class="site-main-content" style="min-height: 80vh;">
        <div class="row content-info" style="margin: 0;">
            <div class="col-xs-12 col-md-2">
                <div class="sitebar-left">
                    <div class="widget-infomation">
                        <div class="navbar-collapse no-padding">
                            <ul class="menu_short_profile">
                                <li class="aligned-left">
                                    <a href="<spring:url value="/EmployeeInfo/${pageContext.request.userPrincipal.name}" />">
                                        <i class="fa fa-user"></i>
                                        Profile
                                    </a>
                                </li>
                                <li class="active aligned-left">
                                    <!--<a href="<c:url value="/employee-update-info/"/>">-->
                                    <a href="<spring:url value="/EmployeeUpdateInfo/${pageContext.request.userPrincipal.name}" />">
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
                        <h2>Cập nhật thông tin</h2>
                    </div>
                    <div class="widget-infomation-contents">
                        <c:choose>
                            <c:when test="${not empty employees}">
                                <form:form method="post">
                                    <c:forEach items="${employees}" var="e">   
                                        <div class=row form-group">
                                            <div class="form-group col-md-6">
                                                <label>Họ</label>
                                                <input class="form-control border border-warning " 
                                                       value="${e[2]}"
                                                       type="text" maxlength="25" 
                                                       required="true"
                                                       oninvalid="this.setCustomValidity('Vui lòng nhập họ của bạn!')"
                                                       oninput="setCustomValidity('')"/>
                                            </div>
                                            <div class="form-group col-md-6" >
                                                <label>Tên</label>
                                                <input class="form-control border border-warning" 
                                                       type="text" maxlength="25" value="${e[1]}"
                                                       required="true"
                                                       oninvalid="this.setCustomValidity('Vui lòng nhập tên của bạn!')"
                                                       oninput="setCustomValidity('')"/>
                                            </div>

                                            <div class="form-group col-md-6">
                                                <label>Năm sinh</label>
                                                <input class="form-control border border-warning " 
                                                       type="date" required="true"
                                                       value="<fmt:formatDate value="${e[3]}" />" pattern="dd-MM-yyyy"
                                                       oninvalid="this.setCustomValidity('Vui lòng chọn năm sinh!')"
                                                       oninput="setCustomValidity('')"/>
                                            </div>
                                            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                                <div class="cmb-th">
                                                    <label>Giới tính</label>
                                                </div>
                                                <div class="cmb-td">
                                                    <select class="form-control border border-warning" \>
                                                        <option value="Nữ">Nữ</option>
                                                        <option value="Nam">Nam</option>   
                                                    </select>
                                                </div>
                                            </div> 
                                            <div class="form-group col-md-6">
                                                <label>File CV</label>
                                                <input class="form-control border border-warning " 
                                                       type="file" required="true" placeholder="${e[5]}"
                                                       value="${e[5]}"
                                                       style="padding: 3px"
                                                       oninvalid="this.setCustomValidity('Vui lòng chọn file CV của bạn!')"
                                                       oninput="setCustomValidity('')"/>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Số điện thoại</label>
                                                <input class="form-control border border-warning " value="${e[6]}"
                                                       maxlength="10" type="number" required="true"
                                                       oninvalid="this.setCustomValidity('Vui lòng nhập số điện thoại!')"
                                                       oninput="setCustomValidity('')"/>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Email</label>
                                                <input class="form-control border border-warning " 
                                                       type="email" required="true" value="${e[7]}"
                                                       oninvalid="this.setCustomValidity('Vui lòng nhập địa chỉ email!')"
                                                       oninput="setCustomValidity('')"/>
                                            </div>  
                                            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                                <div class="cmb-th">
                                                    <label>Ngành học</label>
                                                </div>
                                                <div class="cmb-td">
                                                    <select class="form-control border border-warning" \>
                                                        <c:forEach items="${majors}" var="m">
                                                            <option value="${m.id}" class="text-dark">${m.name}</option>  
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div> 
                                            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                                <div class="cmb-th">
                                                    <label>Lương</label>
                                                </div>
                                                <div class="cmb-td">
                                                    <input type="text" class="form-control border border-warning" value="<fmt:formatNumber type="number" value="${e[10]}" /> VNĐ" >
                                                </div>
                                            </div> 
                                            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                                <div class="cmb-th">
                                                    <label>Kinh nghiệm</label>
                                                </div>
                                                <div class="cmb-td">
                                                    <input type="text" class="form-control border border-warning" value="${e[9]}" >
                                                </div>
                                            </div> 
                                            <div class="form-group col-md-12">
                                                <label>Địa chỉ hiện tại</label>
                                                <input class="form-control border border-warning " 
                                                       type="text" required="true" value="${e[8]}, ${e[11]}"
                                                       oninvalid="this.setCustomValidity('Vui lòng nhập địa chỉ!')"
                                                       oninput="setCustomValidity('')"/>
                                            </div>
                                            <div style="display: none;">
                                                <input type="number" value="${employeess.id}" name="">                                     
                                            </div>
                                        </div>
                                        <div class="text-right">
                                            <input type="submit" class="btn btn-warning btn-add-info"  value="Cập nhật" />
                                        </div>
                                    </c:forEach>
                                </form:form>
                            </c:when>
                            <c:when test="${empty employees}">
                                <spring:url value="/EmployeeUpdateInfo/${pageContext.request.userPrincipal.name}" var="action" />
                                <form:form action="${action}" modelAttribute="addEmployee" method="post" enctype="multipart/form-data">
                                    <form:errors path="*" cssClass="alert alert-danger" element="div" />
                                    <div class=row form-group">
                                        <div class="form-group col-md-6">
                                            <label>Họ</label>
                                            <form:input path="lastName" class="form-control border border-warning "                                                    
                                                        type="text" maxlength="25" placeholder="Nhập họ"
                                                        required="true"
                                                        oninvalid="this.setCustomValidity('Vui lòng nhập họ của bạn!')"
                                                        oninput="setCustomValidity('')"/>
                                        </div>
                                        <div class="form-group col-md-6" >
                                            <label>Tên</label>
                                            <form:input path="firstName" class="form-control border border-warning" 
                                                        type="text" maxlength="25" placeholder="Nhập tên"
                                                        required="true"
                                                        oninvalid="this.setCustomValidity('Vui lòng nhập tên của bạn!')"
                                                        oninput="setCustomValidity('')"/>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label>Năm sinh</label>
                                            <form:input path="birthday" class="form-control border border-warning " 
                                                        type="date" required="true"                                                   
                                                        oninvalid="this.setCustomValidity('Vui lòng chọn năm sinh!')"
                                                        oninput="setCustomValidity('')"/>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                            <div class="cmb-th">
                                                <label>Giới tính</label>
                                            </div>
                                            <div class="cmb-td">
                                                <form:select path="gender" class="form-control border border-warning">
                                                    <option value="Nữ">Nữ</option>
                                                    <option value="Nam">Nam</option>   
                                                </form:select>
                                            </div>
                                        </div> 
                                        <div class="form-group col-md-6">
                                            <label>File CV</label>
                                            <form:input path="cvFile" class="form-control border border-warning " 
                                                        type="file" required="true"                                                    
                                                        style="padding: 3px"
                                                        oninvalid="this.setCustomValidity('Vui lòng chọn file CV của bạn!')"
                                                        oninput="setCustomValidity('')"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>Số điện thoại</label>
                                            <form:input path="phone" class="form-control border border-warning "
                                                        maxlength="10" type="number" required="true" placeholder="Nhập số điện thoại"
                                                        oninvalid="this.setCustomValidity('Vui lòng nhập số điện thoại!')"
                                                        oninput="setCustomValidity('')"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label>Email</label>
                                            <form:input path="email" class="form-control border border-warning " 
                                                        type="email" required="true" placeholder="Nhập email"
                                                        oninvalid="this.setCustomValidity('Vui lòng nhập địa chỉ email!')"
                                                        oninput="setCustomValidity('')"/>
                                        </div>  
                                        <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                                            <div class="cmb-th">
                                                <label>Ngành học</label>
                                            </div>
                                            <div class="cmb-td">
                                                <form:select path="major.id" class="form-control border border-warning">
                                                    <form:options items="${majors}"  
                                                                  itemLabel="name" 
                                                                  itemValue="id" />
                                                </form:select>
                                            </div>
                                        </div> 

                                        <div class="col-md-4 col-sm-4 col-xs-12 md-clearfix sm-clearfix fullname">
                                            <div class="cmb-th">
                                                <label>Lương</label>
                                            </div>
                                            <div class="cmb-td">
                                                <form:input path="salary" type="text" class="form-control border border-warning" placeholder="Nhập lương" />
                                            </div>
                                        </div> 
                                        <div class="col-md-4 col-sm-4 col-xs-12 md-clearfix sm-clearfix fullname">
                                            <div class="cmb-th">
                                                <label>Kinh nghiệm</label>
                                            </div>
                                            <div class="cmb-td">
                                                <form:input path="experience" type="text" class="form-control border border-warning" placeholder="Nhập kinh nghiệm" />
                                            </div>
                                        </div> 
                                        <div class="col-md-4 col-sm-4 col-xs-12 md-clearfix sm-clearfix fullname">
                                            <div class="cmb-th">
                                                <label>Thành phố</label>
                                            </div>
                                            <div class="cmb-td">
                                                <form:select path="area.id" class="form-control border border-warning">
                                                    <form:options items="${areas}"  
                                                                  itemLabel="name"
                                                                  itemValue="id" />
     
                                                </form:select>
                                            </div>
                                        </div> 
                                        <div class="form-group col-md-12">
                                            <label>Địa chỉ hiện tại</label>
                                            <form:input path="address" class="form-control border border-warning " 
                                                        type="text" required="true" placeholder="Nhập địa chỉ"
                                                        oninvalid="this.setCustomValidity('Vui lòng nhập địa chỉ!')"
                                                        oninput="setCustomValidity('')"/>
                                        </div>
                                        <div style="display: none;">
                                            <form:input id="${employeess.id}" value="${employeess.id}" path="user.id" type="number" min="0" step="1"/>
                                            <%--<form:label path="user"><fmt:parseNumber integerOnly {e= "true" type = "number" value = "${employeess.id}" /></form:label>--%>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <input type="submit" class="btn btn-warning btn-add-info"  value="Thêm thông tin" />
                                    </div>
                                </form:form>
                            </c:when>                               
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<!--<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/resources/css/employee-update-info.css"/>" rel="stylesheet"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
              crossorigin="anonymous">
    </head>
    <body class="container-fluid">
        <div class="employee-info">
            <h2 class="text-center text-warning" style="position: relative">Ứng viên</h2><hr/>
            <div class="row">
                <div class="col-md-4">
                    <h4 class="text-center text-warning">Thông tin tài khoản</h4><hr/>
                    <div class=form-group">
                        <label>Tên đăng nhập</label>
                        <input class="form-control border border-warning " 
                               type="disable" maxlength="25" placeholder="abc" readonly="true"
                               />
                    </div>
                    <div class=form-group">
                        <label>Mật khẩu</label>
                        <input class="form-control border border-warning " 
                               type="password" maxlength="20" placeholder="******" readonly="true"/>
                    </div>
                </div>
                <div class="col-md-8">
                    <h4 class="text-center text-warning">Thông tin ứng viên</h4><hr/>
                    <form method="post">
                        <div class=row form-group">
                            <div class="form-group col-md-6">
                                <label>Họ</label>
                                <input class="form-control border border-warning " 
                                       type="text" maxlength="25" 
                                       required="true" placeholder="Nguyễn"
                                       oninvalid="this.setCustomValidity('Vui lòng nhập họ của bạn!')"
                                       oninput="setCustomValidity('')"/>
                            </div>
                            <div class="form-group col-md-6" >
                                <label>Tên</label>
                                <input class="form-control border border-warning" 
                                       type="text" maxlength="25" placeholder="Văn A"
                                       required="true"
                                       oninvalid="this.setCustomValidity('Vui lòng nhập tên của bạn!')"
                                       oninput="setCustomValidity('')"/>
                            </div>

                        </div>
                        <div class="form-group">
                            <label>Năm sinh</label>
                            <input class="form-control border border-warning " 
                                   type="date" required="true"
                                   oninvalid="this.setCustomValidity('Vui lòng chọn năm sinh!')"
                                   oninput="setCustomValidity('')"/>
                        </div>
                        <div class=form-group">
                            <label>File CV</label>
                            <input class="form-control border border-warning " 
                                   type="file" required="true"
                                   style="padding: 3px"
                                   oninvalid="this.setCustomValidity('Vui lòng chọn file CV của bạn!')"
                                   oninput="setCustomValidity('')"/>
                        </div>
                        <div class="form-group">
                            <label>Số điện thoại</label>
                            <input class="form-control border border-warning " 
                                   maxlength="10" type="number" required="true"
                                   oninvalid="this.setCustomValidity('Vui lòng nhập số điện thoại!')"
                                   oninput="setCustomValidity('')"/>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input class="form-control border border-warning " 
                                   type="email" required="true"
                                   oninvalid="this.setCustomValidity('Vui lòng nhập địa chỉ email!')"
                                   oninput="setCustomValidity('')"/>
                        </div>                      
                        <div class="form-group">
                            <label>Địa chỉ hiện tại</label>
                            <input class="form-control border border-warning " 
                                   type="text" required="true"
                                   oninvalid="this.setCustomValidity('Vui lòng nhập địa chỉ!')"
                                   oninput="setCustomValidity('')"/>
                        </div>
                        <div class="text-right">
                            <input type="submit" class="btn btn-warning btn-add-info"  value="Thêm thông tin" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
-->
