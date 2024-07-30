<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Nama Petugas</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    {{-- <script src="https://cdn.tailwindcss.com"></script> --}}
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        .selected {
            background-color: #2563EB; /* Color for selected item */
        }
    </style>
</head>
<body class="bg-gradient-to-r from-green-800 to-green-500 flex items-center justify-center min-h-screen p-4">
    <div class="absolute top-4 left-4">
        <h5 class="text-xl font-bold text-white">Selamat Datang, {{ $data->nama }}</h5>    
    </div>
    <div class="absolute top-4 right-4">
        <a href="{{ route('logout') }}">
            <button type="button" class="w-full h-10 bg-green-700 text-white px-4 py-1 rounded-lg shadow-md hover:bg-green-900 focus:outline-none focus:ring-2 focus:ring-blue-300 focus:ring-opacity-50"><span class="mx-2"><i class="fa-solid fa-right-from-bracket text-white"></i></span>logout</button>
        </a>    
    </div>
    <div class="bg-white rounded-lg shadow-lg p-6 w-full max-w-lg mt-10">
        <h2 class="text-center text-green-900 text-2xl font-bold mb-4">Daftar Nama Petugas</h2>
        <div class="max-h-80 overflow-y-auto">
        <form action="{{ route('petugas-prosess') }}" method="post">
            @csrf
            <div id="petugas-list">
                @foreach ($petugas as $item)
                <label class="flex items-center justify-between p-4 mb-2 bg-white text-green-900 border border-gray-300 rounded-md cursor-pointer transition duration-300 ease-in-out hover:bg-gray-300 shadow-lg"> 
                    <div class="flex justify-start w-[60%]">
                        <input type="radio" name="uuid" value="{{ $item->uuid }}">
                        <div class="ml-2 w-full">
                            <div class="text-lg font-bold">{{ $item->nama }}</div>
                            <div class="bg-white w-full"></div>
                            <div class="text-sm">{{ $item->nip }}</div>
                        </div>
                    </div>
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 icon" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M12 12c2.209 0 4-1.791 4-4s-1.791-4-4-4-4 1.791-4 4 1.791 4 4 4zm0 2c-2.673 0-8 1.338-8 4v2h16v-2c0-2.662-5.327-4-8-4z"/>
                    </svg>
                </label>
                @endforeach
            </div>
          
        
        </div>
        <div class="text-center mt-6 w-full">
            <button type="submit" class="w-full h-10 bg-green-800 text-white px-4 py-1 rounded-lg shadow-md hover:bg-green-900 focus:outline-none focus:ring-2 focus:ring-blue-300 focus:ring-opacity-50" onclick="window.location.href='./no-rm.html'">Konfirmasi</button>
        </div>
      </form>
    </div>

    <!-- <script>
        function toggleSelect(element) {
            // Remove the 'selected' class from all items
            document.querySelectorAll('.list-item').forEach(item => item.classList.remove('selected'));
            // Add the 'selected' class to the clicked item
            element.classList.add('selected');
        }
    </script> -->
</body>
</html>
