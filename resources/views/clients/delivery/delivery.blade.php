@extends('layouts.header-and-footer')
@section('content')
 <div class="main">
    <div class="content">
    	<div class="section group">
				<div class="grid_1_of_3 images_1_of_3">

					  <h3 style="color: red ; font-weight: bold; text-align: center ">Khi Nào  Tôi Nhận Được Hàng </h3>
					{{--<img src="images/giaohang.png" alt="" style="width: 300px"/>--}}

				</div>
			<br>
				<div class="grid_1_of_3 images_1_of_3">
					  {{--<img src="images/delivery-img2.jpg" alt="" />--}}
					  {{--<h3>Lorem Ipsum is simply dummy text </h3>--}}
					  {{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>--}}
				</div>
				<div class="grid_1_of_3 images_1_of_3">
					  {{--<img src="images/delivery-img3.jpg" alt="" />--}}
					  {{--<h3>Lorem Ipsum is simply dummy text </h3>--}}
					  {{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>--}}
				</div>
		<div class="faqs">
    	  <h2>Frequently Asked Questions</h2>
            <div id="posts">
			    <div class="tab bar">
                    <h4 class="post-title">1.Khi nào tôi nhận được hàng?</h4>
                </div>
			    <div class="panel margin-lr-7">
            		<p>Sau khi quý khách đã đặt hàng thành công, đội ngũ Chăm sóc khách hàng của chúng tôi sẽ tiến hành xác minh đơn hàng, đồng thời gửi cập nhật sớm nhất đến quý khách qua email và tin nhắn SMS.</p>
					<p>Sau khi quá trình xác minh thành công, đơn hàng sẽ được giao đến quý khách trong khoảng thời gian sau đây:</p>
					<table border="0">
						<tr>
							<td>Địa chỉ giao hàng</td>
							<td>Khu vực tập kết hàng hóa</td>
							<td> Thời gian giao hàng</td>
						</tr>
						<tr>
							<td> Thành phố HCM</td>
							<td>Thành phố Hà Nội</td>
							<td>2-8 ngày làm việc</td>
						</tr>
						<tr>
							<td>Thành phố HCM</td>
							<td>Thành phố HCM</td>
							<td>1-3 ngày làm việc</td>
						</tr>
						<tr>
							<td>Thành phố Hà Nội</td>
							<td>Thành phố Hà Nội</td>
							<td>1-3 ngày làm việc</td>
						</tr>
						<tr>
							<td>Thành phố Hà Nội</td>
							<td>Thành phố HCM</td>
							<td>2-8 ngày làm việc</td>

						</tr>
						<tr>
							<td>Các khu vực khác</td>
							<td>Hà Nội , Hồ Chí Minh</td>
							<td>2-8 ngày làm việc</td>
						</tr>
					</table>
					<p>Quý khách vui lòng tham khảo tại www.shoppe.vn/shipping-new/ để biết thời gian dự kiến giao hàng cụ thể hơn cho từng khu vực.

						Xin lưu ý thời gian giao hàng dự kiến ở trên chỉ áp dụng cho các đơn hàng của thương nhân thành viên trong nước. Để biết thêm chi tiết về thời gian giao hàng của các đơn hàng được vận chuyển từ các nước khác vui lòng xem tại đây.

						Ngoài ra, quý khách có thể kiểm tra tình trạng đơn hàng bất cứ lúc nào tại www.shoppe.vn/kiem-tra-don-hang.</p>
			    </div>		   
                <div class="tab bar">
                     <h4 class="post-title"> 2.Tôi đặt nhiều sản phẩm trong cùng 1 đơn hàng, nhưng tôi chỉ nhận được 1 sản phẩm, các sản phẩm còn lại khi nào tôi nhận được?</h4>
                </div>
				<div class="panel margin-lr-7">
	        		 <p>Shoppe là sàn thương mại điện tử với rất nhiều gian hàng thành viên khác nhau. Đơn hàng của quý khách có thể đã có 1 hoặc nhiều sản phẩm từ các gian hàng thành viên.

						 Vì vậy, thời gian nhận hàng cho các sản phẩm trong đơn hàng cũng sẽ khác nhau. Tuy nhiên, quý khách có thể yên tâm là tiền phí vận chuyển (nếu có) chỉ tính 1 lần như đã xác nhận với quý khách.</p>
                </div>
                <div class="tab bar">
                     <h4 class="post-title"> 3.Làm thế nào để kiểm tra thời gian giao hàng của một sản phẩm?</h4>
                </div>
				<div class="panel margin-lr-7">
	        		 <p>Ngay tại trang sản phẩm, xin vui lòng chọn tỉnh/thành phố mà quý khách muốn giao hàng đến. Thời gian dự kiến giao hàng sẽ được thể hiện ngay bên dưới.</p>
                </div>
				<div class="tab bar">
                    <h4 class="post-title"> 4.Tôi có thể tự chọn ngày giao hàng cho đơn hàng của tôi được không?</h4>
            	</div>
			 	<div class="panel margin-lr-7">
	        		<p>Hiện tại các đối tác giao nhận của Lazada vẫn chưa thể hỗ trợ quý khách chọn giờ giao hàng.

						Tuy nhiên mong quý khách yên tâm chúng tôi sẽ sớm cải thiện vấn đề này để mang lại cho quý khách trải nghiệm mua sắm tốt hơn.</p>
             	</div>
                <div class="tab bar">
                    <h4 class="post-title"> 5.Shoppe có giao hàng vào cuối tuần và ngày lễ không?</h4>
                </div>
			    <div class="panel margin-lr-7">
	        	     <p>Hiện tại Shoppe chưa cung cấp dịch vụ giao hàng vào cuối tuần và ngày lễ</p>
                </div>
                <div class="tab bar">
                    <h4 class="post-title"> 6.Tôi đang rất cần sản phẩm, Shoppe có thể giao gấp cho tôi được không?</h4>
            	</div>
				<div class="panel margin-lr-7">
                      <p>Quy trình giao hàng của đơn vị vận chuyển lá quy trình khép kín, mọi đơn hàng sẽ được chuyển đến nhân viên giao nhận sớm nhất có thể để giao đến quý khách.

						  Shoppe và đơn vị vận chuyển sẽ luôn cố gắng hết sức để quý khách nhận được đơn hàng trong thời gian sớm nhất.</p>
                </div>
                <div class="tab bar">
                    <h4 class="post-title"> 7.Tôi vừa nhận được email xác nhận sản phẩm trong đơn hàng đã được chuyển cho đơn vị vận chuyển. Vậy khi nào tôi nhận được hàng?</h4>
            	</div>
				<div class="panel margin-lr-7">
	        	     <p>Thời gian giao hàng sau khi đơn hàng đã chuyển cho đơn vị vận chuyển sẽ tùy vào địa chỉ nhận hàng của quý khách:

						 Trong khu vực TPHCM và Hà Nội: 1-2 ngày làm việc
						 Ngoài khu vực TPHCM và Hà Nội: 3-4 ngày làm việc
					 </p>
                </div>
                <div class="tab bar">
                    <h4 class="post-title"> 8.Tại sao đơn hàng tôi đặt lại được giao thành nhiều kiện khác nhau?</h4>
            	</div>
				<div class="panel margin-lr-7">
	        	     <p>Shoppe sẽ tách đơn hàng của quý khách thành nhiều kiện hàng khác nhau trong các trường hợp sau đây:

						 Sản phẩm to quá khổ: 1 số sản phẩm không thể vận chuyển trong 1 thùng hàng vì quá to
						 Các sản phẩm trong đơn hàng thuộc các đơn vị gian hàng thành viên khác nhau:
						 do khác đơn vị cung cấp hàng nên các kiện hàng sẽ được giao vào các thời điểm khác nhau.</p>
                </div>
                <div class="tab bar">
                    <h4 class="post-title"> 9.Nếu tôi đi vắng lúc Shoppe giao hàng đến thì làm thế nào?</h4>
            	</div>
				<div class="panel margin-lr-7">
                      <p>Quý khách có thể nhờ người khác nhận hàng giúp, tuy nhiên chúng tôi sẽ cần một thư ủy quyền với chữ ký xác nhận của quý khách, trong đó nêu rõ về người được ủy quyền nhận đơn hàng.

						  Quý khách cũng có thể thông báo cho chúng tôi việc thay đổi về người nhận hàng tại www.Shoppe.vn/contact ngay sau khi đặt hàng. Người nhận hàng sẽ cần xuất trình chứng minh thư nhân dân hợp lệ cùng với thư uỷ quyền của quý khách.</p>
                </div>
                <div class="tab bar">
                    <h4 class="post-title"> 10.Có khu vực hạn chế nào mà Shoppe không nhận giao hàng đến không?</h4>
            	</div>
				<div class="panel margin-lr-7">
	        	     <p>Shoppe có thể giao hàng đến mọi tỉnh thành và khu vực trong nước.

						 Ngoài đội ngũ giao hàng chuyên nghiệp và hùng hậu riêng của Shoppe, chúng tôi còn liên kết với các nhà vận chuyển lớn khác như Bưu điện Việt Nam, Giao Hàng Nhanh, và Viettel để đảm bảo việc giao hàng được thực hiện nhanh chóng và đúng hẹn.

						 Tuy nhiên, một số sản phẩm có kích thước cồng kềnh như các sản phẩm điện lạnh (máy lạnh, tủ lạnh...) hoặc các sản phẩm gia dụng lớn (máy giặt, tủ, giường, kệ gỗ...) và các sản phẩm thuộc một số đối tác bán hàng nhất định có thể có chính sách giao hàng riêng</p>
                </div>
		       </div>
		      </div>	
         </div> 
    </div>
 </div>
   @endsection