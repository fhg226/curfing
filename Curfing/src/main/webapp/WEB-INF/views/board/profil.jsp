<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/basic.css">
<link rel="stylesheet" href="/resources/css/normal.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<style>
.header {
    text-align: center;
    font-size: 120px;
    margin-bottom: 120px;
  }
  .navbar>a{
    color: rgb(233, 159, 159);
  }
  .wrap{
    border-top: 3px solid #C3E2DD;
  }

  .sidenav {
    margin-top: 40px;
    width: 130px;
    z-index: 1;
    top: 20px;
    overflow-x: hidden;
    padding: 8px;
    background-color: rgb(233, 159, 159);
   border-radius: 15px;
  }
  
.sidenav a {
    padding: 6px 8px 6px 16px;
    text-decoration: none;
    font-size: 20px;
    display: block;
    color: azure;
  }
  .sidenav a:hover {
    background-color: #C3E2DD;
    border-radius: 15px;
  }
  

.update {
   font-size: 15px; /* Increased text to enable scrolling */
   text-align: center;
}

@media screen and (max-height: 450px) {
   .sidenav {
      padding-top: 15px;
   }
   .sidenav a {
      font-size: 18px;
   }
}
.idupdate{
   color:red;
}
 .id_wrap{
   width: 100%;
    margin-top: 20px;
   }
   .id_name{
   font-size: large;
    font-weight: bold;
   }
     .id_input{
      width: 410px;
      height: 40px;
      margin: 5px;
    }
    
     .pw_wrap{
   width: 100%;
    margin-top: 20px;
   }
   .pw_name{
   font-size: large;
    font-weight: bold;
   }
     .pw_input{
      width: 410px;
      height: 40px;
      margin: 5px;
    } 
    
     .pwck_wrap{
   width: 100%;
    margin-top: 20px;
   }
   .pwck_name{
   font-size: large;
    font-weight: bold;
   }
    .pwck_input{
      width: 410px;
      height: 40px;
      margin: 5px;
    }
    
     .user_wrap{
   width: 100%;
    margin-top: 20px;
   }
   .user_name{
   font-size: large;
    font-weight: bold;
   }
     .user_input{
      width: 410px;
      height: 40px;
      margin: 5px;
    } 
    
     .mail_wrap{
   width: 100%;
    margin-top: 20px;
   }
   .mail_name{
   font-size: large;
    font-weight: bold;
   }
    .mail_input{
      width: 410px;
      height: 40px;
      margin: 5px;
    } 
    .mail_check_wrap{
   margin-top: 20px;   
}
.mail_check_input_box{
   border: 1px solid black;
    height:22px;
    padding: 10px 14px;
    width: 60%;
    float: left;
}
.mail_check_input{
   width:100%;
   height:100%;
   border:none;
   font-size:28px;
}
.mail_check_button{
    border: 1px solid black;
    height: 42px;
    width: 130px;
    float: right;
    line-height: 40px;
    text-align: center;
    font-size: large;
    font-weight: 900;
    background-color: #ececf7;
    cursor: pointer;
}



.phone_name{
   font-size: large;
    font-weight: bold;
   }
.phone_input_1{
     width: 410px;
     height: 40px;
     margin: 5px;
    }
    .labels{
      margin: 5px;
      text-align: left;
      padding-left: 15px;
    }
    
    
    
   /* ???????????? ?????? */
   .update_button_wrap{
   margin-top: 40px;
   text-align: center;
}

    .update_button{
      width: 414px;
      height: 40px;
      font-size: 15pt;
      color: azure;
      background-color: rgb(233, 159, 159);
      border: none;
      cursor: pointer;
      margin-bottom:20px;
    }

    .radio{
      width: 50px;
      text-align: left;
    }

    /* footer */
    .bottom{
      border-top: 1px solid rgb(233, 159, 159);
      border-bottom: 1px solid rgb(233, 159, 159);
      padding: 10px;
      display: flex;
      justify-content: space-around;
    }
    .icon li{
      display: inline-block;
      text-align: center;
    }
    .info{
      padding-top: 30px;
    }
    .info li{
      display: inline-block;
      text-align: start;
    }
    .copyright{
      text-align: left;
      padding: 10px;
    }
       /* ??????????????? ???????????? ???????????? */
   .id_input_re_1{
      color : green;
      display : none;
   }
   /* ??????????????? ???????????? ?????? */
   .id_input_re_2{
      color : red;
      display : none;
   }
   
 
   /* ???????????? ?????? ?????? ??????????????? */
   .pwck_input_re_1{
        color : green;
        display : none;    
   }
   .pwck_input_re_2{
        color : red;
        display : none;    
   }    

   
   #mail_check_input_box_false{
    background-color:#ebebe4;
}
 
   #mail_check_input_box_true{
    background-color:white;
}
   
   /* ????????? ?????? ?????? */
 
   .final_id_ck{
    display: none;
   }
   .final_pw_ck{
    display: none;
   }
   .final_pwck_ck{
    display: none;
   }
   .final_mail_ck{
    display: none;
   }
</style>
</head>
<body>
   <header class="header" role="banner">
      <div class="navbar">
         <a href="/board">Curfing</a>
      </div>
   </header>
   <section>



      <div class="update">
       <form  id="update_form" method="post" >
               <div class="wrap">
                  <div class="sidenav">
                  <a href="#">??? ?????????</a>
                   </div>
               </div>
               
               
               
                  <div class="id_wrap">
                     <div class="id_name">????????? </div>
                     <div class="id_input_box">
                        <input class="id_input" name="userid"  value="${user.userid }" readonly><br>
                        <span class="idupdate">???????????? ????????? ???????????????.</span>
                     </div>
                  </div>

                  <div class="pw_wrap">
                     <div class="pw_name">???????????? *</div>
                     <div class="pw_input_box">
                        <input class="pw_input" name="pwd" type="password"  value="${user.pwd }">
                     </div>
                     <span class="final_pw_ck">??????????????? ??????????????????.</span>
                  </div>

                  <div class="pwck_wrap">
                     <div class="pwck_name">???????????? ?????? *</div>
                     <div class="pwck_input_box">
                        <input class="pwck_input" type="password">
                     </div>
                     <span class="final_pwck_ck">???????????? ??????????????????.</span> <span
                        class="pwck_input_re_1">??????????????? ???????????????.</span> <span
                        class="pwck_input_re_2">??????????????? ???????????? ????????????.</span>
                  </div>

                  <div class="user_wrap">
                     <div class="user_name">?????? </div>
                     <div class="user_input_box">
                        <input class="user_input" name="username" value="${user.username }" readonly>
                     </div>
                  </div>

                  <div class="phone_wrap">
                     <div class="phone_name">????????? ?????? *</div>
                     <div class="phone_input_1_wrap">
                        <div class="phone_input_1_box">
                           <input class="phone_input_1" name="phone" value="${user.phone }">
                        </div>
                     </div>
                  </div>

                  <div class="mail_wrap">
                     <div class="mail_name">????????? *</div>
                     <div class="mail_input_box">
                        <input class="mail_input" name="email" value="${user.email}">
                     </div>
                  </div>
                  <div class="update_button_wrap">
                     <input type="button" class="update_button" value="????????????">
                  </div>
               
               </form>
         </div>
   </section>
     <%@ include file="../includes/footer.jsp"%>
   <script>
      var code = ""; //??????????????? ???????????? ???????????? ??????
      /* ????????? ?????? ???????????? ?????? */
      var pwCheck = false; // ??????
      var pwckCheck = false; // ?????? ??????
      var pwckcorCheck = false; // ?????? ?????? ?????? ??????
      var mailCheck = false; // ?????????
      
      $(document).ready(
            function() {
               //???????????? ??????(???????????? ?????? ??????)
               $(".update_button")
                     .click(
                           function() {

                              /* ????????? ?????? */
                              var pw = $('.pw_input').val(); // ???????????? ?????????
                              var pwck = $('.pwck_input').val(); // ???????????? ?????? ?????????
                              var name = $('.user_input').val(); // ?????? ?????????
                              var mail = $('.mail_input').val(); // ????????? ?????????

                              /* ???????????? ????????? ?????? */
                              if (pw == "") {
                                 $('.final_pw_ck').css('display',
                                       'block');
                                 pwCheck = false;
                              } else {
                                 $('.final_pw_ck').css('display',
                                       'none');
                                 pwCheck = true;
                              }

                              /* ???????????? ?????? ????????? ?????? */
                              if (pwck == "") {
                                 $('.final_pwck_ck').css('display',
                                       'block');
                                 pwckCheck = false;
                              } else {
                                 $('.final_pwck_ck').css('display',
                                       'none');
                                 pwckCheck = true;
                              }

                              /* ????????? ????????? ?????? */
                              if (mail == "") {
                                 $('.final_mail_ck').css('display',
                                       'block');
                                 mailCheck = false;
                              } else {
                                 $('.final_mail_ck').css('display',
                                       'none');
                                 mailCheck = true;
                              }

                              /* ?????? ????????? ?????? */
                              if (pwCheck && pwckCheck
                                    && pwckcorCheck && mailCheck
                                    ) {
                                 $("#update_form").attr("action",
                                       "/board/profil");
                                 $("#update_form").submit();

                              }
                              if(confirm("?????????????????????????")){
                                 document.update_form.action = "/board/profil";
                                 document.update_form.submit();
                              }else{
                                 alert("????????? ???????????????")
                              }
                              
                              

                              return false;
                           });
            });

      /* ???????????? ?????? ?????? ????????? ?????? */
      $('.pwck_input').on("propertychange change keyup paste input",
            function() {
               var pw = $('.pw_input').val();
               var pwck = $('.pwck_input').val();
               $('.final_pwck_ck').css('display', 'none');
               if (pw == pwck) {
                  $('.pwck_input_re_1').css('display', 'block');
                  $('.pwck_input_re_2').css('display', 'none');
                  pwckcorCheck = true;
               } else {
                  $('.pwck_input_re_1').css('display', 'none');
                  $('.pwck_input_re_2').css('display', 'block');
                  pwckcorCheck = false;
               }
            });
      
      
   </script>
</body>
</html>