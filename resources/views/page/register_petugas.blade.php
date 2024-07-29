<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/signature_pad@4.0.0/dist/signature_pad.umd.min.js"></script>
</head>
<body class="bg-blue-900 flex items-center justify-center ml-5 mr-5 ">
    <div class="bg-white rounded-lg shadow-lg p-8 w-full">
        <div class="flex justify-center w-full">
            <i class="fa-regular fa-user m-4 mt-5 text-blue-500 " style="font-size: 25px;"></i>
            <h6 class="text-center text-2xl font-bold text-blue-600 m-4">Register Petugas</h6>
            
        </div>
        <form action="{{ route('regis-petugas-process') }}" method="post">
            @csrf
            <div class="mb-4">
                <div class="relative">
                  <input type="text" name="nama" style="text-align: center;" id="id-nama" placeholder=" Nama :" class="w-full px-6 py-4 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-300 shadow-md">
                </div>
            </div>
            <div class="mb-4">
                <div class="relative">
                  <input type="text" name="nip" style="text-align: center;" id="id-nip" placeholder=" NIP :" class="w-full px-6 py-4 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-300 shadow-md">
                </div>
            </div>
            <div class="mb-4" id="signature-pad">
                <div class="relative">
                    <label for="id-masukkantandatangan" class="block text-gray-700 text-center mb-2">Masukkan tanda tangan:</label>
                    <canvas id="signaturePad" class="w-full h-48 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-300 shadow-md"></canvas>
                    <button type="button" class="mt-4 bg-red-500 text-white w-full py-2 rounded focus:outline-none focus:ring-2 focus:ring-red-300 shadow-md hover:bg-red-600" id="Clear">Clear</button>
                </div>
            </div>
            <input type="hidden" name="signature" id="signature">
            @if (session('error'))
            <div class="text-center p-2 text-red-500">
                {{ session('error') }}
            </div>
             @endif
            <div class="flex justify-center">
                <button id="registerButton" type="submit" class="w-full bg-blue-700 text-white px-4 py-1 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-300 shadow-md hover:bg-blue-800" >Konfirmasi</button>
            </div>
        </form>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var canvas = document.getElementById('signaturePad');
            var signaturePad = new SignaturePad(canvas);
            var savePNGButton = document.getElementById('registerButton');

            // Resize the canvas to fill its parent element
            function resizeCanvas() {
                var ratio = Math.max(window.devicePixelRatio || 1, 1);
                canvas.width = canvas.offsetWidth * ratio;
                canvas.height = canvas.offsetHeight * ratio;
                canvas.getContext("2d").scale(ratio, ratio);
                signaturePad.clear(); // otherwise isEmpty() might return incorrect value
            }

            savePNGButton.addEventListener("click", function (event){
                if (signaturePad.isEmpty()){
                    alert("Please provide signature first.");
                    event.preventDefault();
                }else{
                    var dataUrl = canvas.toDataURL();
                    console.log(dataUrl);
                    document.getElementById("signature").value = dataUrl;
                }
            });


            window.addEventListener('resize', resizeCanvas);
            resizeCanvas();

            document.getElementById('Clear').addEventListener('click', function () {
                signaturePad.clear();
            });
        });
    </script>
</body>
</html>
