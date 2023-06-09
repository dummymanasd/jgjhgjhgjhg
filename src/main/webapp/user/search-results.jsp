<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 4/8/2023
  Time: 11:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results | Library Management System</title>
    <link rel="shortcut icon" type="image/jpg" href="${pageContext.request.contextPath}/CSS/images/LM.ico"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/styles.css">
    <script src="https://kit.fontawesome.com/6f3a65e23d.js" crossorigin="anonymous"></script>
</head>
<body>
<header>
    <div class="pagehead">
        <div class="headtitles" id="headtitlesfix">
            <div class="one">
                <ul>


                    <li><a href="User?page=home"><img src="${pageContext.request.contextPath}/CSS/images/tutum.svg" id="logo"></a></li>
                </ul>
            </div>
            <div class="two">
                <ul>
                    <li>
                        <form action="User?page=search" method="post">
                            <input type="search" name="query" id="search" placeholder="Search...">
                            <button type="submit" class="search_button"><i class="fas fa-search"></i></button>
                        </form>
                    </li>


                    <li><a href="User?page=logout" id="profileprofile" class="headlink">Logout</a></li>


                </ul>
            </div>
        </div>
    </div>
</header>
<%--<div class="container" style="display: flex; flex-direction: column;">--%>
<%--    <div class="search-result-container">--%>
<%--        <div class="User-profile-heading">Displaying search results for {}</div>--%>
<%--    </div>--%>
<%--    <br>--%>
<%--    <div class="search-result-display displaytable">--%>
<%--    </div>--%>
<%--</div>--%>

<div class="container">
    <div class="user-info-container">
        <div class="user-info-container-sub">
            <c:if test="${not empty searchResults}">
                <c:choose>
                    <c:when test="${not empty query}">  <%-- why is this query not showing in the page --%>
                        <p class="User-profile-heading">Matching results for "${query}"</p>
                    </c:when>
                    <c:when test="${empty searchResults}">
                        <p>No results found for your search query.</p>
                    </c:when>
                    <c:otherwise>
                        <p class="User-profile-heading">Showing all Policy</p>
                    </c:otherwise>
                </c:choose>
            </c:if>

            <br>
            <div class="search-result-display displaytable">
                <table>
                    <colgroup>
                        <col span="1" style="width: 5%;">
                        <col span="1" style="width: 22%;">
                        <col span="1" style="width: 33%;">

                        <col span="1" style="width: 15%;">
                        <col span="1" style="width: 15%;">
                        <col span="1" style="width: 7%;">
                    </colgroup>
                    <thead>
                    <tr class="listhead">
                        <th>S.No</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile Number</th>
                        <th>Policy</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody id="paginated-list" data-current-page="1" aria-live="polite">
                    <c:forEach items="${searchResults}" var="student" varStatus="status">
                        <tr>
                            <td>${status.count}</td>
                            <td>${student.userName}</td>
                            <td>${student.email}</td>
                            <td>${student.mobile_Number}</td>
                            <td>${student.plan}</td>
                            <td><div><a href="User?page=policyDetails&id=${student.id}"><img
                                    src="${pageContext.request.contextPath}/CSS/images/icons/three-dots.svg"
                                    class="manage lock" title="More Details"
                                    style="width: 20px;"></a>
                            </div></td>
                        </tr>
                    </c:forEach>
                </table>
                <nav class="pagination-container">
                    <button class="pagination-button" id="prev-button" aria-label="Previous page"
                            title="Previous page">
                        &lt;
                    </button>

                    <div id="pagination-numbers">

                    </div>

                    <button class="pagination-button" id="next-button" aria-label="Next page"
                            title="Next page">
                        &gt;
                    </button>
                </nav>
            </div>
        </div>
    </div>
</div>

</div>
<script src="${pageContext.request.contextPath}/CSS/paginationscript.js"></script>
</body>
</html>
