<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css" integrity="sha384-PDle/QlgIONtM1aqA2Qemk5gPOE7wFq8+Em+G/hmo5Iq0CCmYZLv3fVRDJ4MMwEA" crossorigin="anonymous">
    <title>Final</title>
</head>
<body>
    <div class="container" style="margin-top: 30px;">
    <h3 align="center" style="margin-bottom: 20px">Final Project</h3>
    <table class="table"> 
        <thead class= "thead-dark">
        <tr>
            <th scope="col">id</th>
            <th scope="col">author</th>
            <th scope="col">quote</th>
            <th scope="col">category</th>
        </tr>   
        </thead>

        <tbody>

        </tbody>




    </table>
</div>

<script>
    $(document).ready(function(){

outputData();

function outputData(){
    $.ajax({
        url: "output.php",
        success:function(data){
            $('tbody').html(data);
        }
    });
}

$('#api_form').on('submit', function(event){
    event.preventDefault();
    if($('#to_do').val() == ''){
        alert('To Do field is required!');
    }else if($('#date').val() == ''){
        alert('The date field is required!');
    }else{
        var formData = $(this).serialize();
        $.ajax({
            url: "controller.php",
            method: "POST",
            data: formData,
            success:function(data){
                outputData();
                $('#api_form')[0].reset();
            }
        });
    }
});

});

</script>

</body>
</html>