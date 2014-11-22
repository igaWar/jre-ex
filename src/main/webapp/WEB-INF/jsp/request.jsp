<%@ page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="resources/js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" scr="resources/js/validateForm.js"></script>
        <script type="text/javascript" src="resources/js/jquery.validate.min.js"></script>
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/styles.css" rel="stylesheet" type="text/css"/>
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
                        <li class="active"><a href="request">New</a></li>
                        <li><a href="viewRequests">Requests</a></li>
                    </ul>

                </div>
            </div>

            <div id="content-container">
                <div id="content">
                    <form id="requestForm" class="form-horizontal">
                        <fieldset>
                            <legend>Legend</legend>
                            <div id="inputId" class="form-group">
                                <label for="inputUserid" class="col-lg-2 control-label">UserId</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="userid" name="userid" placeholder="UserId">
                                </div>
                            </div>
                            <div id="inputName" class="form-group">
                                <label for="inputName" class="col-lg-2 control-label">Name</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="email" name="email" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputExeption" class="col-lg-2 control-label">Exception Site</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="exceptionSites" name="exceptionSites" placeholder="JRE Exception Site">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputReason" class="col-lg-2 control-label">Business Justification</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="justification" name="justification" placeholder="Reason for adding this exception">
                                </div>
                            </div>
                            <p>
                                <a class="btn btn-primary btn-sm" id="requestSubmitButton">Submit</a>
                            </p>

                        </fieldset>
                    </form>
                    <div class="alert alert-success col-lg-4" id="successBox" style="display: none;">
                        Request registered
                    </div>
                    <div class="alert alert-error col-lg-4" id="errorBox" style="display: none;">
                        Request had an error
                    </div>
                </div>
                <div id="footer">
                    Copyright © Site name, 20XX
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                var getFormData = function () {
                    var inputs = $('#requestForm input');

                    var data = {};
                    for (var i = 0; i < inputs.length; i++) {
                        var input = inputs[i];
                        data[input.name] = input.value;
                    }

                    return data;
                };

                var submitSiteRequest = function () {
                    var data = getFormData();
                    $.post('requests', data, function () {
                        $('#successBox').show();
                        window.setTimeout(function () {
                            $('#successBox').hide();
                        }, 3000);
                    });
                };

                $('#requestSubmitButton').on('click', submitSiteRequest);
                $('#requestForm').on('keypress', 'input', function (e) {
                    if (e.which === 13) {
                        submitSiteRequest();
                    }
                });
                
            });
        </script>
    </body>
</html>
