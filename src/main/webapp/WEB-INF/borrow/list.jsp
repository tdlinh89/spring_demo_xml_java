<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>List student</title>
	<jsp:include page="/WEB-INF/layout/header.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/layout/page-loader.jsp" />
    <jsp:include page="/WEB-INF/layout/navbar.jsp" />
    <jsp:include page="/WEB-INF/layout/sidebar.jsp" />
    
    <section class="content">
        <div class="container-fluid">
            <!-- Striped Rows -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                List borrow
                            </h2>
                        </div>
                        <div class="body table-responsive">
                            <table class="table table-striped" id="dataTable-listMember">
                                <thead>
                                    <tr>
                                        <th>ID</th>
										<th>Name</th>
										<th>Birthday</th>
										<th>Book name</th>
										<th>Borrow date</th>
										<th>Return date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:choose>
	                                	<c:when test="${not empty borrowBooks}">
	                                    	<c:forEach items="${borrowBooks}" var="b">
												<tr>
													<td>${b.student.studentId }</td>
													<td>${b.student.name }</td>
													<td>${b.student.birthday }</td>
													<td>${b.book.bookName}</td>
													<td>${b.borrowDate }</td>
													<td>${b.returnDate }</td>
												</tr>
											</c:forEach>
	                                    </c:when>
	                                    <c:otherwise>
	                                    	<td colspan="4" style="text-align: center">No record</td>
	                                    </c:otherwise>
                                	</c:choose>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Striped Rows -->
        </div>
    </section>
	<jsp:include page="/WEB-INF/layout/script.jsp" />
	<jsp:include page="/WEB-INF/layout/footer.jsp" />
</body>
</html>