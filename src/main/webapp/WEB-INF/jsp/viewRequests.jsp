<%-- 
    Document   : viewRequests
    Created on : Oct 26, 2014, 3:12:13 PM
    Author     : Sorin Andronic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/styles.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="resources/css/jquery.dataTables.min.css">
        <style type="text/css" class="init">

        </style>
        <script type="text/javascript" src="resources/js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="resources/js/requestsActions.js"></script>
        <script type="text/javascript" src="resources/js/jquery.dataTables.min.js" language="javascript" ></script>

        <script type="text/javascript" language="javascript" class="init">
            $(document).ready(function () {
                $('#reqTable').DataTable();
            });
        </script>
        <title>JSP Page</title>
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
                        <li><a href="home">Home</a></li>
                        <li><a href="request">New</a></li>
                        <li class="active"><a href="viewRequests">Requests</a></li>
                    </ul>
                    
                </div>
            </div>
            <div id="content-container">
                <div id="tableview" class="container">
                    <!--                    <table id="reqTable" class="table table-striped table-condensed table-bordered table-hover">
                                            <thead-->
                    <table id="reqTable" class="display" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Request No</th>
                                <th>User ID</th>
                                <th>Name</th>
                                <th>Exception Sites</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Request No</th>
                                <th>User ID</th>
                                <th>Name</th>
                                <th>Exception Sites</th>
                                <th>Status</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <c:forEach var="request" items="${requests}">
                                <tr class="select" data-id="${request.id}">
                                    <td>${request.id}</td>
                                    <td>${request.userid}</td>
                                    <td>${request.name}</td>
                                    <td>${request.exceptionSites}</td>
                                    <td>${request.status}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div id="reqDetails" style="display: none;">
                <form id="displayRequest" action="requestAction" method="POST">
                    <div id="content">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Panel primary</h3>
                            </div>
                            <div class="panel-body">
                                <label class="col-lg-3 control-label">Request#</label>
                                <div id="reqno_" class="col-lg-9"></div>
                                <!--                                    <legend></legend>-->
                            </div>   
                            <div class="panel-body">
                                <label class="col-lg-3 control-label">User ID</label>
                                <div id="userid_" class="col-lg-9"></div>
                                <!--                                <legend></legend>-->
                            </div>
                            <div class="panel-body">
                                <label class="col-lg-3 control-label">Name</label>
                                <div id="name_" class="col-lg-9"></div>
                                <!--                                <legend></legend>-->
                            </div>
                            <div class="panel-body">
                                <label class="col-lg-3 control-label">Email</label>
                                <div id="email_" class="col-lg-9"></div>
                            </div>
                            <div class="panel-body">
                                <label class="col-lg-3 control-label">Business Justification</label>
                                <div id="justification_" class="col-lg-9"></div>
                            </div>
                            <div class="panel-body">
                                <label class="col-lg-3 control-label">Exception Site</label>
                                <div id="exceptionSites_" class="col-lg-9"></div>
                            </div>
                        </div>
                    </div>
                    <!--                    <div id="v-separator"></div>-->
                    <div id="aside">
                        <!--                        <label for="status">Status:</label>
                                                <select id="status_" name="status">
                                                    <option value="pending">Pending</option>
                                                    <option value="approved">Approved</option>
                                                    <option value="rejected">Rejected</option>
                                                </select>-->

                        <label for="select" class="col-lg-2 control-label">Status</label>
                        <div class="col-lg-7">
                            <select class="form-control" id="status_">
                                <option>Pending</option>
                                <option>Approved</option>
                                <option>Rejected</option>
                                <option>Canceled</option>
                            </select>
                        </div>
                        <a class="btn btn-primary btn-xs" id="requestUpdateButton">Save</a>
                        <!--                        <input type="submit" value="Save">-->
                        <div class="alert alert-success col-lg-4" id="successBox" style="display: none;">
                            Request registered
                        </div>
                        <div class="alert alert-error col-lg-4" id="errorBox" style="display: none;">
                            Request had an error
                        </div>
                    </div>
                </form>
            </div>
            <div id="footer">
                Copyright © Site name, 20XX
            </div>
        </div>

    </body>
</html>
