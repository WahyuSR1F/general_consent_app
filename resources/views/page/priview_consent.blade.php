<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>General Consent</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
                .pdf-container {
                    height: 100vh; /* Adjust height as needed */
                }
                @media (max-width: 640px) {
                    .pdf-container {
                        height: 80vh; /* Adjust height for smaller screens */
                    }
                }
    </style>
</head>
    <body class="bg-gradient-to-r from-green-800 to-green-500  flex items-center justify-center min-h-screen p-4">
        <div class="bg-white  p-8 rounded-lg shadow-lg w-full max-w-5xl">
            <div class="w-full mb-5">
                 <h5 class="text-center text-5xl font-bold text-green-900">Terimakasih Atas Persetujuan Consent</h5>
                <p class="text-center text-2xl font-bold text-green-900 mt-2">Mohon klik selesai jika sudah, salam sehat</p>
            </div>
               
            <div class="flex justify-center pdf-container w-full">
                <object data="your_url_to_pdf" type="application/pdf" class="w-full h-full">
                    <iframe src="{{ $consent }}" class="w-full h-full"></iframe>
                </object>
            </div>
                <div class="flex justify-center mt-6">
                    <a href="{{ route('finish') }}">
                        <button class="bg-green-700 text-white px-6 py-2 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-300 shadow-md hover:bg-green-900">Selesai</button>
                    </a>
                   
                </div>
            </div>
    </body>
</html>