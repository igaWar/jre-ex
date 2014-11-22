/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
(function($,W,D)
{
    var JQUERYFORM = {};

    JQUERYFORM.UTIL =
    {
        setupFormValidation: function()
        {
            //form validation rules
            $("#requestForm").validate({
                rules: {
                    userid: "required",
                    name: "required",
                    email: {
                        required: true,
                        email: true
                    },
                    reason: {
                        required: true,
                        maxlength: 1000
                    },
                    exceptions: {
                        required: true,
                        maxlength: 2000
                    }
                },
                messages: {
                    userid: "Please enter your Nordea userid",
                    name: "Please enter your full name",
                    reason: {
                        required: "Please provide a reason for adding these exceptions",
                        maxlength: "Your justification must not exceed 1000 characters"
                    },
                    email: "Please enter a valid email address",
                    exceptions:{
                        required: "You forgot about exceptions :)",
                        maxlength: "Your exception sites must not exceed 2000 characters"
                    }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        }
    },

    //when the dom has loaded setup form validation rules
    $(D).ready(function($) {
        JQUERYFORM.UTIL.setupFormValidation();
    });

})(jQuery, window, document);

