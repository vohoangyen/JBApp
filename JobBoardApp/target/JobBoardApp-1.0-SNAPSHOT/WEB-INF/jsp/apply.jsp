<%-- 
    Document   : apply
    Created on : Apr 26, 2021, 5:31:08 PM
    Author     : Dy
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="widget-app" style="padding-top: 70px;font-weight: 400;">
    <div class="container show-info-app">
        <div class="widget-app-titles">
            <h2>Product Design - Redesign Co</h2>
        </div>
        <div class="widget-app-contents">
            <form method="POST">
                <div class="row widget-info-applyers">
                    <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                        <div class="cmb-th">
                            <label>Tên</label>
                        </div>
                        <div class="cmb-td">
                            <input type="text" class="form-control" placeholder="Nhập tên" 
                                   oninvalid="this.setCustomValidity('Vui lòng nhập tên của bạn!')"
                                   oninput="setCustomValidity('')" required="true">
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                        <div class="cmb-th">
                            <label>Họ và tên đệm</label>
                        </div>
                        <div class="cmb-td">
                            <input type="text" class="form-control" placeholder="Nhập họ và tên đệm" 
                                   oninvalid="this.setCustomValidity('Vui lòng nhập họ và tên đệm của bạn!')"
                                   oninput="setCustomValidity('')" required="true">
                        </div>
                    </div> 
                    <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                        <div class="cmb-th">
                            <label>Email</label>
                        </div>
                        <div class="cmb-td">
                            <input type="email" class="form-control email" placeholder="abc@gmail.com" 
                                   oninvalid="this.setCustomValidity('Vui lòng nhập email!')"
                                   oninput="setCustomValidity('')" required="true">
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                        <div class="cmb-th">
                            <label>File CV</label>
                        </div>
                        <div class="cmb-td">
                            <input type="file" id="files_cv" class="form-control" placeholder="Chọn file" accept=".pdf,.doc,.docx" 
                                   oninvalid="this.setCustomValidity('Vui lòng chọn file CV của bạn!')"
                                   oninput="setCustomValidity('')" required="true">
                            <label id="files01" style="display: none;margin-top: 10px;">Dung lượng file phải nhỏ hơn 1 MB</label>
                            <label style="display: block;margin-top: 10px;">Hỗ trợ định dạng .doc .docx .pdf dưới 1 MB</label>
                        </div>
                    </div>
                </div>
                
                <div class="widget-apply-footer">
                    <div class="applying">
                        <button class="btn btn-applying">Nộp đơn</button>
                    </div>
                </div>
            </form>           
        </div>
    </div>
</div>
<link href="<c:url value="/resources/css/post-detail.css" />" rel="stylesheet"/>
