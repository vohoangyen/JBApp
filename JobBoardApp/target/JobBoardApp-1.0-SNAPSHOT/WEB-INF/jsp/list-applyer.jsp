<%-- 
    Document   : list-applyer
    Created on : Apr 26, 2021, 6:25:51 PM
    Author     : Dy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container-list-applyers" style="padding-top: 70px;font-weight: 400;">
    <div class="content-area container">
        <div class="site-main content">
             <div class="row content-job-detail">
                <div class="col-xs-12 col-md-8">
                    <div class="job-detail-header clearfix">
                        <div class="widget-logo">
                            <div class="widget-img">
                                <img src="<c:url value="/resources/images/e1.jpg"/>" alt="alt" class="logo-img"/>
                            </div>
                        </div>
                        <div class="widget-titles">
                            <h6>Product Design</h6>
                        </div>                                   
                        <div class="job-information clearfix">
                            <ul class="list-detail-candidate">
                                <li>
                                    <div class="job-position">
                                        <i class="fa fa-map-marker"></i>
                                        <p> 803 46th St Brooklyn, NY </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="job-phone">
                                        <i class="fa fa-phone"></i>
                                        <p> 0987654321 </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="job-email">
                                        <i class="fas fa-envelope"></i>
                                        <p> abc@gmail.com </p>
                                    </div>                       
                                </li>
                                <li>
                                    <div class="job-date">
                                        <i class="fa fa-credit-card"></i>
                                        <p>  July 18, 2019 </p>
                                    </div>                       
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="job-detail-description">
                       <div class="detail-wrapper">
                           <div class="detail-wrapper-header">
                               <h4>Khái quát</h4>
                           </div>
                           <div class="detail-wrapper-body">
                               <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum 
                               deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, 
                               similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. 
                               Et harum quidem rerum facilis est et expedita distinctio. 
                               At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque 
                               corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, 
                               similique sunt in culpa qui officia deserunt mollitia animi, 
                               id est laborum et dolorum fuga.</p>
                           </div>
                       </div>
                       <div class="detail-wrapper">
                           <div class="detail-wrapper-header">
                               <h4>Yêu cầu</h4>
                           </div>
                           <div class="detail-wrapper-body">
                               <ul class="detail-list">
                                   <li>Proven work experienceas a web designer</li>
                                   <li>Proven work experienceas a web designer</li>
                                   <li>Proven work experienceas a web designer</li>
                                   <li>Proven work experienceas a web designer</li>
                               </ul>

                           </div>
                       </div>
                    </div>
                </div>
                <div class="col-md-4 col-xs-12 sidebar sidebar-job">
                    <div class="widget widget_job_info">
                        <h2 class="widget-title">
                            <span>Thông tin</span>
                        </h2>
                        <div class="job-detail in-sidebar">
                            <ul class="list">
                                <li>
                                    <div class="li-icon">
                                        <i class="fa fa-money"></i>
                                    </div>
                                    <div class="details">
                                        <div class="text">Mức lương</div>
                                        <div class="value">7.000.000 VNĐ</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="li-icon">
                                        <i class="fa fa-graduation-cap"></i>
                                    </div>
                                    <div class="details">
                                        <div class="text">Kinh nghiệm</div>
                                        <div class="value">4 năm</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="li-icon">
                                        <i class="fa fa-line-chart"></i>
                                    </div>
                                    <div class="details">
                                        <div class="text">Ngành nghiệp</div>
                                        <div class="value">IT</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="li-icon">
                                        <i class="fa fa-calendar "></i>
                                    </div>
                                    <div class="details">
                                        <div class="text">Hình thức</div>
                                        <div class="value">Internship</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="li-icon">
                                        <i class="fas fa-stream"></i>
                                    </div>
                                    <div class="details">
                                        <div class="text">Số lượng tuyển</div>
                                        <div class="value">5</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="li-icon">
                                        <i class="fa fa-credit-card"></i>
                                    </div>
                                    <div class="details">
                                        <div class="text">Hạn chót ứng tuyển</div>
                                        <div class="value">June 25, 2022</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
<!--                    <div class="widget-apply">
                        <div class="widget-container-apply">
                            <a role="button" class="widget-container-apply-button">                                     
                                <span style="color: white;">Ứng tuyển</span>
                            </a>
                        </div>           
                    </div>-->
                </div>
            </div>
        </div>              
    </div>
                            
    <div class="widget-spaces" style="padding-top: 50px;background-color: #f6f7f9;"></div>
    
    <div class="container widget-applyers">
        <div class="elm-applyer-title">
            <h3>Danh sách ứng viên</h3>        
        </div>
        <div class="widget-content ">
            <div class="row">
                <div class="col-12 list-item">
                    <article class="apllyer-item">
                        <div class="applyers">
                            <div class="left-applyer">
                                <div class="flex-middle">
                                    <div class="employers-icon">
                                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                                    </div>
                                    <h2 class="employers-name">Võ Hoàng Yến</h2>
                                </div>
                            </div>
                            <div class="applyer-email">
                                <i class="fas fa-envelope" aria-hidden="true"></i>
                                <h2>1751010185yen@ou.edu.vn</h2>
                            </div>
                            <div class="applyer-cv">
                                <i class="fas fa-file" aria-hidden="true"></i>
                                <a href="<c:url value="/resources/images/English.docx" />" download>
                                    vohoangyen.docx
                                </a>                                
                            </div>
                            <div class="applyer-see">
                                <a href="<c:url value="/info-applyer/" />" class="btn btn-see">Xem Chi tiết</a>                                
                            </div>
                        </div>
                    </article>
                </div>                            
                <div class="col-12 list-item">
                    <article class="apllyer-item">
                        <div class="applyers">
                            <div class="left-applyer">
                                <div class="flex-middle">
                                    <div class="employers-icon">
                                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                                    </div>
                                    <h2 class="employers-name">Võ Hoàng Yến</h2>
                                </div>
                            </div>
                            <div class="applyer-email">
                                <i class="fas fa-envelope" aria-hidden="true"></i>
                                <h2>1751010185yen@ou.edu.vn</h2>
                            </div>
                            <div class="applyer-cv">
                                <i class="fas fa-file" aria-hidden="true"></i>
                                <a href="<c:url value="/resources/images/English.docx" />" download>
                                    vohoangyen.docx
                                </a>                                
                            </div>
                            <div class="applyer-see">
                                <a href="<c:url value="/info-applyer/" />" class="btn btn-see">Xem Chi tiết</a>                                
                            </div>
                        </div>
                    </article>
                </div>
                            
                <div class="col-12 list-item">
                    <article class="apllyer-item">
                        <div class="applyers">
                            <div class="left-applyer">
                                <div class="flex-middle">
                                    <div class="employers-icon">
                                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                                    </div>
                                    <h2 class="employers-name">Võ Hoàng Yến</h2>
                                </div>
                            </div>
                            <div class="applyer-email">
                                <i class="fas fa-envelope" aria-hidden="true"></i>
                                <h2>1751010185yen@ou.edu.vn</h2>
                            </div>
                            <div class="applyer-cv">
                                <i class="fas fa-file" aria-hidden="true"></i>
                                <a href="<c:url value="/resources/images/English.docx" />" download>
                                    vohoangyen.docx
                                </a>                                
                            </div>
                            <div class="applyer-see">
                                <a href="<c:url value="/info-applyer/" />" class="btn btn-see">Xem Chi tiết</a>                                
                            </div>
                        </div>
                    </article>
                </div>                            
                <div class="col-12 list-item">
                    <article class="apllyer-item">
                        <div class="applyers">
                            <div class="left-applyer">
                                <div class="flex-middle">
                                    <div class="employers-icon">
                                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                                    </div>
                                    <h2 class="employers-name">Võ Hoàng Yến</h2>
                                </div>
                            </div>
                            <div class="applyer-email">
                                <i class="fas fa-envelope" aria-hidden="true"></i>
                                <h2>1751010185yen@ou.edu.vn</h2>
                            </div>
                            <div class="applyer-cv">
                                <i class="fas fa-file" aria-hidden="true"></i>
                                <a href="<c:url value="/resources/images/English.docx" />" download>
                                    vohoangyen.docx
                                </a>                                
                            </div>
                            <div class="applyer-see">
                                <a href="<c:url value="/info-applyer/" />" class="btn btn-see">Xem Chi tiết</a>                                
                            </div>
                        </div>
                    </article>
                </div>
                            
                <div class="col-12 list-item">
                    <article class="apllyer-item">
                        <div class="applyers">
                            <div class="left-applyer">
                                <div class="flex-middle">
                                    <div class="employers-icon">
                                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                                    </div>
                                    <h2 class="employers-name">Võ Hoàng Yến</h2>
                                </div>
                            </div>
                            <div class="applyer-email">
                                <i class="fas fa-envelope" aria-hidden="true"></i>
                                <h2>1751010185yen@ou.edu.vn</h2>
                            </div>
                            <div class="applyer-cv">
                                <i class="fas fa-file" aria-hidden="true"></i>
                                <a href="<c:url value="/resources/images/English.docx" />" download>
                                    vohoangyen.docx
                                </a>                                
                            </div>
                            <div class="applyer-see">
                                <a href="<c:url value="/info-applyer/" />" class="btn btn-see">Xem Chi tiết</a>                                
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
</div>

<link href="<c:url value="/resources/css/post-detail.css" />" rel="stylesheet"/>