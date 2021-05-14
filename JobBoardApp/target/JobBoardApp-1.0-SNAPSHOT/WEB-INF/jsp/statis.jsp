<%-- 
    Document   : statis
    Created on : May 14, 2021, 1:23:23 AM
    Author     : Dy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<div class="container statis" style="padding-top: 70px;">
    <h4 class="text-center" style="margin-top: 40px;margin-bottom: 15px">THỐNG KÊ BÁO CÁO</h4>
    <div class="row">
        <div class="col-md-5 form-group">
            <label>Từ ngày</label>
            <input type="date" name="fromDate" class="form-control" />
        </div>
        <div class="col-md-5 form-group">
            <label>Đến ngày</label>
            <input type="date" name="toDate" class="form-control" />
        </div>
        <div class="col-md-2">
            <input type="button" value="Thống kê" id="btnStatis" class="btn btn-info" />
        </div>
    </div>

</div>

<div class="container">
    <table class="table">
        <tr>
            <th>Mã bài post</th>
            <th>Ngày viết bài</th>
            <th>Số lượng bài post</th>
            <th>Số lượt apply</th>
        </tr>
        <tbody id="statsId">
            <c:forEach items="${statis}" var="v">
                <tr>
                    <td>${v[0]}</td>
                    <td><fmt:parseDate value="${v[1]}" pattern="yyyy-MM-dd"/></td>
                    <td>${v[2]}</td>
                    <td>${v[3]}</td>
                </tr>
            </c:forEach>

        </tbody>
    </table>
</div>
