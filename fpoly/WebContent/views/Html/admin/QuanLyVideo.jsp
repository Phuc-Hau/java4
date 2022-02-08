<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Quáº£n LÃ½</title>
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

                        <div class="nav-item">
                            <a href="../oe/reports" class="nav-link">
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
                    <a class="nav-link active" id="videoEdit-tab" data-toggle="tab" href="#videoEdit" role="tab"
                        aria-controls="videoEdit" aria-selected="true">Edit Video</a>
                </li>

                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="videoList-tab" data-toggle="tab" href="#videoList" role="tab"
                        aria-controls="videoList" aria-selected="false">Video List</a>
                </li>

            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="videoEdit" role="tabpanel" aria-labelledby="videoEdit-tab">
                    <form action="" method="post">
                        <div class="card">

                            <div class="card-body">
                                <div class="row">
                                    <div class="col-3">
                                        <div class="border p-3">
                                            <img src="../images/avengerposter.jpg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                    <div class="col-9">
                                        <div class="form-group">
                                            <label for="phimmoiId">Phimmoi ID</label>
                                            <input type="text" class="form-control" name="phimmoiId" id="phimmoiId"
                                                aria-describedby="phimmoiIdHid" placeholder="Phimmoi ID">
                                            <small id="phimmoiIdHid" class="form-text text-muted">Phimmoi ID your
                                                required</small>
                                        </div>

                                        <div class="form-group">
                                            <label for="videoTitle">Video Title</label>
                                            <input type="text" class="form-control" name="videoTitle" id="videoTitle"
                                                aria-describedby="videoTitleHid" placeholder="Video Title">
                                            <small id="videoTitleHid" class="form-text text-muted">Video Title is
                                                required</small>
                                        </div>

                                        <div class="form-group">
                                            <label for="luotxem">Lượt Xem</label>
                                            <input type="text" class="form-control" name="luotxem" id="luotxem"
                                                aria-describedby="luotxemHid" placeholder="Lượt Xem">
                                            <small id="luotxemHid" class="form-text text-muted">Lượt Xem </small>
                                        </div>

                                        <div class="form-check form-check-inline">
                                            <label><input type="radio" class="form-check-input" value="true"
                                                    name="status" id="status">Hoạt Động</label>
                                            <label><input type="radio" class="form-check-input" value="false"
                                                    name="status" id="status">Không Hoạt Động</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label for="description">Ghi Chú</label>
                                        <textarea name="description" id="description" cols="30" rows="4"
                                            class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-muted">
                                <button class="btn btn-primary">Create</button>
                                <button class="btn btn-warning">Update</button>
                                <button class="btn btn-danger">Delete</button>
                                <button class="btn btn-info">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="tab-pane fade" id="videoList" role="tabpanel" aria-labelledby="videoList-tab">
                    <table class="table table-stripe">
                        <tr>
                            <td>Phimmoi ID</td>
                            <td>Video Title</td>
                            <td>Lượt Xem</td>
                            <td>Trạng Thái</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>PM00001</td>
                            <td>Naruto Shippuden Tập 1</td>
                            <td>1000</td>
                            <td>Hoạt Động</td>
                            <td>
                                <a href=""><i class="fa fa-edit" aria-hidden="true"></i>    Edit</a>
                                <a href=""><i class="fa fa-trash" aria-hidden="true">   Delete</i></a>
                            </td>
                        </tr>
                    </table>
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