<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Input RM Pasien</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-blue-900 flex items-center justify-center min-h-screen">
   
        <div class="bg-white p-14 rounded-lg shadow-lg w-full mx-40">
            <form action="{{ route('search-process') }}" method="post">
                @csrf
                <h2 class="text-center text-xl font-semibold mb-6">Masukkan No. RM Pasien</h2>
                <div class="mb-4">
                    <input type="text" name="nomor" id="id-rm" placeholder="No. RM :" class="w-full px-6 py-4 border border-gray-300 rounded focus:outline-none focus:ring focus:border-blue-300 shadow-md">
                </div>
                @if (session('error'))
                <div class="text-center p-2 text-red-500 bg-red-100 m-2">
                    {{ session('error') }}
                </div>
                @endif
                <div class="flex justify-center">
                    <button class="w-full px-4 py-1 bg-blue-700 text-white rounded-lg shadow-md hover:bg-blue-800 focus:outline-none focus:ring-2 focus:ring-blue-300" onclick="window.location.href='./datapasien.html'">Konfirmasi</button>
                </div>
            </form>
        </div>
  
   
</body>
</html>


