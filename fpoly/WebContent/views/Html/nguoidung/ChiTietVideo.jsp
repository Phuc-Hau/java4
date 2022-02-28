<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chi Tiết video</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../views/CSS/chitiet.css">
</head>

<body>
    <main class="container">
        <header class="row pt-5 pb-2">
            <div class="col-9">
                <h1>Chi Tiết Video</h1>
            </div>
        </header>


        <div class="row">
            <div class="col-7 cio7">
                <div class="card text-center mt-3">

                    <div class="card-body" >
                        <div class="row">
                            <iframe src="${video.id}" width="950" height="450"></iframe>
                        </div>
						<div style="display: flex;">
							<div class="p-2" style="width: 76%; text-align: left;">
                            	<b>${video.titile} </b> </br>
	                        </div>
	                     
							<div class="text-right" style="margin-top: 22px;">
		                        <a href="/fpoly/oe/like/${param.id}" class="btn btn-success">Like</a>
          						<a href="/fpoly/video/share/?idvideo=${param.id}" class="btn btn-info">Share</a>
	                    	</div>
						</div>
                        
                    </div>

                    

                </div>
            </div>


            <div class="col-5 cio5">

                <div class="row border mt-3 mb-3">
                    <div class="col-2">
                        <img src="/fpoly/file/${video.poster}" alt="" class="img-fluid">
                    </div>

                    <div class="col-10 border-left">Naruto Shippuden Tập 1</div>
                </div>

                <div class="row border mt-3 mb-3">
                    <div class="col-2">
                        <img src="/fpoly/file/${video.poster}" alt="" class="img-fluid">
                    </div>

                    <div class="col-10 border-left">Naruto Shippuden Tập 2</div>
                </div>

                <div class="row border mt-3 mb-3">
                    <div class="col-2">
                        <img src="/fpoly/file/${video.poster}" alt="" class="img-fluid">
                    </div>

                    <div class="col-10 border-left">Naruto Shippuden Tập 3</div>
                </div>

                <div class="row border mt-3 mb-3">
                    <div class="col-2">
                        <img src="/fpoly/file/${video.poster}" alt="" class="img-fluid">
                    </div>

                    <div class="col-10 border-left">Naruto Shippuden Tập 4</div>
                </div>

                <div class="row border mt-3 mb-3">
                    <div class="col-2">
                        <img src="/fpoly/file/${video.poster}" alt="" class="img-fluid">
                    </div>

                    <div class="col-10 border-left">Naruto Shippuden Tập 5</div>
                </div>

                <div class="row border mt-3 mb-3">
                    <div class="col-2">
                        <img src="/fpoly/file/${video.poster}" alt="" class="img-fluid">
                    </div>

                    <div class="col-10 border-left">Naruto Shippuden Tập 6</div>
                </div>

            </div>
        </div>





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