

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-blue-900 flex items-center justify-center min-h-screen p-4">
    <div class="container bg-white p-8 rounded-lg shadow-md max-w-md w-full">
      <div class="flex justify-center mb-3">
        <img src="{{ asset('assets/img/puskesmas.png') }}" alt="Logo" class="h-24">
      </div>
      <div class="text-center mb-3">
        <h5 class="text-xl text-blue-600 font-bold">General Consent Puskesmas</h5>
        <h6 class="text-lg text-blue-600 font-bold">Kabupaten Banyuwangi</h6>
      </div>
      <form action="{{ route('login_process') }}" method="post">
        @csrf
        <div class="mb-4">
          <div class="relative">
            <input type="text" name="username" style="text-align: center;" id="nama-puskesmas" placeholder="Username" 
                   class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:ring focus:border-blue-500 shadow-md transition-colors duration-300">
            <span class="absolute inset-y-0 right-0 flex items-center pr-3 text-gray-400 transition-colors duration-300">
                <i class="fa-solid fa-magnifying-glass"></i>
            </span>
          </div>
        </div>

        <div class="mb-4">
          <div class="relative">
            <input type="password" name="password" style="text-align: center;" id="id-puskesmas" placeholder="Password :" class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:ring focus:border-blue-300 shadow-md">
          </div>
        </div>
        @if (session('error'))
            <div class="text-center p-2 text-red-500">
                {{ session('error') }}
            </div>
        @endif
        <div class="flex justify-center">
        <button type="submit" class="w-full bg-blue-700 text-white py-1 px-4 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-300 shadow-md hover:bg-blue-800" onclick="window.location.href='./register.html'">Login</button>
        </div>
      </form>
    </div>
    </div>
  </body>
</html>
