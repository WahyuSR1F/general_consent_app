<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>General Consent</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-blue-900 flex items-center justify-center min-h-screen p-4">
    <div class="bg-gray-200 p-8 rounded-lg shadow-lg w-full max-w-5xl">
        <div class="bg-white p-6 rounded-lg shadow-md">
            <div class="border-b-2 pb-4 mb-4">
                <div class="flex items-center justify-between mb-2">
                    <img src="asset/img/logo.png" alt="Logo" class="h-16">
                    <div class="text-center">
                        <h1 class="font-bold text-lg">PEMERINTAH KABUPATEN BANYUWANGI</h1>
                        <h2 class="text-md">DINAS KESEHATAN</h2>
                        <h2 class="text-md">PUSKESMAS GENTENG KULON</h2>
                        <p class="text-sm">Jl. Diponegoro No. 30 | Telp: (0333) 845336</p>
                        <p class="text-sm">Email: pkmgenteng_kulon@yahoo.com</p>
                        <p class="text-sm">GENTENG 68465</p>
                    </div>
                </div>
                <h3 class="text-center font-bold text-xl">GENERAL CONSENT</h3>
            </div>
            <div class="text-sm mb-4">
                <p>Yang bertanda tangan di bawah ini, saya:</p>
                <p>Nama Lengkap: {{ $consent->nama }} / L/P</p>
{{-- Suggested code may be subject to a license. Learn more: ~LicenseLog:1870481483. --}}
                <p>Tempat/Tanggal Lahir: {{ $consent->tempat }} / {{ $consent->ttl }}</p>
                <p>Alamat: {{ $consent->alamat }}</p>
{{-- Suggested code may be subject to a license. Learn more: ~LicenseLog:280417783. --}}
                <p>Nomor Telepon: {{ $consent->telepon }}</p>
                <p>Berstatus sebagai: {{ $consent->status }}</p>
                <p>Berdasarkan informasi yang:</p>
            </div>
            <div class="text-sm mb-4">
                <h4 class="font-bold">I. HAK DAN KEWAJIBAN PASIEN</h4>
                <ol class="list-decimal pl-6">
                    <li>
                        Hak Pasien
                        <ul class="list-disc pl-6">
                            <li>Mendapatkan informasi mengenai tata tertib dan peraturan pelayanan yang berlaku di Puskesmas.</li>
                            <li>
                                Mendapatkan informasi tentang:
                                <ol class="list-decimal pl-6">
                                    <li>Penyakit yang diderita.</li>
                                    <li>Tindakan medis yang akan dilakukan dan kemungkinan penyakit akibat tindakan tersebut, cara mengatasi dan alternatif lainnya.</li>
                                    <li>Upaya pencegahan penyakit tersebut tidak bertambah luas, yang mencakup anggota keluarga/orang lain tidak menderita penyakit yang sama.</li>
                                </ol>
                            </li>
                            <li>Memperoleh konsultasi medis.</li>
                            <li>Memperoleh pelayanan yang aman, serbi dan tidak urian berkaitan dengan pengobatan.</li>
                            <li>Menolak tindakan yang akan dilakukan.</li>
                            <li>Memperoleh privasi dan kerahasiaan penyakit yang diderita termasuk data-data medisnya.</li>
                            <li>Mendapatkan informasi tentang diagnosis dan tata cara tindakan, tujuan tindakan, alternatif tindakan risiko, komplikasi yang mungkin terjadi dan prognosis terhadap tindakan yang dilakukan.</li>
                            <li>Mendapatkan second opinion.</li>
                            <li>Mengajukan usul, saran, perbaikan atas perlakuan Puskesmas terhadap dirinya.</li>
                        </ul>
                    </li>
                </ol>
            </div>
            <div class="text-sm mb-4">
                <h4 class="font-bold">II. PERSETUJUAN UNTUK PEMERIKSAAN DAN PENGOBATAN</h4>
                <ol class="list-decimal pl-6">
                    <li>
                        Saya mengetahui bahwa tindakan medis yang membutuhkan persetujuan medis saya, yang dilakukan di Puskesmas Genteng Kulon adalah sebagai berikut:
                        <ul class="list-disc pl-6">
                            <li>Menerima segala tindakan pelayanan medis oleh Puskesmas Genteng Kulon.</li>
                            <li>Menerima atau menolak pengobatan dan pelayanan medis.</li>
                            <li>Mendapatkan informasi yang cukup tentang prosedur dan perawatan.</li>
                            <li>Mengerti tentang segala tindakan medis yang akan dilakukan.</li>
                        </ul>
                    </li>
                </ol>
            </div>
            <div class="text-sm mb-4">
                <h4 class="font-bold">III. INFORMASI YANG DIBERIKAN OLEH PUSKESMAS GENTENG KULON</h4>
                <ol class="list-decimal pl-6">
                    <li>
                        Saya menerima informasi tentang hal-hal sebagai berikut:
                        <ul class="list-disc pl-6">
                            <li>Informasi tentang pelayanan dan pengobatan medis yang diberikan.</li>
                            <li>Informasi tentang hak dan kewajiban pasien.</li>
                            <li>Informasi tentang prosedur dan tata cara pelaksanaan pelayanan medis.</li>
                        </ul>
                    </li>
                </ol>
            </div>
            <div class="text-sm mb-4">
                <h4 class="font-bold">IV. INFORMASI LAINNYA</h4>
                <p>Saya bersedia mematuhi segala ketentuan dan tata tertib yang berlaku di Puskesmas Genteng Kulon, dan saya bersedia untuk membayar segala biaya yang timbul sesuai peraturan yang berlaku.</p>
            </div>
            <div class="text-sm">
                <p class="mb-4">Banyuwangi, .......................</p>
                <p class="mb-4">Pasien/ Wali Pasien</p>
                <div class="flex justify-between items-end">
                    <div class="flex flex-col items-center">
                        <div>
                            <img src="" alt="">
                        </div>
                        <p class="text-center">Nama</p>
                    </div>
                    <div class="flex flex-col items-center">
                        <img src="asset/img/signature.png" alt="signature" class="h-16">
                        <p class="text-center">Tanda Tangan</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="flex justify-center mt-6">
            <button class="bg-blue-700 text-white px-6 py-2 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-300 shadow-md hover:bg-blue-800">Selesai</button>
        </div>
    </div>
</body>
</html>
