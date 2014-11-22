<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Home</title>
        <script type="text/javascript" src="resources/js/jquery-2.1.1.min.js"></script>
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/styles.css" rel="stylesheet" type="text/css"/>
        <link
    </head>
    <body>
        <div id="container">
            <div id="header">
                <h1>
                    JRE Exceptions Sites
                </h1>
            </div>
            <div class="navbar navbar-inverse">
                <div class="navbar-collapse collapse navbar-inverse-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="home">Home</a></li>
                        <li><a href="request">New</a></li>
                        <li><a href="viewRequests">Requests</a></li>
                    </ul>

                </div>
            </div>
            <div id="content-container">
                <div id="content">
                    <h4>
                        All approved exceptions sites to be included in the next JRE release.
                    </h4>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">exception.sites</h3>
                        </div>
                        <div class="panel-body" style="overflow-y:scroll; height:400px;">
                            <c:forEach var="request" items="${requests}">
                                <div>${request.exceptionSites}</div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div id="v-separator"></div>
                <div id="aside">
                    <p>
                        Export file
                    </p>
                    <div id="eu">
                    </div>
                    <div id="exportFile">
                        <a class="asideLink" href="#"><div class="downloadIcon"></div>exception.sites</a>
                    </div>
                </div>
                <div id="footer">
                    Copyright © Site name, 20XX
                </div>
            </div>
        </div>
        <!--        Registered users: ${accountCount}
        
                <br/>
                
                <form action="accounts" method="POST">
                    <input type="text" name="name"/>
                    <br/>
                    <input type="text" name="email"/>
                    <br/>
                    <input type="submit" value="Send"/>
                </form>-->
    </body>
</html>
