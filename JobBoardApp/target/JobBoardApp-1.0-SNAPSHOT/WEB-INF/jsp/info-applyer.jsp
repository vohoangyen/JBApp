<%-- 
    Document   : Info-Applyer
    Created on : Apr 26, 2021, 9:25:13 PM
    Author     : Dy
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="widget-info" style="padding-top: 70px;font-weight: 400;">
    <div class="container info-applyers">
        <div class="container-ifo-titles">
            <h2>Thông tin ứng viên</h2>
        </div>
        <div class="row widget-info-applyers">
            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                <div class="cmb-th">
                    <label>Họ và tên</label>
                </div>
                <div class="cmb-td">
                    <input type="text" class="form-control" value="Võ Hoàng Yến" readonly="true">
                </div>
            </div>

            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                <div class="cmb-th">
                    <label>Ngày sinh</label>
                </div>
                <div class="cmb-td">
                    <input type="text" class="form-control" value="01/01/1999" readonly="true">
                </div>
            </div>

            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                <div class="cmb-th">
                    <label>Số điện thoại</label>
                </div>
                <div class="cmb-td">
                    <input type="text" class="form-control" value="0987654321" readonly="true">
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                <div class="cmb-th">
                    <label>Giới tính</label>
                </div>
                <div class="cmb-td">
                    <input type="text" class="form-control" value="Nữ" readonly="true">
                </div>
            </div> 
            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                <div class="cmb-th">
                    <label>Email</label>
                </div>
                <div class="cmb-td">
                    <input type="text" class="form-control" value="1751010185yen@ou.edu.vn" readonly="true">
                </div>
            </div> 
            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                <div class="cmb-th">
                    <label>Địa chỉ</label>
                </div>
                <div class="cmb-td">
                    <input type="text" class="form-control" value="123 Nguyễn Kiệm, P3, Quận Gò Vấp" readonly="true">
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                <div class="cmb-th">
                    <label>Ngành nghề</label>
                </div>
                <div class="cmb-td">
                    <input type="text" class="form-control" value="Computer science / IT" readonly="true">
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                <div class="cmb-th">
                    <label>Lương</label>
                </div>
                <div class="cmb-td">
                    <input type="text" class="form-control" value="7.000.000 VNĐ" readonly="true">
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                <div class="cmb-th">
                    <label>Kinh nghiệm</label>
                </div>
                <div class="cmb-td">
                    <input type="text" class="form-control" value="No experience" readonly="true">
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 md-clearfix sm-clearfix fullname">
                <div class="cmb-th">
                    <label>CV</label>
                </div>
                <div class="cmb-td-cv">
                    <div class="widget-cv">
                        <a href="<c:url value="/resources/images/English.docx" />" download>vohoangyen.docx</a>
                    </div>                                       
                </div>
            </div>
        </div>
    </div>
</div>

<link href="<c:url value="/resources/css/post-detail.css" />" rel="stylesheet"/>
