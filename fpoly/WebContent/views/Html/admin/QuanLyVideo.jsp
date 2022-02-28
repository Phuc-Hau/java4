<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head> 
    <title>Quản lý video</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.0/angular.min.js"></script>
    <link rel="stylesheet" href="/fpoly/views/CSS/Qlvideo.css">
    <script src="/fpoly/views/JS/video.js"></script>
</head>

<body  ng-app="myapp" ng-controller="controller">
    <main class="container-fluid">
        <nav class="row">
            <nav class="navbar navbar-expand-sm navbar-light bg-light col">
                <a class="navbar-brand" href="#">Quản Trị Viên</a>
                <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
                    data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavId">
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="/fpoly/oe/trangchu">Trang Chủ <span class="sr-only">(current)</span></a>
                        </li>

                        <div class="nav-item">
                            <a href="/fpoly/admin/QLnhanvien" class="nav-link">
                                <i class="fa fa-id-card" aria-hidden="true"></i> Người Dùng
                            </a>
                        </div>

                        <div class="nav-item">
                            <a href="/fpoly/admin/report" class="nav-link">
                                <i class="fa fa-comments" aria-hidden="true"></i> Báo Cáo
                            </a>
                        </div>

                        <li class="nav-item" style="background-color: aqua; border-radius: 27px;">
                            <a class="nav-link" href="#"><i class="fa fa-info" aria-hidden="true"></i> Video</a>
                        </li>

                    </ul>

                </div>
            </nav>
        </nav>
		<c:choose>
			<c:when test="${!readonly.equals('readonly')}">
				<c:set var="disabledin" value="${'disabled'}" scope="request" />
				<c:set var="disabled" value="${''}" scope="request" />
				<c:set var="tab" value="${'New Video'}" scope="request" />
			</c:when>
			<c:otherwise>
				<c:set var="disabled" value="${'disabled'}" scope="request" />
				<c:set var="disabledin" value="${''}" scope="request" />
				<c:set var="tab" value="${'Edit Video'}" scope="request" />
			</c:otherwise>
		</c:choose>
		<section class="row">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link ${activeedit}" id="videoEdit-tab" data-toggle="tab" href="#videoEdit" role="tab"
                        aria-controls="videoEdit" aria-selected="${!edittrue}">${tab}</a>
                </li>

                <li class="nav-item" role="presentation">
                    <a class="nav-link  ${activelist}" id="videoList-tab" data-toggle="tab" href="#videoList" role="tab"
                        aria-controls="videoList" aria-selected="${edittrue}">Video List</a>
                </li>

            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade ${showedit}" id="videoEdit" role="tabpanel" aria-labelledby="videoEdit-tab">
                   
                     <form name="frm" action=""  enctype="multipart/form-data" method="post" onsubmit = "return validateForm()">
        
				        <div style="width: 854px;" class="card-body">
				            <div class="row">
				                <div class="col-3">
				                    <div class="border p-3">
				                        <img src="/fpoly/file/${videoedit.poster}" id="img" alt="" class="img-fluid">
				                        
				                    </div>
				                    <from  enctype="multipart/form-data" >
				                 	   <input value="${videoedit.poster}" id="anh"  class="anh" type="hidden" name="poster">
				                    	<input value="${videoedit.poster}" id="anh" onchange="img4()" class="anh" type="file" name="posters">
				                    </from>
									<script>
										function img4() {
											var anh = document.getElementById("anh").value;
											var h = document.getElementById("img");
											h.src = "C:\Users\fptshop\Pictures\Screenshots\Ảnh chụp màn hình (1).png";
										}
									</script>
									<br>
				                    <div style="font-size: 25px;margin-top: 34px; color: red; font-weight: bold;  text-align: center;">${mess}</div>
				                </div>
				                <div class="col-9">
				                    <div class="form-group">
				                        <label for="phimmoiId">Phimmoi ID</label>
				                        <input ${readonly} type="text" name="id"  class="form-control" value="${videoedit.id}"  placeholder="Phimmoi ID">
				                        <small id="phimmoiIdHid" class="form-text text-muted">Phimmoi ID your
				                            required</small>
				                    </div>
				
				                    <div class="form-group">
				                        <label for="videoTitle">Video Title</label>
				                        <input type="text" name="titile" class="form-control" value="${videoedit.titile}"   placeholder="Video Title">
				                        <small id="videoTitleHid" class="form-text text-muted">Video Title is
				                            required</small>
				                    </div>
				
				                    <div class="form-group">
				                        <label for="luotxem">Lượt Xem ${videoedit.views}</label>
				                                  
				                                  <small id="luotxemHid" class="form-text text-muted">Lượt Xem </small>
				                              </div>
				                              
				
												<c:choose>
													<c:when test="${videoedit.active==false}">
														<c:set var="checks" value="checked" scope="page"/>
													</c:when>
													<c:otherwise><c:set var="check" value="checked" scope="page"/></c:otherwise>
												</c:choose>
				
				                              <div class="form-check form-check-inline">
				                                  <label><input type="radio" class="form-check-input" value="true" ${check}
				                                name="active" id="status">Hoạt Động</label>
				                        			<label style="margin-left: 22px;"><input type="radio" class="form-check-input" value="false" ${checks}
				                                name="active" id="status">Không Hoạt Động</label>
				                    </div>
				                </div>
				            </div>
				            <div class="row">
				                <div class="col">
				                    <label for="description">Ghi Chú</label>
				                    <textarea name="descriptionn" id="description"  cols="30" rows="4"
				                        class="form-control">${videoedit.descriptionn}</textarea>
				                </div>
				            </div>

				        </div>
				        
					    <div class="card-footer text-muted">
					   
					   
					        <button ${disabled}  formaction="/fpoly/admin/video/edits/create" class="btn btn-primary">Create</button>
					        <button ${disabledin} formaction="/fpoly/admin/video/edits/update" class="btn btn-warning">Update</button>
					        <button ${disabledin} formaction="/fpoly/admin/video/edits/delete" class="btn btn-danger">Delete</button>
					        <button formaction="/fpoly/admin/video/edits/reset" class="btn btn-info">Reset</button>
						</div>
				    </form>
    
                </div>
                <div class="tab-pane fade ${showlist}" id="videoList" role="tabpanel" aria-labelledby="videoList-tab">
                    <table class="table table-stripe">
                        <tr style="background-color: antiquewhite;">
                        	<td>STT</td>
                            <td>Phimmoi ID</td>
                            <td>Video Title</td>
                            <td>Lượt Xem</td>
                            <td>Trạng Thái</td>
                            <td>Edit</td>
                        </tr>
                        <c:set var="count" value="${1}" scope="request"/>
                        <c:forEach var="video" items="${listvideo}">
                        	<tr>
                        		<td>${count}</td>
	                            <td>${video.id}</td>
	                            <td>${video.titile}</td>
	                            <td>${video.views}</td>
	                            <td>
	                            	<c:choose>
	                            		<c:when test="${video.active}">Hoạt Động</c:when>
	                            		<c:otherwise>Không Hoạt Động</c:otherwise>
	                            	</c:choose>
	                            </td>
	                            <td style="display: flex;">
	                            	<form action="/fpoly/admin/video/edit/${video.id}" method="post">
	                            		<a href="javascript:;" onclick="parentNode.submit();"><i class="fa fa-edit" aria-hidden="true"></i>    Edit</a>
	                            	</form>

	                                <form style="margin-left: 12px;" action="/fpoly/admin/delete/?oid=${video.id}" method="post">
	                            		<a href="javascript:;" onclick="parentNode.submit();"><i class="fa fa-edit" aria-hidden="true"></i>    Delete</a>
	                            	</form>


	                                
	                            </td>
	                        </tr>
                        	<c:set var="count" value="${count+1}" scope="request"/>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </section>
        <footer class="row">
            
        </footer>
        <header class="row pt-5 pb-2">
            
        </header>
    </main>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script>
        $('#myTab a').on('click', function (event) {
            event.preventDefault()
            $(this).tab('show')
        })
    </script>
</body>


</html>