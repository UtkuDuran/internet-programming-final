<?php
include("baglanti.php");
if(isset($_post["kaydet"]))
{
    $kullaniciadi=$_post["kullaniciadi"];
     $email=$_post["email"];
     $password=$_post["parola"];

     $ekle="INSERT INTO `kullanicilar`( `kullanici-adi`, `email`, `parola`) values('$kullaniciadi','$email','$password')";
     $calistirekle=mysqli_query($baglanti,$ekle);
     if($calistirekle){
         echo '<div class="alert alert-success" role="alert">
         Kayıt Başarılı Bir Şekilde Eklendi
       </div>';
     }
     else
    echo'<div class="alert alert-danger" role="alert">
  Kayıt Başarılı Bir Şekilde Oluşturulamadı!
</div>';
}
mysqli_close($baglanti);

?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Üye Kayıt İşlemi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  </head>
  <body>
    <div class="container p-5">
        <div class="card p-5">
        <form action="uyekayit.php" method="post">
        <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Kulanıcı adı</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="kullaniciadi">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="email">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="parola">
  </div>
 
  
  <button type="submit" name="kaydet" class="btn btn-primary">Kaydet</button>
</form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>