<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>General Consent</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-to-r from-green-800 to-green-500 relative">
   <p class="absolute bottom-4 right-4 text-green-100 text-sm">by magang_poliwangi/31/07/2024</p>
    <div class="lg:flex md:flex-col md:flex-row md:align-center lg:flex-row items-center justify-center min-h-screen px-6 sm:px-6 lg:px-8 space-y-8 lg:space-y-0 lg:space-x-8">
        <!-- Left Section -->
        <div>
         <div class="text-white rounded-lg pb-3 space-y-8 w-full lg:w-auto">
            <div class="flex sm:justify-center md:justify-center lg:justify-start"> <!-- Ini akan memastikan konten di dalamnya terpusat -->
                  <div class="flex  sm:justify-center md:justify-center lg:justify-start bg-green-200 bg-opacity-15 py-2 shadow-md rounded-full w-32">
                     <img class="mx-2 w-12" src="{{ asset('assets/img/kabupaten-banyuwangi1685453554_0b418421a0f1960a0e0d.png') }}" alt="">
                     <img class="mx-2 w-10" src="{{ asset('assets/img/puskesmas.png') }}" alt="">
                 </div>
             </div>
              </div>
              <h1 class="text-5xl font-bold text-center text-white lg:text-left">General Consent</h1>
              <p class="text-xl text-center text-white lg:text-left">Sistem Informasi Kesepakatan Pasien <br>Kabupaten Banyuwangi</p>
              <div class="flex justify-center lg:justify-start">
                 <a href="{{ route('login-view') }}">
                    <button class="mt-4 bg-green-600 hover:bg-green-800 text-white py-4 px-10 shadow-lg font-bold rounded-full">Login</button>
                 </a>
                
              </div>
          </div>
        <!-- Right Section -->
        <div class="relative w-full max-w-xs lg:max-w-md h-64 lg:h-96 ">
            <!-- Additional Elements to mimic the original design -->
            <div class="animate-bounce  absolute top-8 right-8 w-16 h-16 bg-blue-600 rounded-full hidden lg:block"></div>
            <div class=" animate-spin absolute top-24 right-24 w-16 h-16 bg-yellow-500 rounded-lg hidden lg:block"></div>
            <div class="absolute top-40 left-0 w-24 h-24 bg-green-900 rounded-lg hidden lg:block"></div>
            <div class="animate-pulse absolute bottom-8 left-16 w-32 h-32 bg-green-700 rounded-lg hidden lg:block"></div>
            <div class="absolute bottom-0 right-0 w-16 h-16 bg-green-600 rounded-lg hidden lg:block"></div>
        </div>
    </div>
</body>
</html>





























{{-- 

<!DOCTYPE html>
<html>
<head> 
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <title>The Signature</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   <script type="text/javascript" src="{{asset('assets/js/signature.js')}}"></script>
   <style>
     body{
     padding: 15px;
     }
     #note{position:absolute;left:50px;top:35px;padding:0px;margin:0px;cursor:default;}
</style>
</head>
<body>
<h1>Digital Signature</h1>
<form method="post" action="{{route('signature_upload')}}" enctype="multipart/form-data">
   @csrf
   <div id="signature-pad">
     <div style="border:solid 1px teal; width:360px;height:110px;padding:3px;position:relative;">
        <div id="note" onmouseover="my_function();">The signature should be inside box</div>
        <canvas id="the_canvas" width="350px" height="100px"></canvas>
     </div>
     <div style="margin:10px;">
        <input type="hidden" id="signature" name="signature">
        <button type="button" id="clear_btn" class="btn btn-danger" data-action="clear"><span class="glyphicon glyphicon-remove"></span> Clear</button>
        <button type="submit" id="save_btn" class="btn btn-primary" data-action="save-png"><span class="glyphicon glyphicon-ok"></span> Save as PNG</button>
     </div>
   </div>

   @if (!empty($signature))
   <div class="pt-5">
      <img src="{{ asset('storage/signature/'.$signature) }}" alt="">
   </div>
      
   @else
   <div class="pt-5">
      <p>Gambar belum ada</p>
   </div>
      
   @endif
<form>
   
<script>
var wrapper = document.getElementById("signature-pad");
var clearButton = wrapper.querySelector("[data-action=clear]");
var savePNGButton = wrapper.querySelector("[data-action=save-png]");
var canvas = wrapper.querySelector("canvas");
var el_note = document.getElementById("note");
var signaturePad;
signaturePad = new SignaturePad(canvas);
clearButton.addEventListener("click", function (event) {
   document.getElementById("note").innerHTML="The signature should be inside box";
   signaturePad.clear();
});
savePNGButton.addEventListener("click", function (event){
   if (signaturePad.isEmpty()){
     alert("Please provide signature first.");
     event.preventDefault();
   }else{
     var canvas  = document.getElementById("the_canvas");
     var dataUrl = canvas.toDataURL();
     document.getElementById("signature").value = dataUrl;
   }
});
function my_function(){
   document.getElementById("note").innerHTML="";
}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html> --}}