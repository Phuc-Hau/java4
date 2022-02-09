<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Reports</title>
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
                            <a class="nav-link" href="#">Trang Chủ <span class="sr-only">(current)</span></a>
                        </li>

                        <div class="nav-item">
                            <a href="../oe/nhanvien" class="nav-link">
                                <i class="fa fa-id-card" aria-hidden="true"></i> Người Dùng
                            </a>
                        </div>

                        <div class="nav-item" style="background-color: aqua; border-radius: 27px;">
                            <a href="" class="nav-link">
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
                        <a class="nav-link active" id="yeuthich-tab" data-toggle="tab" href="#yeuthich" role="tab"
                            aria-controls="yeuthich" aria-selected="true">Yêu Thích</a>
                    </li>

                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="nguoidungyeuthich-tab" data-toggle="tab" href="#nguoidungyeuthich" role="tab"
                            aria-controls="nguoidungyeuthich" aria-selected="false">Người Dùng Yêu Thích</a>
                    </li>

                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="chiase-tab" data-toggle="tab" href="#chiase" role="tab"
                            aria-controls="chiase" aria-selected="false">Chia Sẻ</a>
                    </li>

                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="yeuthich" role="tabpanel" aria-labelledby="yeuthich-tab">
                        <table class="table table-borderd mt3">
                            <tr>
                                <td>Video Title</td>
                                <td>Lượt Yêu Thích</td>
                                <td>Ngày Cuối Cùng</td>
                                <td>Cũ Nhất</td>
                            </tr>
                            <tr>
                                <td>Naruto Shippuden Tập 1</td>
                                <td>1000</td>
                                <td>16/03/2002</td>
                                <td>16/03/2022</td>
                            </tr>
                        </table>
                    </div>



                    <div class="tab-pane fade" id="nguoidungyeuthich" role="tabpanel" aria-labelledby="nguoidungyeuthich-tab">
                        <form action="" method="get">
                            <div class="row mt-3">
                                <div class="col">
                                    <div class="form-inline">
                                        <form-group>
                                            <lable>
                                                VideoTitle
                                                <select name="" id="" class="form-control ml-3">
                                                    <option value="">Naruto Shippuden Tập 1</option>
                                                    <option value="">Naruto Shippuden Tập 2</option>
                                                    <option value="">Naruto Shippuden Tập 3</option>
                                                    <option value="">Naruto Shippuden Tập 4</option>
                                                </select>
                                            </lable>
                                            <button class="btn btn-info ml-2">Reports</button>
                                        </form-group>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col mt-3">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>Username</td>
                                            <td>Họ Và Tên</td>
                                            <td>Email</td>
                                            <td>Ngày Yêu Thích</td>
                                        </tr>
                                        <tr>
                                            <td>PS15500</td>
                                            <td>Nguyễn Thanh Tâm</td>
                                            <td>tamnt1603@gmail.com</td>
                                            <td>18/03/2022</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="tab-pane fade" id="chiase" role="tabpanel" aria-labelledby="chiase-tab">
                        <form action="" method="get">
                            <div class="row mt-3">
                                <div class="col">
                                    <div class="form-inline">
                                        <form-group>
                                            <lable>
                                                VideoTitle
                                                <select name="" id="" class="form-control ml-3">
                                                    <option value="">Naruto Shippuden Tập 1</option>
                                                    <option value="">Naruto Shippuden Tập 2</option>
                                                    <option value="">Naruto Shippuden Tập 3</option>
                                                    <option value="">Naruto Shippuden Tập 4</option>
                                                </select>
                                            </lable>
                                            <button class="btn btn-info ml-2">Reports</button>
                                        </form-group>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col mt-3">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>Tên Người Gửi</td>
                                            <td>Email Người Gửi</td>
                                            <td>Email Người Nhận</td>
                                            <td>Ngày Gửi</td>
                                        </tr>
                                        <tr>
                                            <td>Nguyễn Thanh Tâm</td>
                                            <td>tamnt1603@gmail.com</td>
                                            <td>hayzomoney@gmail.com</td>
                                            <td>18/01/2022</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </form>
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