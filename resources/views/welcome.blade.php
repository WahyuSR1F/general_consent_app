

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
</html>