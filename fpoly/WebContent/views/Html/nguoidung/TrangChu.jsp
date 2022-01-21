<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>Trang Chủ</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../fontawesome-free-5.15.4-web/css/all.css">
</head>

<body>
    <main class="container">
        <header class="row pt-5 pb-2">
            <div class="col-9">
                <h1>Phimmoi...!</h1>
            </div>
            <div class="col-3 text-right">
                <img src="../images/avengerposter.jpg" width="100" height="50" alt="" class="mr-4">
            </div>
        </header>

        <nav class="row">
            <nav class="col navbar navbar-expand-sm navbar-light bg-light col">
                <a class="navbar-brand" href="#">Phimmoi</a>
                <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
                    data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavId">
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">
                                <i class="fa fa-home" aria-hidden="true"></i>
                                <span class="sr-only">(current)</span></a>
                        </li>


                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fa fa-id-info" aria-hidden="true"></i>
                                Trang Chủ</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fa fa-id-info" aria-hidden="true"></i>
                                Phim Nhật Bản</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fa fa-id-info" aria-hidden="true"></i>
                                Phim US & UK</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fa fa-id-info" aria-hidden="true"></i>
                                Phim Hàn Quốc</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fa fa-comment" aria-hidden="true"></i>
                                Các Video Ưa Thích</a>
                        </li>


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                Tài Khoản</a>
                            <div class="dropdown-menu" aria-labelledby="dropdownId">
                                <a class="dropdown-item" href="../oe/dangnhap">Đăng Nhập</a>
                                <a class="dropdown-item" href="../oe/dangky">Đăng Ký</a>
                                <a class="dropdown-item" href="../oe/forgetpass">Quên Mật Khẩu</a>
                                <a class="dropdown-item" href="#">Đăng Xuất</a>
                            </div>
                        </li>
                    </ul>

                </div>
            </nav>
        </nav>
        <section class="row">
            <div class="col-9">
                <div class="row p-2">

						<jsp:include page="../card/video.jsp">
							<jsp:param value="${ite.img}" name="img"/>
							<jsp:param value="${ite.video}" name="name"/>
							<jsp:param value="${ite.titile}" name="titile"/>
						</jsp:include>
						
						<a href="">
                    <div class="col-3 mt-2">
                        <div class="card text-center">
                            <div class="card-body">
                            	<iframe src="https://youtube.com/embed/9perW4O3apI" width="140" height="180"></iframe>
                                <div class="row border-top mt-2">
                                    <b>Mùa Xuân Đầu Tiên</b>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="" class="btn btn-success">Like</a>
                                <a href="" class="btn btn-info">Share</a>
                            </div>
                        </div>
                    </div>
                    	</a>


                    <div class="col-3 mt-2">
                        <div class="card text-center">

                            <div class="card-body">
                                <iframe src="https://youtube.com/embed/wfytjt1DLRk" width="140" height="180"></iframe>
                                <div class="row border-top mt-2">
                                    <b>Hoa Cỏ Mùa Xuân</b>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="" class="btn btn-success">Like</a>
                                <a href="" class="btn btn-info">Share</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-3 mt-2">
                        <div class="card text-center">

                            <div class="card-body">
                                <iframe src="https://youtube.com/embed/dPzT0oFX3AE" width="140" height="180"></iframe>
                                <div class="row border-top mt-2">
                                    <b>Xuân Này Không Về</b>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="" class="btn btn-success">Like</a>
                                <a href="" class="btn btn-info">Share</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-3 mt-2">
                        <div class="card text-center">

                            <div class="card-body">
                                <iframe src="https://youtube.com/embed/jzEvgbipfKk" width="140" height="180"></iframe>
                                <div class="row border-top mt-2">
                                    <b>Ngày Xuân</b>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="" class="btn btn-success">Like</a>
                                <a href="" class="btn btn-info">Share</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-3 mt-2">
                        <div class="card text-center">

                            <div class="card-body">
                                <iframe src="https://youtube.com/embed/QAzDykZOmXU" width="140" height="180"></iframe>
                                <div class="row border-top mt-2">
                                    <b>Đi Về Nhà</b>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="" class="btn btn-success">Like</a>
                                <a href="" class="btn btn-info">Share</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-3 mt-2">
                        <div class="card text-center">

                            <div class="card-body">
                                <iframe src="https://youtube.com/embed/lu4_7bRdgSI" width="140" height="180"></iframe>
                                <div class="row border-top mt-2">
                                    <b>Nghìn Lẻ 1 Đêm</b>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="" class="btn btn-success">Like</a>
                                <a href="" class="btn btn-info">Share</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-3 mt-2">
                        <div class="card text-center">

                            <div class="card-body">
                                <iframe src="https://youtube.com/embed/JuV58Rci3CI" width="140" height="180"></iframe>
                                <div class="row border-top mt-2">
                                    <b>Ngôi Nhà Hoa Hồng</b>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="" class="btn btn-success">Like</a>
                                <a href="" class="btn btn-info">Share</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-3 mt-2">
                        <div class="card text-center">

                            <div class="card-body">
                                <iframe src="https://youtube.com/embed/WVJ9lMar62o" width="140" height="180"></iframe>
                                <div class="row border-top mt-2">
                                    <b>Hướng Dẫn Xây Nhà</b>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="" class="btn btn-success">Like</a>
                                <a href="" class="btn btn-info">Share</a>
                            </div>
                        </div>
                    </div>
                    		

                </div>

                <div class="row">
                    <div class="col">


                        <nav aria-label="Page navigation">
                            <ul class="pagination justify-content-center">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>


                    </div>
                </div>
            </div>

            <div class="col-3">
                <div class="row mt-3 mb-3">
                    <div class="col">
                        <div class="card">
                            <div class="card-header">
                                <i class="fa fa-thumbs-up" aria-hidden="true"></i>Yêu Thích
                            </div>

                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Happy New Year 2022</li>
                                <li class="list-group-item">Happy Birth Day 2022</li>
                                <li class="list-group-item">Naruto Shippuden</li>
                                <li class="list-group-item">One Piece</li>
                                <li class="list-group-item">Doremon Chú Mèo Máy Đến Từ Tương Lai</li>
                                <li class="list-group-item">Rap Việt Mùa 2</li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>

        </section>
        <footer class="row">
            <div class="col text-center border-top">
                <strong>Phimmoi &copy;2021. Luôn vì bạn.</strong>
            </div>
        </footer>
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
</body>


</html>