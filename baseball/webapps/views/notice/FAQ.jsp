<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>FAQ</title>
    
    <script src ="jquery-3.5.1.min.js"></script>
    
    <!-- 부트스트랩 전용 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- 부트스트랩 전용 JS -->
    <script src="../resources/js/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    
    
    <style>
      .col-md-6 { padding:100px 100px; width:800px; }
        #r1{
            float:left;
        }
         #r2{
            float:right;
        }    
       div div dl dt{ background:skyblue; padding:8px 12px; cursor: pointer; margin-bottom:4px; }
        div dl dt:hover{ background:lightgray; }
     </style>

     <script>
        $(function(){
    
    $("dd").hide();
    
    $("dt").click(function(){
        
        if( $(this).next().css("display")=="none" ){
            
            $(this).next().slideDown("fast");
        }else{
           $(this).next().slideUp("fast"); 
        }
        
    });
    
});
     </script>
</head>
<body>
    <div class="container">
        <div class="row">
            
            <div class="col-md-6">
                <dl>
                    <dt>아코디언 패널 제목 1</dt>
                    <dd>
                        <p>아코디언 패널 내용 1</p>
                    </dd>
                </dl>
                <dl>
                    <dt>아코디언 패널 제목 2</dt>
                    <dd>
                        <p>아코디언 패널 내용 2</p>
                    </dd>
                </dl>
                <dl>
                    <dt>아코디언 패널 제목 3</dt>
                    <dd>
                        <p>아코디언 패널 내용 3</p>
                    </dd>
                </dl>
            </div>

            <!-- <div class="row" id="r2"> -->
            <div class="col-md-6">
                <dl>
                    <dt>아코디언 패널 제목 1</dt>
                    <dd>
                        <p>아코디언 패널 내용 1</p>
                    </dd>
                </dl>
                <dl>
                    <dt>아코디언 패널 제목 2</dt>
                    <dd>
                        <p>아코디언 패널 내용 2</p>
                    </dd>
                </dl>
                <dl>
                    <dt>아코디언 패널 제목 3</dt>
                    <dd>
                        <p>아코디언 패널 내용 3</p>
                    </dd>
                </dl>
            </div>
            <!-- </div> -->
        
        </div>
    </div>
        

    

</body>
</html>