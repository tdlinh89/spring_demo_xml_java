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
                                List student
                            </h2>
                        </div>
                        <div class="body table-responsive">
                            <table class="table table-striped" id="dataTable-listMember">
                                <thead>
                                    <tr>
                                        <th>ID</th>
										<th>Name</th>
										<th>Birthday</th>
										<th>Button</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:choose>
	                                	<c:when test="${not empty listStudents}">
	                                    	<c:forEach items="${listStudents}" var="student">
												<tr>
													<td>${student.studentId }</td>
													<td>${student.name }</td>
													<td>${student.birthday }</td>
													<td>
														<a href="${contextPath}/student/update?id=${student.studentId }">Update</a>
														<a href="${contextPath}/student/delete?id=${student.studentId }">Delete</a>
														<a href="${contextPath}/student/detail?id=${student.studentId }">Detail</a>
													</td>
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