<%--
  Created by IntelliJ IDEA.
  User: Jiwan
  Date: 4/11/2023
  Time: 2:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="Service.UserService" %>
<%@ page import="Model.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Premium</title>
    <link rel="shortcut icon" type="image/jpg" href="CSS/images/LM.ico" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/styles.css">
    <script src="https://kit.fontawesome.com/6f3a65e23d.js" crossorigin="anonymous"></script>
</head>

<body>
<!--welcome face-->
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



                    <li><a href=" User?page=logout" id="profileprofile" class="headlink">logout</a></li>


                </ul>
            </div>
        </div>
    </div>
</header>

<div class="parent">
    <section class="admin-nav">
        <span id="adminid">User Panel</span>
        <ul id="navlist">
            <li>
                <div class="listitem collapsible">Policy Plan</div>
                <ul class="collapseitem" style="width: 224px;">
                    <a href="User?page=policyplan">
                        <li class="listitem sublistitem">Add Policy</li>
                    </a>
                    <a href="User?page=viewpremium">
                        <li class="listitem sublistitem">Premium Policy</li>
                    </a>
                    <a href="User?page=listpolicies">
                        <li class="listitem sublistitem">Manage Policy</li>
                    </a>
                </ul>
            </li>
            <a href="User?page=claiminsurance">
                <li class="listitem">Claim</li>
            </a>
            <a href="User?page=viewResult">
                <li class="listitem">View Result</li>
            </a>
        </ul>
    </section>

    <section class="page">
        <div class="container">
            <div class="user-info-container">
                <div class="user-info-container-sub">
                    <div class="User-profile-heading">ALL Claims</div>
                    <br>
                    <div class="User-profile-display displaytable">
                        <table>
                            <colgroup>
                                <col span="1" style="width: 4%;">
                                <col span="1" style="width: 20%;">
                                <col span="1" style="width: 20%;">
                                <col span="1" style="width: 8%;">
                                <col span="1" style="width: 9%;">
                                <col span="1" style="width: 9%;">
                            </colgroup>
                            <thead>
                            <tr class="listhead">
                                <th>id</th>
                                <th>Username</th>
                                <th>Email</th>
                                <th>Status</th>
                                <th>Applied Date</th>
                                <th>Expected Date</th>
                            </tr>
                            </thead>
                            <c:forEach var="viewresult" items="${viewresult}" varStatus="status" >
                            <tbody id="paginated-list" data-current-page="1" aria-live="polite">

                            <tr>
                                <td style="float:right; height: 24px;">
                            ${status.count}

                                </td>
                                <td>
                                    <%--                                    <!-- <%=sn%>. -->--%>
                                        ${viewresult.userName}
                                </td>
                                <td>
                                    <div class="item" > ${viewresult.email}</div>
                                </td>
                                <td>
                                        ${viewresult.status}
                                </td>
                                <td>
                                        ${viewresult.buydate}
                                </td>

                                <%--                                <!-- <td><a href="User?page=showimage&id=${student.id}">Show Image</a></td> -->--%>

                                <td style="text-align: center;">
                                    ${viewresult.lastdate}
                                </td>

                            </tr>


                            </tbody>
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

    </section>
</div>
<script src="CSS/paginationscript.js"></script>
<script>
    var coll = document.getElementsByClassName("collapsible");
    var i;

    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function () {
            this.classList.toggle("active");
            var collapseitem = this.nextElementSibling;
            if (collapseitem.style.display === "block") {
                collapseitem.style.display = "none";
            } else {
                collapseitem.style.display = "block";
            }
        });
    }
</script>
</body>

</html>