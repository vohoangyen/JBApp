<%-- 
    Document   : news-feed
    Created on : Apr 17, 2021, 2:31:13 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html class="container-fluid">
    <head>      
        <link href="<c:url value="/resources/css/news-feed.css"/>" rel="stylesheet"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
              crossorigin="anonymous">
    </head>
    <body style="padding-top: 70px;">
        <script src="<c:url value="/js/news-feed.js" />"></script>
        <br/>

        <div class="row body" >
            <!-- LEFT -->
            <div class="col-md-8 body-left">

                <!-- LEFT-NAV-BAR -->                  
                <ul class="nav justify-content-center ">
                    <li class="nav-item">
                        <a id="nav-recent" class="nav-link text-warning" onclick="openRecentCards();">RECENT</a>
                    </li>
                    <li class="nav-item">
                        <a id="nav-fulltime" class="nav-link text-warning" onclick="openFullTimeCards();">FULL TIME</a>
                    </li>
                    <li class="nav-item">
                        <a id="nav-parttime" class="nav-link text-warning" onclick="openPartTimeCards();">PART TIME</a>
                    </li>
                    <li class="nav-item">
                        <a id="nav-intern" class="nav-link text-warning" onclick="openInternCards();">INTERN</a>
                    </li>
                </ul>
                <br/>
                <!-- LEFT-LIST-CARDS-BY-JOB-TYPES -->  
                <!-- RECENT -->
                <div id="recentArea">
                    <div class="card mb-4">
                        <div class="row no-gutters ">
                            <div class="col-md-3">
                                <a href="<c:url value="/post-detail/"/>">
                                    <img src="<c:url value="/resources/images/logoInstagram01.png"/>" 
                                     class="card-img" alt="..."
                                     style="padding: 10px;">
                                </a>
                                
                            </div>
                            <div class="col-md-9">
                                <div class="card-body">
                                    <a href="<c:url value="/post-detail/"/>" class="card-body-name">
                                        RECENT AREA
                                    </a>                 
                                    <div class="card-text" style="padding-top: 10px;">
                                        <img class="card-sub-item subcard-img" src="<c:url value="/resources/images/iconPosition01.png"/>" alt="alt"/>
                                        <a href="<c:url value="/post-detail/"/>" class="card-sub-item">Applied Chemistry & Chemical Engineering / Chemistry</a>
                                    </div>
                                    <div class="card-text">
                                        <img class="card-sub-item subcard-img" src="<c:url value="/resources/images/iconAddress03.png"/>" alt="alt"/>
                                        <p class="card-sub-item">New York, USA</p>
                                    </div>
                                    
                                    <div class="card-text">
                                        <img class="card-sub-item subcard-img" src="<c:url value="/resources/images/iconSalary02.png"/>" alt="alt"/>
                                        <p class="card-sub-item">500~700</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- FULL TIME -->
                <div id="fulltimeArea">
                    <div class="card mb-4">
                        <div class="row no-gutters">
                            <div class="col-md-3">
                                <a href="<c:url value="/post-detail/"/>">
                                    <img src="<c:url value="/resources/images/logoFacebook01.png"/>" 
                                     class="card-img" alt="..."
                                     style="padding: 10px;">
                                </a>
                            </div>
                            <div class="col-md-9">
                                <div class="card-body">
                                    <a href="<c:url value="/post-detail/"/>" class="card-body-name">
                                        FULL TIME AREA
                                    </a>                 
                                    <div class="card-text" style="padding-top: 10px;">
                                        <img class="card-sub-item subcard-img" src="<c:url value="/resources/images/iconPosition01.png"/>" alt="alt"/>
                                        <a href="<c:url value="/post-detail/"/>" class="card-sub-item">Applied Chemistry & Chemical Engineering / Chemistry</a>
                                    </div>
                                    <div class="card-text">
                                        <img class="card-sub-item" src="<c:url value="/resources/images/iconAddress03.png"/>" alt="alt"/>
                                        <p class="card-sub-item">New York, USA</p>
                                    </div>
                                    <div class="card-text">
                                        <img class="card-sub-item" src="<c:url value="/resources/images/iconSalary02.png"/>" alt="alt"/>
                                        <p class="card-sub-item">500~700</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- PART TIME -->
                <div id="parttimeArea">
                    <div class="card mb-4">
                        <div class="row no-gutters">
                            <div class="col-md-3">
                                <a href="<c:url value="/post-detail/"/>">
                                    <img src="<c:url value="/resources/images/logoAmazon01.png"/>" 
                                     class="card-img" alt="..."
                                     style="padding: 10px;">
                                </a>
                            </div>
                            <div class="col-md-9">
                                <div class="card-body">
                                    <a href="<c:url value="/post-detail/"/>" class="card-body-name">
                                        PART TIME AREA
                                    </a>                 
                                    <div class="card-text" style="padding-top: 10px;">
                                        <img class="card-sub-item subcard-img" src="<c:url value="/resources/images/iconPosition01.png"/>" alt="alt"/>
                                        <a href="<c:url value="/post-detail/"/>" class="card-sub-item">Applied Chemistry & Chemical Engineering / Chemistry</a>
                                    </div>
                                    <div class="card-text">
                                        <img class="card-sub-item" src="<c:url value="/resources/images/iconAddress03.png"/>" alt="alt"/>
                                        <p class="card-sub-item">New York, USA</p>
                                    </div>
                                    <div class="card-text">
                                        <img class="card-sub-item" src="<c:url value="/resources/images/iconSalary02.png"/>" alt="alt"/>
                                        <p class="card-sub-item">500~700</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
                <!-- INTERN -->
                <div id="internArea">
                    <div class="card mb-4">
                        <div class="row no-gutters">
                            <div class="col-md-3">
                                <a href="<c:url value="/post-detail/"/>">
                                    <img src="<c:url value="/resources/images/logoGoogle01.png"/>" 
                                     class="card-img" alt="..."
                                     style="padding: 10px;">
                                </a>
                            </div>
                            <div class="col-md-9">
                                <div class="card-body body-card">
                                     <a href="<c:url value="/post-detail/"/>" class="card-body-name">
                                        INTERN AREA
                                    </a>                 
                                    <div class="card-text" style="padding-top: 10px;">
                                        <img class="card-sub-item subcard-img" src="<c:url value="/resources/images/iconPosition01.png"/>" alt="alt"/>
                                        <a href="<c:url value="/post-detail/"/>" class="card-sub-item">Applied Chemistry & Chemical Engineering / Chemistry</a>
                                    </div>
                                    <div class="card-text">
                                        <img class="card-sub-item" src="<c:url value="/resources/images/iconAddress03.png"/>" alt="alt"/>
                                        <p class="card-sub-item">New York, USA</p>
                                    </div>
                                    <div class="card-text">
                                        <img class="card-sub-item" src="<c:url value="/resources/images/iconSalary02.png"/>" alt="alt"/>
                                        <p class="card-sub-item">500~700</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- FINISH LEFT -->                                           
            <!-- RIGHT -->
            <div class="col-md-4 body-right" >
                <h5 class="text-warning text-center body-right-title" >FILTER</h5>
                <!-- Add search bar for employee-->               
                <form method="post" class="form-group text-center border border-jobs-search">
                    <div class="row form-group">
                        <label class="col-md-3">Khu vực</label>
                        <select class="col-md-9 form-control border border-warning " >
                            <option>Ho Chi Minh City</option>
                            <option>Ha Noi</option>
                            <option>Can Tho</option>
                            <option>Nha Trang</option>
                        </select>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-3">Lĩnh vực</label>
                        <select class="col-md-9 form-control border border-warning " >
                            <option>CNTT</option>
                            <option>TC-NH</option>
                            <option>KT-KT</option>
                            <option>QTNL</option>
                        </select>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-3">Tên công ty</label>
                        <input class="col-md-9 form-control border border-warning" placeholder="Ngân hàng ABC"/>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-3">Thời gian làm việc</label>
                        <select class="col-md-9 form-control border border-warning " >
                            <option>Full time</option>
                            <option>Part time</option>
                            <option>Intern</option>
                        </select>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-3">Lương</label>
                        <select class="col-md-9 form-control border border-warning " >
                            <option>Dưới 10 triệu</option>
                            <option>Từ 10 triệu đến 20 triệu</option>
                            <option>Từ 20 triệu đến 30 triệu</option>
                            <option>Trên 30 triệu</option>
                        </select>
                    </div>
                    <div class="text-center">
                        <input type="submit" class="btn btn-warning " value="Tìm kiếm"/>
                    </div>
                </form>


                <div class="card mb-4">
                    <div class="row no-gutters">
                        <div class="card-body body-card">
                            <h5 class="card-title">JOBS TYPE</h5>
                            <div class="card-text">
                                <div class="text-center btn-nut">
                                    <button type="button" class="btn btn-warning text-center" 
                                            style="width: 200px; height: 40px"
                                            onclick="btnFulltime();">
                                        <span class="btn-btn">Full time</span>
                                    </button>
                                </div>    
                            </div>
                            <div class="card-text">
                                <div class="text-center btn-nut">
                                    <button type="button" class="btn btn-warning text-center" 
                                            style="width: 200px; height: 40px"
                                            onclick="btnParttime();">
                                        <span class="btn-btn">Part time</span>
                                    </button>
                                </div>    
                            </div>
                            <div class="card-text">
                                <div class="text-center btn-nut">
                                    <button type="button" class="btn btn-warning text-center" 
                                            style="width: 200px; height: 40px"
                                            onclick="btnIntern();">
                                        <span class="btn-btn">Internship</span>
                                    </button>
                                </div>    
                            </div>
                        </div>

                    </div>
                </div>

                <div class="card mb-4">
                    <div class="row no-gutters">
                        <div class="card-body body-card">
                            <h5 class="card-title">JOB BY LOCATION</h5>
                            <div class="card-text">
                                <div class="text-center btn-nut">
                                    <button type="button" class="btn btn-warning text-center" 
                                            style="width: 200px; height: 40px">
                                        <span class="btn-btn">Ho Chi Minh City</span>
                                    </button>
                                </div>    
                            </div>
                            <div class="card-text">
                                <div class="text-center btn-nut">
                                    <button type="button" class="btn btn-warning text-center" 
                                            style="width: 200px; height: 40px">
                                        <span class="btn-btn">Ha Noi</span>
                                    </button>
                                </div>    
                            </div>
                            <div class="card-text">
                                <div class="text-center btn-nut">
                                    <button type="button" class="btn btn-warning text-center" 
                                            style="width: 200px; height: 40px">
                                        <span class="btn-btn">Nha Trang</span>
                                    </button>
                                </div>    
                            </div>
                            <div class="card-text">
                                <div class="text-center btn-nut">
                                    <button type="button" class="btn btn-warning text-center" 
                                            style="width: 200px; height: 40px">
                                        <span class="btn-btn">Can Tho</span>
                                    </button>
                                </div>    
                            </div>
                        </div>

                    </div>
                </div>

                <div class="card mb-4">
                    <div class="row no-gutters">
                        <div class="card-body body-card">
                            <h5 class="card-title">SALARY RANGE</h5>
                            <div class="card-text">
                                <div class="text-center btn-nut">
                                    <button type="button" class="btn btn-warning text-center" 
                                            style="width: 200px; height: 40px">
                                        <span class="btn-btn">500~700$/mth</span>
                                    </button>
                                </div>    
                            </div>
                            <div class="card-text">
                                <div class="text-center btn-nut">
                                    <button type="button" class="btn btn-warning text-center" 
                                            style="width: 200px; height: 40px">
                                        <span class="btn-btn">700~1000$/mth</span>
                                    </button>
                                </div>    
                            </div>
                            <div class="card-text">
                                <div class="text-center btn-nut">
                                    <button type="button" class="btn btn-warning text-center" 
                                            style="width: 200px; height: 40px">
                                        <span class="btn-btn">1000~5000$/mth</span>
                                    </button>
                                </div>    
                            </div>
                            <div class="card-text">
                                <div class="text-center btn-nut">
                                    <button type="button" class="btn btn-warning text-center" 
                                            style="width: 200px; height: 40px">
                                        <span class="btn-btn">Over 5000$/mth</span>
                                    </button>
                                </div>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="<c:url value="/js/news-feed.js" />"></script>
    </body>
</html>

