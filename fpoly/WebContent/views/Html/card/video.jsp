<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-3 mt-2">
    <div class="card text-center">

        <div class="card-body">
            <iframe src="${param.video}" width="140" height="180"></iframe>
            <div class="row border-top mt-2">
                <b>${param.titile}</b>
            </div>
        </div>
        <div class="card-footer">
            <a href="" class="btn btn-success">Like</a>
            <a href="" class="btn btn-info">Share</a>
        </div>
    </div>
</div>