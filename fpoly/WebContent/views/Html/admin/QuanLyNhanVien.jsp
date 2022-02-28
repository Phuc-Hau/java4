<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
                            <a class="nav-link" href="/fpoly/oe/trangchu">Trang Chủ <span class="sr-only">(current)</span></a>
                        </li>

                        <div class="nav-item" style="background-color: aqua; border-radius: 27px;">
                            <a href="/fpoly/oe/QLnhanvien" class="nav-link">
                                <i class="fa fa-id-card" aria-hidden="true"></i> Người Dùng
                            </a>
                        </div>

                        <div class="nav-item">
                            <a href="/fpoly/oe/reports" class="nav-link">
                                <i class="fa fa-comments" aria-hidden="true"></i> Báo Cáo
                            </a>
                        </div>

                        <li class="nav-item">
                            <a class="nav-link" href="../oe/QuanLyvideo"><i class="fa fa-info" aria-hidden="true"></i> Video</a>
                        </li>

                    </ul>

                </div>
            </nav>
        </nav>
        
        <section class="row">
            <div class="col mt-4">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active" id="videoEdit-tab" data-toggle="tab" href="#videoEdit" role="tab"
                            aria-controls="videoEdit" aria-selected="true">User Edit</a>
                    </li>

                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="videoList-tab" data-toggle="tab" href="#videoList" role="tab"
                            aria-controls="videoList" aria-selected="false">User List</a>
                    </li>

                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="videoEdit" role="tabpanel"
                        aria-labelledby="videoEdit-tab">
                        <form action="" method="post">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="username">Username</label>
                                                <input type="text" value="${useredit.id}" class="form-control" name="id" id="idd"
                                                    aria-describedby="usernameHid" placeholder="Username">
                                                <small id="usernameHid" class="form-text text-muted">Username is
                                                    required</small>
                                            </div>

                                            <div class="form-group">
                                                <label for="fullname">Fullname</label>
                                                <input type="text" value="${useredit.fullname}" class="form-control" name="fullname" id="fullname"
                                                    aria-describedby="fullnameHid" placeholder="Fullname">
                                                <small id="fullnameHid" class="form-text text-muted">Fullname is
                                                    required</small>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="password">Password</label>
                                                <input type="password" value="${useredit.passwordd}" class="form-control" name="passwordd"
                                                    id="passwordd" aria-describedby="passwordHid" placeholder="Password">
                                                <small id="passwordHid" class="form-text text-muted">Password is
                                                    required</small>
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input type="text" value="${useredit.email}" class="form-control" name="email" id="email"
                                                    aria-describedby="emailHid" placeholder="Email">
                                                <small id="emailHid" class="form-text text-muted">Email is
                                                    required</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer text-muted">
                                    <button formaction="/fpoly/oe/user/edits/create" class="btn btn-primary">Create</button>
                                    <button formaction="/fpoly/oe/user/edits/update" class="btn btn-warning">Update</button>
                                    <button formaction="/fpoly/oe/user/edits/delete" class="btn btn-danger">Delete</button>
                                    <button formaction="/fpoly/oe/user/edits/reset" class="btn btn-info">Reset</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="tab-pane fade${showuseredit}" id="videoList" role="tabpanel" aria-labelledby="videoList-tab">
                        <table class="table table-stripe">
                            <tr style="background-color: antiquewhite;">
                            	<td>STT</td>
                                <td>Username</td>
                                <td>Họ Và Tên</td>
                                <td>Email</td>
                                <td>Chức Vụ</td>
                                <td>&nbsp;</td>
                            </tr>

                            <c:set var="count" value="${0}" scope="request" />
                            <c:forEach var="users" items="${listuser}">
                            	<tr>

                            		<c:set var="count" value="${count+1}" scope="request"/>
                            		<td>${count}</td>
	                                <td>${users.id}</td>
	                                <td>${users.fullname}</td>
	                                <td>${users.email}</td>

	                                	<c:choose>
	                                		<c:when test="${user.adminn}">Quản Lý</c:when>
	                                		<c:otherwise>Người Dùng</c:otherwise>
	                                	</c:choose>
	                                </td>
	                                <td>
	                                <form action="/fpoly/oe/user/edit/${user.id}" method="post">
	                                	<a href="javascript:;" onclick="parentNode.submit();"><i class="fa fa-edit" aria-hidden="true"></i>  Edit</a>
	                                </form>
	                                <form action="/fpoly/oe/user/delete/${user.id}" method="post">
	                                	<a href="javascript:;" onclick="parentNode.submit();"><i class="fa fa-trash" aria-hidden="true">   Delete</i></a>
	                                </form>
	                                </td>
                           		</tr>
                            </c:forEach>
                            
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <footer class="row">
            
        </footer>
        <header class="row pt-5 pb-2">
            <div class="col-9">
            
            </div>
            <div class="col-3 text-right">
                <img src="../images/avengerposter.jpg" width="100" height="50" alt="" class="mr-4">
            </div>
            <h2>${message}</h2>
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