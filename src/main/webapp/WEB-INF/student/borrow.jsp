<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Create new student</title>
	<link rel="stylesheet" href="/resources/css/index.css">
	<jsp:include page="/WEB-INF/layout/header.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/layout/page-loader.jsp" />
    <jsp:include page="/WEB-INF/layout/navbar.jsp" />
    <jsp:include page="/WEB-INF/layout/sidebar.jsp" />
    
    <section class="content">
        <div class="container-fluid">
            <!-- Vertical Layout -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Borrow the book
                            </h2>
                        </div>
                        <div class="body">
                            <form:form id="form-register" action="${contextPath}/student/borrow" method="post" modelAttribute="borrowBook">
                                <form:label path="studentId">ID: <span style="color: red;"> *</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="studentId"  class="form-control" placeholder="ID" tabindex="1" />
                                        <span class="error-msg-2" id="id-error"><form:errors path="studentId"></form:errors></span>
                                    </div>
                                </div>
                                <label for="name">Name: <span style="color: red;"> *</span></label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="name" placeholder="Name" tabindex="2" />
                                        <span class="error-msg-2" id="name-error"><form:errors path="name"></form:errors></span>
                                    </div>
                                </div>
                                <form:label path="birthday">Birthday: <span style="color: red;"> *</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <%-- <form:input path="birthday" class="form-control" placeholder="Birthday" tabindex="3" /> --%>
                                        <input type="date" class="form-control" placeholder="Birthday" tabindex="3" name="birthday" id="birthday">
                                        <span class="error-msg-2" id="age-error"><form:errors path="birthday"></form:errors></span>
                                    </div>
                                </div>
                                <label for="book">Book: <span style="color: red;"> *</span></label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:select path="book.bookId" tabindex="4">
                                        	<form:options items="${books }" itemValue="bookId" itemLabel="bookName"/> 
                                        </form:select>
                                        <span class="error-msg-2" id="name-error"><form:errors path="book"></form:errors></span>
                                    </div>
                                </div>
                                <label for="borrowDate">Name: <span style="color: red;"> *</span></label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <input type="date" class="form-control" tabindex="5" name="borrowDate" id="borrowDate">
                                        <span class="error-msg-2" id="name-error"><form:errors path="borrowDate"></form:errors></span>
                                    </div>
                                </div>
                                <label for="returnDate">Name: <span style="color: red;"> *</span></label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <input type="date" class="form-control" tabindex="6" name="returnDate" id="returnDate">
                                        <span class="error-msg-2" id="name-error"><form:errors path="returnDate"></form:errors></span>
                                    </div>
                                </div>
                                
                                <button type="submit" class="btn btn-primary btn-custom" tabindex="12"><i class="fa fa-check" aria-hidden="true"></i> Add</button>
                                <a href="${contextPath}/student/list" class="btn btn-primary btn-custom" tabindex="13"><i class="fa fa-remove" aria-hidden="true"></i> Back</a>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<jsp:include page="/WEB-INF/layout/script.jsp" />
	<jsp:include page="/WEB-INF/layout/footer.jsp" />
</body>
</html>