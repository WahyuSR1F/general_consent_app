
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Pasien</title>
    <!-- Tailwind CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <script src="https://cdn.jsdelivr.net/npm/signature_pad@4.0.0/dist/signature_pad.umd.min.js"></script>
    <style>
        /* Ensure the form and status dropdown are hidden initially */
        .collapse { display: none; }
    </style>
</head>
<body class="bg-gradient-to-r from-green-800 to-green-500 flex justify-center p-4">

    <div class="bg-white rounded-lg shadow-lg py-5 px-6 lg:mx-10 md:mx-5 sm:mx-1 relative h-full">
        <h2 class="text-center text-2xl text-green-900 font-bold mb-1">DATA PASIEN </h2>
        
        <h4 class="text-center text-1xl text-green-900 font-bold mb-6  ">{{ $data->puskesmas->nama }}</h4>
        <div class="grid grid-cols-2 gap-4 mb-6 text-sm">
            <div class="font-medium">Nama Lengkap</div>
            <div>: {{ $data->nama }}</div>
            <div class="font-medium">Tempat/Tanggal Lahir</div>
            <div>: {{ $data->tempat_lahir }}/{{ $data->tanggal_lahir }}</div>
            <div class="font-medium">Alamat</div>
            <div>: {{ $data->alamat }}</div>
            <div class="font-medium">Telepon</div>
            <div>: {{ $data->telephone }}</div>
        </div>
       
       
        <div class="flex justify-center mx-10 ">
            <button id="openModalButtonWali" type="button" class="bg-yellow-500 text-white px-4 py-2 rounded w-full mx-5 shadow h-10 hover:bg-yellow-600 transition font-bold">WALI PASIEN</button>
            <button id="openModalButtonPasien" type="button" class="bg-green-700 hover:bg-green-900 w-full mx-5 h-10 text-white font-bold py-2 px-4 rounded">PASIEN</button>
        </div>

    


    <!-- Modal -->
    <div id="modal" class="fixed inset-0 flex items-center justify-center z-30 hidden">
        <div class="modal-overlay absolute w-full h-full bg-gray-900 opacity-50 z-30 "></div>
        <div class="modal-container bg-white w-xl mx-auto my-5 rounded z-40 ">
            <!-- Modal content -->
            <div class="modal-content py-4 text-left px-6">
                <!-- Title -->
                <div class="flex justify-between items-center pb-3">
                    <p class="text-2xl font-bold">Persetujuan</p>
                    <button id="closeModalButton" type="button"
                        class="modal-close p-2 rounded-full hover:bg-gray-300 hover:text-gray-900">
                        <svg class="fill-current text-gray-600" xmlns="http://www.w3.org/2000/svg" width="18"
                            height="18" viewBox="0 0 18 18">
                            <path
                                d="M9 0C4.028 0 0 4.028 0 9s4.028 9 9 9 9-4.028 9-9-4.028-9-9-9zm4.95 12.121c.586.586.586 1.536 0 2.122-.293.293-.677.44-1.06.44s-.767-.147-1.06-.44l-2.83-2.829-2.828 2.829c-.293.293-.677.44-1.06.44s-.767-.147-1.06-.44c-.586-.586-.586-1.536 0-2.122l2.829-2.83-2.829-2.828c-.586-.293-.586-1.536 0-2.122.293-.293.677-.44 1.06-.44s.767.147 1.06.44l2.828 2.828 2.83-2.829c.293-.293.677-.44 1.06-.44s.767.147 1.06.44c.586.586.586 1.536 0 2.122L11.12 9.12l2.829 2.829z" />
                        </svg>
                    </button>
                </div>
                <!-- Body -->
                <div class="bg-white rounded-lg w-full h-full">
                    <div class="flex justify-center w-full">
                        <i class="fa-regular fa-user m-4 mt-5 text-green-900 " style="font-size: 25px;"></i>
                        <h6 id="title" class="text-center text-2xl font-bold text-green-900 m-4">Konfirmasi TTD Pasiens</h6>
                        
                    </div>
                        <div class="mb-4" id="signature-pad">
                            <div class="relative z-50">
                                <label  class="block text-gray-700 text-center mb-2 relative ">Masukkan tanda tangan</label>
                                <canvas id="signaturePad" class="w-full h-48 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-300 shadow-md absolut " style="pointer-events: auto;"></canvas>
                                <button type="button" id="clear" class="absolute top-0 left-0 m-2 p-1 bg-white p-1 px-2 rounded-full shadow-md mt-9 hover:bg-red-500">
                                    <i class="fa-solid fa-rotate-right text-gray-500  hover:text-white"></i>
                                </button>
                                {{-- <button type="button" id="clear" class="mt-4 bg-red-500 text-white w-full py-2 rounded focus:outline-none focus:ring-2 focus:ring-red-300 shadow-md hover:bg-red-600" id="Clear">Ulangi</button> --}}
                            </div>
                        </div>
                        <form id="mainForm" action="{{ route('cetak-general-consent') }}" method="post">
                            <div id="waliForm" class="w-auto">
                                @csrf
                                <input type="hidden" id="checking" name="check">
                                
                                <div class="mb-4">
                                    <label class="block text-sm font-medium mb-2">Nama Lengkap <span class="text-red-500">*</span></label>
                                    <input type="text" id="namaWali" name="nama" class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-200" placeholder="Nama Lengkap">
                                </div>
                                <div class="mb-4">
                                    <label class="block text-sm font-medium mb-2">Status Wali <span class="text-red-500">*</span></label>
                                        <div class="mb-4 w-full">
                                            <select id="options" name="options" class="w-full px-3 py-2 border rounded">
                                                <option value="" disabled selected>Pilih opsi</option>
                                                <option value="Suami">Suami</option>
                                                <option value="Istri">Istri</option>
                                                <option value="Anak">Anak</option>
                                                <option value="Saudara">Saudara</option>
                                                <option value="Keluarga">Keluarga</option>
                                                <option value="other">Lainnya</option>
                                               
                                                
                                            </select>
                                            <div id="ortherSelect" class="hidden m-0 w-full">
                                                <input type="text" id="otherOptionsInput" class="w-full px-3 py-2 border border-gray-300 rounded focus:outline-none focus:ring focus:ring-blue-200" name="" id="" placeholder="Hubungan Pasien">
                                            </div>
                                        </div>
                                </div>
                                <p class="m-0 text-red-500">* wajib mengisi</p>
                            </div>  
                            <input type="hidden" name="signature" id="signature">
                            @if (session('error'))
                            <div class="text-center p-2 text-red-500">
                                {{ session('error') }}
                            </div>
                            @endif
                            <div class="flex justify-center">
                                <button id="registerButton" type="submit" class="w-full bg-green-700 text-white px-4 py-1 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-300 shadow-md hover:bg-green-900" >Setuju</button>
                            </div>
                            <input type="hidden" id="statusHubungan" name="status">
              
                        </form>
            </div>
        </div>
    </div>



    <script>
         document.addEventListener("DOMContentLoaded", function() {
            // Set default value to "false"
            const checkingElement = document.getElementById("checking");
            const namaWali = document.getElementById("namaWali");
            const optionsWali =  document.getElementById('options');
            const statusHubungan = document.getElementById('statusHubungan');

          

            // Add event listener to the button
            document.getElementById('openModalButtonWali').addEventListener('click', function() {
               document.getElementById('waliForm').classList.remove('hidden');
               checkingElement.value = "true";
               document.getElementById('title').textContent = 'Konfirmasi TTD Wali Pasien';
               namaWali.required=true;
               optionsWali.required=true;
               
            });

            document.getElementById('openModalButtonPasien').addEventListener('click', function(){
                document.getElementById('waliForm').classList.add('hidden');
                checkingElement.value = 'false';
                document.getElementById('title').textContent = 'Konfirmasi TTD Pasien';
                namaWali.required=false;
                optionsWali.required=false;
                namaWali.value=null;
                optionsWali.value=null;
                statusHubungan.value=null;
            });
        }); 

        document.addEventListener("DOMContentLoaded", function() {
            const canvas = document.getElementById('signaturePad');
            let signaturePad;

            function initializeSignaturePad() {
                if (signaturePad) {
                    signaturePad.clear();
                    return;
                }
                signaturePad = new SignaturePad(canvas);
            }
            const savePNGButton = document.getElementById('registerButton');

            // Resize the canvas to fill its parent element
            function resizeCanvas() {
                let ratio = Math.max(window.devicePixelRatio || 1, 1);
                canvas.width = canvas.offsetWidth * ratio;
                canvas.height = canvas.offsetHeight * ratio;
                canvas.getContext("2d").scale(ratio, ratio);
                if (signaturePad) {
                  signaturePad.clear();
                }
            }
            function openModal() {
                modal.classList.remove('hidden');
                initializeSignaturePad();
                resizeCanvas();
            }
            function closeModal() {
                modal.classList.add('hidden');
            }
            document.getElementById('closeModalButton').addEventListener('click', closeModal);


            savePNGButton.addEventListener("click", function (event){
                if (signaturePad && signaturePad.isEmpty()) {
                    alert("Please provide signature first.");
                    event.preventDefault();
                } else {
                    var dataUrl = canvas.toDataURL();
                    document.getElementById("signature").value = dataUrl;
                }
            });


            document.getElementById('clear').addEventListener('click', function () {
                if (signaturePad) {
                    signaturePad.clear();
                }
            });

            window.addEventListener('resize', resizeCanvas);
            resizeCanvas();

            window.addEventListener('resize', resizeCanvas);

// You may need to add code to open the modal, e.g., on button click:
         document.getElementById('openModalButtonWali').addEventListener('click', openModal)
         document.getElementById('openModalButtonPasien').addEventListener('click', openModal)

           
        });

    document.addEventListener("DOMContentLoaded", function() {
        const options = document.getElementById('options');
        const otherOptionContainer = document.getElementById('ortherSelect');
        const otherOptionsInput = document.getElementById('otherOptionsInput');
        const statusHubungan = document.getElementById('statusHubungan');

        options.addEventListener('change', function() {
            if (options.value === 'other') {
                otherOptionContainer.classList.remove('hidden');
                statusHubungan.value = '';
            } else {
                document.getElementById('statusHubungan').value = options.value;
                otherOptionContainer.classList.add('hidden');
            }
            
        });

        otherOptionsInput.addEventListener('input', function() {
            statusHubungan.value = otherOptionsInput.value;
        });
    })

        

        // // Toggle Status Dropdown
        // document.getElementById('statusDropdownButton').addEventListener('click', function() {
        //     var statusDropdown = document.getElementById('statusDropdown');
        //     statusDropdown.classList.toggle('hidden');
        // });

        // // Handle Status Selection
        // document.querySelectorAll('#statusDropdown a').forEach(function(item) {
        //     item.addEventListener('click', function(event) {
        //         event.preventDefault(); // Prevent default link behavior
        //         var selectedStatus = this.getAttribute('data-status');
        //         document.getElementById('statusDropdownButton').textContent = selectedStatus;
        //         document.getElementById('statusValue').value = selectedStatus;
        //         document.getElementById('statusDropdown').classList.add('hidden');
        //     });
        // });
        
        const modal = document.getElementById('modal');
        const overlay = document.querySelector('.modal-overlay');
        const openModalButtonWali = document.getElementById('openModalButtonWali');
        const openModalButtonPasien = document.getElementById('openModalButtonPasien')
        const closeModalButton = document.getElementById('closeModalButton');

        // Function to open modal
        function openModal() {
            modal.classList.remove('hidden');
        }

        // Function to close modal
        function closeModal() {
            modal.classList.add('hidden');
        }

        // Event listeners
        openModalButtonWali.addEventListener('click', openModal);
        openModalButtonPasien.addEventListener('click', openModal);
        closeModalButton.addEventListener('click', closeModal);
        overlay.addEventListener('click', closeModal); // Close modal if clicked outside of it
     


    
    </script>
  </body>
</html>