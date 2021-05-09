btn-add-info<%-- 
    Document   : employer-info
    Created on : Apr 25, 2021, 11:32:01 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>


<div class="container-infomation" style="padding-top: 70px;">
    <div class="site-main-content" style="min-height: 80vh;">
        <div class="row content-info" style="margin: 0;">
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
                                <li class="active aligned-left">
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
                        <h2>Cập nhật thông tin </h2>
                    </div>
                    <div class="widget-infomation-contents">
                        <form method="POST">
                            <div class="row" style="display: flex;">
                                <div class="col-md-6">
                                    <div class=form-group">
                                        <label>Tên công ty/doanh nghiệp của bạn</label>
                                        <input class="form-control border border-warning " 
                                               type="text" maxlength="25" placeholder="Công ty TMCP ABC"
                                               required="true"
                                               oninvalid="this.setCustomValidity('Vui lòng nhập tên công ty của bạn!')"
                                               oninput="setCustomValidity('')"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class=form-group">
                                        <label>Logo</label>
                                        <input class="form-control border border-warning " 
                                               type="file" required="true"
                                               style="padding: 3px"
                                               oninvalid="this.setCustomValidity('Vui lòng chọn logo cho công ty của bạn!')"
                                               oninput="setCustomValidity('')"/>
                                    </div>
                                </div>    
                                
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input class="form-control border border-warning " 
                                               type="email" required="true"
                                               oninvalid="this.setCustomValidity('Vui lòng nhập địa chỉ email!')"
                                               oninput="setCustomValidity('')"/>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Số điện thoại</label>
                                        <input class="form-control border border-warning " 
                                               maxlength="10" type="number" required="true"
                                               oninvalid="this.setCustomValidity('Vui lòng nhập số điện thoại!')"
                                               oninput="setCustomValidity('')"/>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Quy mô</label>
                                        <select class="form-control border border-warning " required="true">
                                            <option>Từ 1-100 người</option>
                                            <option>Từ 100-500 người</option>
                                            <option>Từ 500-1000 người</option>
                                            <option>Hơn 1000 người</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Địa chỉ</label>
                                        <input class="form-control border border-warning " 
                                               type="text" maxlength="200" required="true"
                                               oninvalid="this.setCustomValidity('Vui lòng nhập địa chỉ!')"
                                               oninput="setCustomValidity('')"/>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class=form-group">
                                        <label>Mô tả vắn tắt</label>
                                        <textarea class="form-control border border-warning " required="true"
                                                  oninvalid="this.setCustomValidity('Bạn cần nhập một vài mô tả cơ bản về CTY!')"
                                                  oninput="setCustomValidity('')" rows="10">
                                            Far much that one rank beheld bluebird after outside ignobly allegedly
                                            more when oh arrogantly vehement irresistibly fussy penguin insect
                                            additionally wow absolutely crud meretriciously hastily dalmatian a
                                            glowered inset one echidna cassowary some parrot and much as goodness
                                            some froze the sullen much connected bat wonderfully on instantaneously
                                            eel valiantly petted this along across highhandedly much.
                                        </textarea>
                                    </div>
                                </div>                                
                            </div>
                            <div class="text-right" style="margin-top: 20px;">
                                <input type="submit" class="btn btn-warning btn-add-info "  value="Thêm thông tin" />
                            </div>
                        </form>
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
        <div class="employer-info">
            <form method="post"">
                <h2 class="text-center text-warning" style="position: relative">Nhà ứng tuyển</h2><hr/>
                <div class="row">
                    <div class="col-md-4">
                        <h4 class="text-center text-warning">Thông tin tài khoản</h4><hr/>
                        <div class=form-group">
                            <label>Tên đăng nhập</label>
                            <input class="form-control border border-warning " 
                                   type="text" maxlength="25" placeholder="abc"
                                   readonly="true"/>
                        </div>
                        <div class=form-group">
                            <label>Mật khẩu</label>
                            <input class="form-control border border-warning " 
                                   type="password" maxlength="20" placeholder="******"
                                   readonly="true"/>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <h4 class="text-center text-warning">Thông tin nhà ứng tuyển</h4><hr/>
                        <div class=form-group">
                            <label>Tên công ty/doanh nghiệp của bạn</label>
                            <input class="form-control border border-warning " 
                                   type="text" maxlength="25" placeholder="Công ty TMCP ABC"
                                   required="true"
                                   oninvalid="this.setCustomValidity('Vui lòng nhập tên công ty của bạn!')"
                                   oninput="setCustomValidity('')"/>
                        </div>
                        <div class=form-group">
                            <label>Logo</label>
                            <input class="form-control border border-warning " 
                                   type="file" required="true"
                                   style="padding: 3px"
                                   oninvalid="this.setCustomValidity('Vui lòng chọn logo cho công ty của bạn!')"
                                   oninput="setCustomValidity('')"/>
                        </div>
                        <div class=form-group">
                            <label>Mô tả vắn tắt</label>
                            <input class="form-control border border-warning " 
                                   type="text" placeholder="Công ty TMCP ABC"
                                   style="height: fit-content" required="true"
                                   oninvalid="this.setCustomValidity('Bạn cần nhập một vài mô tả cơ bản về CTY!')"
                                   oninput="setCustomValidity('')"/>
                        </div>
                        <div class="form-group">
                            <label>Quy mô</label>
                            <select class="form-control border border-warning " required="true">
                                <option>Từ 1-100 người</option>
                                <option>Từ 100-500 người</option>
                                <option>Từ 500-1000 người</option>
                                <option>Hơn 1000 người</option>
                            </select>
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
                            <label>Địa chỉ</label>
                            <input class="form-control border border-warning " 
                                   type="text" maxlength="200" required="true"
                                   oninvalid="this.setCustomValidity('Vui lòng nhập địa chỉ!')"
                                   oninput="setCustomValidity('')"/>
                        </div>
                    </div>
                </div>
                <div class="text-right">
                    <input type="submit" class="btn btn-warning btn-add-info "  value="Thêm thông tin" />
                </div>
            </form>
        </div>
    </body>
</html>-->

<link href="<c:url value="/resources/css/employee-update-info.css"/>" rel="stylesheet"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
      crossorigin="anonymous">
