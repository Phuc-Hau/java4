<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-3 mt-2">
    <div class="card text-center">
	    <form action="/fpoly/oe/chitietvideo/${param.id}" method="post">
	    	<a style="color: black; text-decoration: none;" href="javascript:;" onclick="parentNode.submit();">
				<div class="card-body">
		            
		            <img style="object-fit: cover;" alt="" width="140" height="180" src="/fpoly/file/${param.poster}">
		            <div style="height: 50px; display: block;   -webkit-line-clamp: 2;overflow: hidden;" class="row border-top mt-2">
		                <p><b>${param.titile}</b></p>
		            </div>
		        </div>
			</a>
	    </form>
		
        <div class="card-footer">
            <a href="/fpoly/oe/like/${param.id}" class="btn btn-success">Like</a>
            <a href="/fpoly/oe/share/${param.id}" class="btn btn-info">Share</a>
        </div>
    </div>
</div>
