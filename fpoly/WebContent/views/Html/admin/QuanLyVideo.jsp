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
    <link rel="stylesheet" href="/fpoly/views/CSS/Qlvideo.css">
</head>

<body>
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
                            <a class="nav-link" href="#">Trang Chủ <span class="sr-only">(current)</span></a>
                        </li>

                        <div class="nav-item">
                            <a href="/fpoly/oe/QLnhanvien" class="nav-link">
                                <i class="fa fa-id-card" aria-hidden="true"></i> Người Dùng
                            </a>
                        </div>

                        <div class="nav-item">
                            <a href="/fpoly/oe/reports" class="nav-link">
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
        <section class="row">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link ${activeedit}" id="videoEdit-tab" data-toggle="tab" href="#videoEdit" role="tab"
                        aria-controls="videoEdit" aria-selected="${!edittrue}">Edit Video</a>
                </li>

                <li class="nav-item" role="presentation">
                    <a class="nav-link  ${activelist}" id="videoList-tab" data-toggle="tab" href="#videoList" role="tab"
                        aria-controls="videoList" aria-selected="${edittrue}">Video List</a>
                </li>

            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade ${showedit}" id="videoEdit" role="tabpanel" aria-labelledby="videoEdit-tab">
                   
                    <form action="" method="post">
                        <div class="card"style="width: 550px;">

                            <div class="card-body">
                                <div class="row">
                                    <div class="col-3">
                                        <div class="border p-3">
                                            <img src="${videoedit.poster}" alt="" class="img-fluid">
                                            
                                        </div>
                                        
                                        <input class="anh" type="file" name="poster">
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
											<c:when test="${videoedit.active}">
												<c:set var="check" value="checked" scope="page"/>
											</c:when>
											<c:otherwise><c:set var="checks" value="checked" scope="page"/></c:otherwise>
										</c:choose>
										
                                        <div class="form-check form-check-inline">
                                            <label><input type="radio" class="form-check-input" value="true" ${check}
                                                    name="active" id="status">Hoạt Động</label>
                                            <label><input type="radio" class="form-check-input" value="false" ${checks}
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
                                <button formaction="/fpoly/oe/video/edits/create" class="btn btn-primary">Create</button>
                                <button formaction="/fpoly/oe/video/edits/update" class="btn btn-warning">Update</button>
                                <button formaction="/fpoly/oe/video/edits/delete" class="btn btn-danger">Delete</button>
                                <button formaction="/fpoly/oe/video/edits/reset" class="btn btn-info">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="tab-pane fade ${showlist}" id="videoList" role="tabpanel" aria-labelledby="videoList-tab">
                    <table class="table table-stripe">
                        <tr style="background-color: antiquewhite;">
                            <td>Phimmoi ID</td>
                            <td>Video Title</td>
                            <td>Lượt Xem</td>
                            <td>Trạng Thái</td>
                            <td>Edit</td>
                        </tr>
                        <c:forEach var="video" items="${listvideo}">
                        	<tr>
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
	                            	<form action="/fpoly/oe/video/edit/${video.id}" method="post">
	                            		<a href="javascript:;" onclick="parentNode.submit();"><i class="fa fa-edit" aria-hidden="true"></i>    Edit</a>
	                            	</form>
	                                <form style="margin-left: 12px;" action="/fpoly/oe/video/delete/${video.id}" method="post">
	                                	<a href="javascript:;" onclick="parentNode.submit();"><i class="fa fa-trash" aria-hidden="true">   Delete</i></a>
	                                </form>
	                                
	                            </td>
	                        </tr>
                        	
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