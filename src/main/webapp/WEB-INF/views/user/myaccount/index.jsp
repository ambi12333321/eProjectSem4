<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>


<mt:template_home title="Category">
	<jsp:attribute name="content">
				<ul class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a></li>
					<li><a href="#">Settings</a></li>
					<li><a href="#"> Profile</a></li>
				</ul>
			<!--Right Part Start -->
			<aside class="col-sm-3 hidden-xs" id="column-right">
				<h2 class="subtitle">Settings</h2>
				<div class="list-group">
					<ul class="list-item">
						<li> <a href="${pageContext.request.contextPath}/user/myaccount"><i class="fa fa-user-circle"></i> <span style="margin-left: 10px">Profile</span> </a>
						</li>
						<li><a href="${pageContext.request.contextPath}/user/myaccount/password"><i class="fa fa-key"></i>	<span style="margin-left: 10px">Change Password</span> </a>
						</li>
						<li><a href="${pageContext.request.contextPath}/user/myaccount/order"><i class="fa fa-file-text-o"></i> <span style="margin-left: 10px">Order History</span> </a>
						</li>
						<li><a href="${pageContext.request.contextPath}/user/myaccount/mystore"><i class="fa fa-tasks"></i> <span style="margin-left: 10px">My Store</span> </a>
						</li>			
					</ul>
				</div>
			</aside>
			<!--Right Part End -->
		
		<div class="row" >
			<!--Middle Part Start-->
			<div class="col-sm-8" id="content" style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 1px 3px 1px; margin-bottom: 30px">
				<h2 class="title">Account Settings</h2>
				<p class="lead">Hello, <strong>${user.username }!</strong> - To update your account information.</p>
				<form method="post" action="${pageContext.request.contextPath}/user/myaccount/changes">
					<div class="row" >
						<div class="col-sm-12">
							<fieldset id="personal-details">
								<legend>Personal Details</legend>
								<div class="form-group required">
									<label for="input-firstname" >Username</label>
									<input type="text" class="form-control" id="input-firstname"  value="${user.username }" name="firstname" readonly="readonly">
								</div>
								<div class="form-group required">
									<label for="input-lastname" class="control-label">Name</label>
									<input type="text" class="form-control" id="input-lastname" placeholder="Last Name" value="${user.fullname }" name="fullname">
								</div>
								<div class="form-group required">
									<label for="input-email" class="control-label">E-Mail</label>
									<input type="email" class="form-control" id="input-email" placeholder="E-Mail" value="${user.email }" name="email">
								</div>
								<div class="form-group required">
									<label for="input-telephone" class="control-label">Telephone</label>
									<input type="tel" class="form-control" id="input-telephone" placeholder="Telephone" value="${user.phone }" name="phone">
								</div>
								<div class="form-group">
									<label for="input-fax" class="control-label">Address</label>
									<input type="text" class="form-control" id="input-fax" placeholder="address" value="${user.address }" name="address">
								</div>
							</fieldset>
							<br>
						</div>
					</div>
					<div class="buttons clearfix" style="margin: 10px">
						<div class="pull-right">
							<input type="submit" class="btn btn-md btn-primary" value="Save Changes">
						</div>
					</div>
				</form>
			</div>
			<!--Middle Part End-->
		
		</div>
	
	</jsp:attribute>
</mt:template_home>
