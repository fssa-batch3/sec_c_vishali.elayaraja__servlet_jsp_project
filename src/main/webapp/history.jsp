<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- This is profile-section -->
	<div class="account-section">
		<div class="side-item">
			<div class="page">
				<img class="pro_image"
					src="../../assets/New_collection/Acc-cover.png" alt="profile">
				<label for="upload-file"><i class="fa-solid fa-camera"
					style="color: #a322ee;"></i></label> <input type="file"
					accept="image/jpeg,image/png,image/jpg" id="upload-file">
			</div>
			<div class="side-menu">
				<ul>
					<li><a href="/liveon-web/ProfileServelt" class="active"
						id="profile1"><span class="fa-solid fa-circle-user"></span> <span>My
								Profile</span></a></li>
					<li><a href="" autofocus class="active" id="order_history1"><span
							class="fa-solid fa-bag-shopping"></span> <span>Orders</span></a></li>
					<li><a href="../../Page/User-Profile/user-appointment.html"
						class="active" id="appointment1"><span
							class="fa-solid fa-calendar-check"></span> <span>Appointments</span></a>
					</li>

					<li><a href="/liveon-web/LogoutServlet" id="log"
						class="active"><span class="fa-solid fa-right-from-bracket"></span>
							<span id="log">Logout</span></a></li>
					<li><a href="../../Page/Home/home.html" class="active"><span
							class="fa-solid fa-left-long"></span> <span>Exit</span></a></li>

				</ul>
			</div>
		</div>
		<div class="main-item">
			<main>
				<!-- This is order history -->
				<div id="order_history" class="display_cls">
					<h1>My Orders</h1>
					<%
					List<Orders> orderlist = (List<Orders>) request.getAttribute("OrderslistByUserId");
					if (orderlist != null) {
						for (Orders order : orderlist) {
					%>
					<div class="order-his">
						<div class="or-contain">
							<div class="order-pic">
								<img id="order-image1"
									src="<%=order.getSparepart().getImageUrl().get(0)%>">
							</div>
							<div class="order-ditail">
								<h4 id="order-name"><%=order.getSparepart().getName()%></h4>
								<p id="order-quantity"><%=order.getPaymentmethod()%></p>
							</div>
							<div class="order-price">
								<p id="order-price"><%=order.getSparepart().getPrice()%></p>
							</div>
							<div class="oeder-address">

								<span id="street"><%=order.getStreetAddress()%></span> <span
									id="city"><%=order.getCity()%></span> <span id="pincode"><%=order.getPostalCode()%></span>
							</div>
						</div>
					</div>
					<%
					}
					} else {
					%>
					<h1>No records found</h1>
					<%
					}
					%>
				</div>
			</main>
		</div>
	</div>
	<script src="../../Page/JS files/user-profile.js"></script>


</body>
</html>