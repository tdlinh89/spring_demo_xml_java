<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!-- Sidebar  -->
<section>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <!-- Menu -->
        <div class="menu" id="sidebarAdmin">
            <ul class="list">
                <li class="header">
                    <a href="${contextPath}/student/list"><span>Student management</span></a>
                </li>
                <li class="header">
                    <a href="${contextPath}/book/list"><span>Book management</span></a>
                </li>
                <li class="header">
                    <a href="${contextPath}/borrow/list"><span>Borrow management</span></a>
                </li>
            </ul>
        </div>
        <!-- #Menu -->
    </aside>
    <!-- #END# Left Sidebar -->
</section>