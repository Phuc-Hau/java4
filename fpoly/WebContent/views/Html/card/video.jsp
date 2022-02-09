<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-3 mt-2">
    <div class="card text-center">
	    <form action="../oe/chitietvideo/${param.id}" method="post">
	    	<a style="color: black; text-decoration: none;" href="javascript:;" onclick="parentNode.submit();">
				<div class="card-body">
		            <iframe src="${param.id}" width="140" height="180"></iframe>
		            <div class="row border-top mt-2">
		                <b>${param.titile}</b>
		            </div>
		        </div>
			</a>
	    </form>
		
        <div class="card-footer">
            <a href="" class="btn btn-success">Like</a>
            <a href="" class="btn btn-info">Share</a>
        </div>
    </div>
</div>
