<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Dashboard:::: User</title>
    <link rel="shortcut icon" type="image/jpg" href="CSS/images/LM.ico"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/styles.css">
    <%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>
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


                    <li><a href=" User?page=logout" id="profileprofile" class="headlink">Logout</a></li>


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
            <div class="user-info-container" style="width: 800px;">
                <div class="user-info-container-sub">
                    <div class="User-profile-heading">Make a claim</div>
                    <br>
                    <div class="User-profile-display displaytable" style="width: 777px;">
                        <form action="User?page=claim" method="post" enctype="multipart/form-data">
                            <input type="hidden" id="policy-start-date" name="buydate">
                            <input type="hidden" id="policy-end-date" name="lastdate">
                            <input type="hidden"  name="status" value="pending">
                            <div class="inputsection inputsection-sub" style="margin-bottom: 0px;">
                                <div class="compact">
                                    <label for="first_name">First Name:</label>
                                </div>
                                <div class="compact">
                                    <label for="">Last Name:</label>
                                </div>
                            </div>
                            <div class="inputsection inputsection-sub">
                                <input type="text" class="input-box" id="first_name"
                                       name="name"
                                       style="width: 45%;" required>
                                <input type="text" class="input-box compactf" id="" name=""
                                       style="width: 53%;"
                                       required>
                            </div>
                            <div class="inputsection inputsection-sub" style="margin-bottom: 0px;">
                                <div class="compact">
                                    <label for="Insurance_policy">Insurance Policy:</label>
                                </div>
                                <div class="compact">
                                    <label for="address">Address:</label>
                                </div>
                            </div>
                            <div class="inputsection inputsection-sub">
                                <select class="input-box" id="Insurance_policy" name="policy" style="width: 45%;"
                                        required>
                                    <option value="" disabled selected>-- Select a policy --</option>
                                    <option value="">>Obligatory</option>
                                    <option value="">All Risk</option>
                                    <option value="">Vehicle Dmg</option>

                                </select>
                                <input type="text" class="input-box compactf" id="address" name="address"
                                       style="width: 53%;"
                                       required>
                            </div>
                            <div class="inputsection inputsection-sub" style="margin-bottom: 0px;">
                                <div class="compact">
                                    <label for="email">Email:</label>
                                </div>
                                <div class="compact">
                                    <label for="phone_number">Phone:</label>
                                </div>
                            </div>
                            <div class="inputsection inputsection-sub">
                                <input type="text" class="input-box" id="email"
                                       name="email"
                                       style="width: 45%;" required>
                                <input type="number" pattern="[0-9]" class="input-box compactf" id="phone_number" name="phone_number"
                                       style="width: 53%;"
                                       required>
                            </div>

                            <div class="inputsection">
                                <label for="textarea">Additional Info:</label><br>
                                <textarea id="textarea" name="info" rows="5"></textarea><br>
                            </div>

                            <div class="inputsection fileup">
                                <div><label for="myFile" class></label></div>
                                <br>
                                <div><input type="file" id="myFile" name="files"></div>

                            </div>
                            <div class="bottombutton">
                                <button type="submit" id="rqphone" value="9845860441">Request Phone</button>
                                <button type="submit" id="add">Request Claim</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </section>
</div>



<script>
    function setPolicyDates() {
        var startDate = new Date();

// Set the end date to 10 days from the start date
        var endDate = new Date(startDate);
        endDate.setDate(endDate.getDate() + 10);

// Set the start date and end date in the hidden form fields
        document.getElementById("policy-start-date").value = startDate.toISOString().substr(0, 10); // Format: YYYY-MM-DD
        document.getElementById("policy-end-date").value = endDate.toISOString().substr(0, 10);

    }

    setPolicyDates()
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