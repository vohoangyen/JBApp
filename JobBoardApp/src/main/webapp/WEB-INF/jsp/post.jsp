<%-- 
    Document   : post
    Created on : Apr 27, 2021, 5:17:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="container-fluid">
    <head>
        <link href="<c:url value="/resources/css/post.css"/>" rel="stylesheet"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
              crossorigin="anonymous">
    </head>
    <body style="padding-top: 70px;">
        <div class="post-area" style="margin-left: 0; padding-left: 30px">
            <h2 class="text-center text-warning" style="position: relative">Post Information</h2><hr/>

            <form method="post" class="post-form">
                <div class="row">
                    <div class="col-md-3 text-center" style="border-right: 1px solid rgba(0,0,0,.125);">
                        <img src="<c:url value="/resources/images/logoInstagram01.png"/>"  width="200" height="200" alt="Logo"/>
                        </br><br/>
                        <a class="text-center text-warning" href="#"><h4>Instagram</h4></a>
                    </div>
                    <div class="col-md-9 right-post-area">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Lĩnh vực</label>
                                <select class="form-control border border-warning " required="true">
                                    <option>CNTT</option>
                                    <option>KTKT</option>
                                    <option>TCNH</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Vị trí tuyển</label>
                                <input class="form-control border border-warning " 
                                       type="text" maxlength="255" placeholder="IT Support (End user support )" min="0"
                                       required="true"
                                       oninvalid="this.setCustomValidity('Vui lòng vị trí cần tuyển!')"
                                       oninput="setCustomValidity('')"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Hình thức</label>
                                <select class="form-control border border-warning " required="true">
                                    <option>Full time</option>
                                    <option>Part time</option>
                                    <option>Intern</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Số lượng tuyển</label>
                                <input class="form-control border border-warning " 
                                       type="number" maxlength="25" placeholder="3" min="0"
                                       required="true"
                                       oninvalid="this.setCustomValidity('Vui lòng nhập số lượng!')"
                                       oninput="setCustomValidity('')"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Kinh nghiệm yêu cầu</label>
                                <input class="form-control border border-warning " 
                                       type="text" maxlength="50" placeholder="1 năm"
                                       required="true"
                                       oninvalid="this.setCustomValidity('Vui lòng nhập kinh nghiệm yêu cầu!')"
                                       oninput="setCustomValidity('')"/>
                            </div>                      
                            <div class=" col-md-6">
                                <div class="row">
                                    <div class="col-md-9">
                                        <div class="form-group">
                                            <label>Lương</label>
                                            <input class="form-control border border-warning " 
                                                   type="number"  placeholder="10000000" min="0"
                                                   required="true"
                                                   oninvalid="this.setCustomValidity('Vui lòng nhập mức lương!')"
                                                   oninput="setCustomValidity('')"/>
                                        </div>     
                                    </div>
                                    <div class="col-md-3"> 
                                        <div class="form-group">
                                            <label>Đơn vị</label>
                                            <input class="form-control border border-warning " 
                                                   type="text"  value="VNĐ" readonly="true"/>
                                        </div>
                                    </div>
                                </div>   
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Thông tin khái quát về vị trí cần tuyển</label>
                            <textarea id="id" name="name" rows="5" cols="10"
                                      class="form-control border border-warning"
                                      required="true"
                                      oninvalid="this.setCustomValidity('Vui lòng nhập thông tin!')"
                                      oninput="setCustomValidity('')"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Yêu cầu công việc</label>
                            <div id="myDIV" class="row form-group" >
                                <div class="col-md-10">
                                    <input type="text" id="myInput"
                                           class="form-control border border-warning "
                                           placeholder="Title..."
                                           required="true"
                                           oninvalid="this.setCustomValidity('Vui lòng nhập yêu cầu công việc!')"
                                           oninput="setCustomValidity('')">
                                    <ol id="myUL" class="list-req">    
                                    </ol>
                                </div>
                                <div class="col-md-2" style=" padding-left: 10px">
                                    <span onclick="newElement()" style="width: 135px;"
                                          class="btn btn-warning">Thêm yêu cầu</span>
                                </div>
                            </div>
                        </div>
                        <div class="text-right">
                            <input type="submit" class="btn btn-warning"  value="Post" />
                        </div>                      
                    </div>
                </div>
            </form>
        </div>


        <script>
            // Create a "close" button and append it to each list item
            var myNodelist = document.getElementsByClassName("lit");
            var i;
            for (i = 0; i < myNodelist.length; i++) {
                var span = document.createElement("SPAN");
                var txt = document.createTextNode("\u00D7");
                span.className = "close";
                span.appendChild(txt);
                myNodelist[i].appendChild(span);
            }

            // Click on a close button to hide the current list item
            var close = document.getElementsByClassName("close");
            var i;
            for (i = 0; i < close.length; i++) {
                close[i].onclick = function () {
                    var div = this.parentElement;
                    div.style.display = "none";
                };
            }

            // Add a "checked" symbol when clicking on a list item
            var list = document.querySelector('ol');
            list.addEventListener('click', function (ev) {
                if (ev.target.tagName === 'LI') {
                    ev.target.classList.toggle('checked');
                }
            }, false);

            // Create a new list item when clicking on the "Add" button
            function newElement() {
                var li = document.createElement("li");
                var inputValue = document.getElementById("myInput").value;
                var t = document.createTextNode(inputValue);
                li.appendChild(t);
                if (inputValue === '') {
                    alert("You must write something!");
                } else {
                    document.getElementById("myUL").appendChild(li);
                }
                document.getElementById("myInput").value = "";

                var span = document.createElement("SPAN");
                var txt = document.createTextNode("\u00D7");
                span.className = "close";
                span.appendChild(txt);
                li.appendChild(span);

                for (i = 0; i < close.length; i++) {
                    close[i].onclick = function () {
                        var div = this.parentElement;
                        div.style.display = "none";
                    };
                }
            }
        </script>

    </body>
</html>



