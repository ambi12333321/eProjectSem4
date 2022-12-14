<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:template_superadmin title="Order">
	<jsp:attribute name="content">
		 <div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h2>View All</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item">Order Management</li>
                        <li class="breadcrumb-item active">View All</li>
                    </ul>
                </div>
            </div>
        </div>
        

        <div class="container-fluid">   
            <div class="row clearfix">
                <div class="col-12">
                    <div class="card top_report">
                        <div class="row clearfix">
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x icon-basket text-col-blue"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>ALL ORDER </h6>
                                            <span class="font700">${allorder.size() }</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-blue mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="100"></div>
                                    </div>
                                    <small class="text-muted">Products are listed for sale</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x icon-basket text-col-green"></i>
                                            <i class="fa fa-1x fa-chevron-circle-down text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>ORDER SUCCESS</h6>
                                            <span class="font700">${ordersuccess.size() }</span>
                                            <c:set var="percentSuccess" value="${(ordersuccess.size()/allorder.size())*100}"></c:set>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-green mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="<fmt:formatNumber type="number"  maxFractionDigits="1" value="${percentSuccess }" />"></div>
                                    </div>
                                    
                                    <small class="text-muted"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${percentSuccess }" />% compared to last week</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x icon-basket text-col-green"></i>
                                            <i class="fa fa-1x fa-ban text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>ORDER CANCELED</h6>
                                            <span class="font700 text-danger">${ordercancelled.size() }</span>
                                            <c:set var="percentCancel" value="${(ordercancelled.size()/allorder.size())*100}"></c:set>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-orange mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="<fmt:formatNumber type="number"  maxFractionDigits="1" value="${percentCancel }" />"></div>
                                    </div>
                                    <small class="text-muted"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${percentCancel }" />% compared to last week</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x icon-basket text-col-green"></i>
                                             <i class="fa fa-1x icon-speedometer text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>ORDER PENDING</h6>
                                            <span class="font700">${orderpending.size() }</span>
                                            <c:set var="percentPending" value="${(orderpending.size()/allorder.size())*100}"></c:set>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-yellow mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="<fmt:formatNumber type="number"  maxFractionDigits="1" value="${percentPending }" />"></div>
                                    </div>
                                    <small class="text-muted"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${percentPending }" />% compared to last week</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>Order List</h2>
                           
                           
                        </div>
                        <div class="body">
                            <div class="input-group mb-3">
                                <div class="row">
                                	<form action="${pageContext.request.contextPath}/superadmin/order/searchbyid" method="get">
	                                    <div class="input-group-append col-sm-12">
	                                       <input type="number" min="0" class="form-control" placeholder="Search #OrderId" name="orderId">
	                                        <button class="btn btn-outline-secondary" type="submit">Search</button>
	                                    </div>
                                    </form> 
                                    <form action="${pageContext.request.contextPath}/superadmin/order/status" method="get">                                
	                                    <div class="input-group col-sm">
	                                        <select class="custom-select" id="inputGroupSelect04" name="status_id">
	                                        	<option value="-1" selected>Default</option>
	                                        	<c:forEach items="${status }" var="item">
	                                        		<option value="${item.statusId }">${item.name }</option>
	                                        	</c:forEach>
	                                        </select>
	                                        <div class="input-group-append">
	                                            <button  class="btn btn-outline-secondary" type="submit">Search</button>
	                                        </div>
	                                    </div>
                                    </form>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover  js-basic-example dataTable table-custom mb-0">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID</th>
                                            <th>Customer</th>
                                            <th>Store</th>
                                           
                                            <th>Created</th>
                                            <th>Start</th>
                                            <th>Finish</th>
                                            <th>Address</th>
                                            <th>Payment</th>
                                            <th>Total</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:if test="${empty orderss }">
                                    		<tr >
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		</tr>
                                    	</c:if>
                                    
                                    
                                    	<c:forEach items="${orderss}" var="orders" >
                                    		
                                    		 <tr>
                                            <td class="text-dark"><strong>#</strong>${orders.orderId }</td>
                                            <td><a href="${pageContext.request.contextPath}/superadmin/user/detail/${orders.user.userId}"><strong>${orders.user.fullname }</strong>  </a></td>
                                            <td class="text-truncate" style="max-width: 150px;">
                                            	<a class="text-danger" href="${pageContext.request.contextPath}/superadmin/store/detail/${orders.store.userId}">
                                            		<strong>${orders.store.name }</strong>
                                            	</a>
                                            </td>
                                          
                                            <td>${orders.created }</td>
                                            <td>${orders.orderOfStart }</td>
                                            <td>${orders.orderOfFinish }</td>
                                            <td><i class="fa fa-map-marker"></i> ${orders.address } </td>
                                            <td>${orders.payment }</td>
                                            <td>
                                            	<c:set var="total" value="${0}"/>
                                                 	<c:forEach items="${orders.orderDetails }" var="orderdetail">
                                                 		<c:set var="total" value="${total + ((orderdetail.product.price-((orderdetail.product.price/100)*orderdetail.discount.discoutPercent))*orderdetail.quantity)}"/>
                                                 	</c:forEach>
                                                <span class="font-weight-bold">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${total }" /> </span>
                                            </td>
                                            <td>
                                            	<!-- Status  -->
                                            	<c:choose>
                                            		<c:when test="${orders.status.statusId == 1 }">
                                            			<strong style="color: #fa5252">${orders.status.name}  <i class="fa fa-ban"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 2 }">
                                            			<strong style="color: #37b24d">${orders.status.name}  <i class="fa fa-check"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 3 }">
                                            			<strong style="color: #313552">${orders.status.name}  <i class="fa fa-exclamation"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 4 }">
                                            			<strong style="color: #f76707">${orders.status.name}  <i class="fa fa-circle"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 5 }">
                                            			<strong style="color: #313552">${orders.status.name} <i class="fa fa-check"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 6 }">
                                            			<strong style="color: #313552">${orders.status.name}  <i class="fa fa-check"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 7 }">
                                            			<strong style="color: #e03131">${orders.status.name}  <i class="fa fa-undo"></i></strong>
                                            			
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 8 }">
                                            			<strong style="color: #313552">${orders.status.name}  <i class="fa fa-circle"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 9 }">
                                            			<strong  style="color: #92A9BD">${orders.status.name}  <i class="fa fa-clock-o"></i></strong>
                                            		</c:when>                                       
                                            	</c:choose>
                                            	<!-- /Status  -->
                                            </td>
                                            <td><a href="${pageContext.request.contextPath}/superadmin/order/detail/${orders.orderId}" class="btn btn-info">Detail</a></td>
                                        </tr>
                                    	</c:forEach>                        
                                    </tbody>
                                </table>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
    </div>
	</jsp:attribute>
</mt:template_superadmin>