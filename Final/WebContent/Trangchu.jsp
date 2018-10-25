<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta html-equiv ="Content-Type" content="text/html; charset= UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="jquery/jquery.js"></script>
<script src="popper/popper.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container-fluid">
		<div id="carousel1" class="carousel slide" data-ride="carousel"
			data-interval="3000">
			<div class="carousel-inner row w-100 mx-auto in1" role="listbox">
				<div class="carousel-item col-md-3 it1 active">
					<div class="card" style="height: 400px">
						<img src="image/channho.jpg">
						<div class="card-img-overlay">
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Chi tiết</button>
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Đặt vé</button>
						</div>
						<p class="card-text">CHÂN NHỎ</p>
					</div>
				</div>

				<div class="carousel-item col-md-3 it1">
					<div class="card" style="height: 400px">
						<img src="image/hoboi.jpg">
						<div class="card-img-overlay">
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Chi tiết</button>
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Đặt vé</button>
						</div>
						<p class="card-text">HỒ BƠI</p>
					</div>
				</div>

				<div class="carousel-item col-md-3 it1">
					<div class="card" style="height: 400px">
						<img src="image/quyco.jpg">
						<div class="card-img-overlay">
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Chi tiết</button>
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Đặt vé</button>
						</div>
						<p class="card-text">QUÝ CÔ</p>
					</div>
				</div>

				<div class="carousel-item col-md-3 it1">
					<div class="card" style="height: 400px">
						<img src="image/daichien.jpg">
						<div class="card-img-overlay">
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Chi tiết</button>
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Đặt vé</button>
						</div>
						<p class="card-text">ĐẠI CHIẾN</p>
					</div>
				</div>

				<div class="carousel-item col-md-3 it1">
					<div class="card" style="height: 400px">
						<img src="image/venom.png">
						<div class="card-img-overlay">
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Chi tiết</button>
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Đặt vé</button>
						</div>
						<p class="card-text">VENOM</p>
					</div>
				</div>

				<div class="carousel-item col-md-3 it1">
					<div class="card" style="height: 400px">
						<img src="image/hoboi.jpg">
						<div class="card-img-overlay">
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Chi tiết</button>
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Đặt vé</button>
						</div>
						<p class="card-text">HỒ BƠI</p>
					</div>
				</div>

				<div class="carousel-item col-md-3 it1">
					<div class="card" style="height: 400px">
						<img src="image/quyco.jpg">
						<div class="card-img-overlay">
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Chi tiết</button>
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Đặt vé</button>
						</div>
						<p class="card-text">QUÝ CÔ</p>
					</div>
				</div>

				<div class="carousel-item col-md-3 it1">
					<div class="card" style="height: 400px">
						<img src="image/daichien.jpg">
						<div class="card-img-overlay">
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Chi tiết</button>
							<button type="button" class="btn btn-primary btn-lg btn-block"
								id="btncard">Đặt vé</button>
						</div>
						<p class="card-text">ĐẠI CHIẾN</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carousel1" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next text-faded" href="#carousel1"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
	
</body>
<script>
$('#carousel1').on('slide.bs.carousel', function (e) {

    var $e = $(e.relatedTarget);
    var idx = $e.index();
    var itemsPerSlide = 4;
    var totalItems = $('.it1').length;
    
    if (idx >= totalItems-(itemsPerSlide-1)) {
        var it = itemsPerSlide - (totalItems - idx);
        for (var i=0; i<it; i++) {
            // append slides to end
            if (e.direction=="left") {
                $('.it1').eq(i).appendTo('.in1');
            }
            else {
                $('.it1').eq(0).appendTo('.in1');
            }
        }
    }
});
</script>
</html>