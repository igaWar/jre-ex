$(document).ready(function () {
    $('#reqTable').on('click', 'tr', function () {
        var id = $(this).data('id');
        if (id) {
            var url = 'requests/' + id;
            $.get(url, function (request) {
                $('#reqno_').html(request.id);
                $('#userid_').html(request.userid);
                $('#name_').html(request.name);
                $('#exceptionSites_').html(request.exceptionSites);

                $('#email_').html(request.email);
                $('#justification_').html(request.justification);

//                $('#status_').html(data.status);

                $('#reqDetails').show();

            });
        }
    });
    $('tr').each(function () {
        if ($('td:contains("pending")', this).length) {
            $(this).addClass('info');
        }
        if ($('td:contains("rejected")', this).length) {
            $(this).addClass('danger');
        }
    });
});

$('#requestUpdateButton').on('click', updateRequestStatus);
//var updateRequestStatus = function () {
//    console.log(requests.id);
//    data: {
//        status: "accepted";
//    }
//    $.post('requests', data, function () {
//        $('#successBox').show();
//        window.setTimeout(function () {
//            $('#successBox').hide();
//        }, 3000);
//    });
//
//};
function updateRequestStatus() {
    $.ajax({
        url: 'requests/' + request.id,
        data: {
            status: "accepted"
        },
        type: "PUT",
        success: function (data) {

        }
    });
}

// to highlight a row add the class highlight