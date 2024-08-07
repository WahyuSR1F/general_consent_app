
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cetak Dokumen</title>  
  <style>
    /* style.css */

body {
  width: 100%;
  height: 100%;
  margin: 0px;
  padding-right: 10px;
  padding-left: 10px;
  padding-bottom: 5px;
  background-color: white;
  font: 12pt "times new roman";
}

* {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}

header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  text-align: center;
}

header .header-left,
header .header-right {
  display: inline;
  width: 15%;
  vertical-align: top;
}

header .header-left img,
header .header-right img {
  padding:0px;
  margin:0px;
  vertical-align: top;
  display: inline;
  width: 44px;
  height: 44px;
}

.header-center {
  display: inline-block;
  width: 70%;
  vertical-align: middle;
  margin: 0px;
}

header h4,
header h5 {
  margin: 5px 0;
}

header p {
  margin: 5px 0;
  font-size: 50%;
}

header h4 {
  font-size: 10px;
}

.page {
  width: auto;
  min-height: 297mm;
  padding-top: 10mm;
  padding-bottom: 5mm;
  padding-left: 10mm;
  padding-right: 10mm;
  margin: 0px;
  border-radius: 5px;
  background: white;
  position: relative;
  page-break-after: always;
}

.subpage {
  padding: 1cm;
  border: 5px red solid;
  height: 257mm;
  outline: 2cm #FFEAEA solid;
}

td {
  padding-top: 5px;
}

@page {
  size: A4;
  margin: 0;
}



@media print {
  html,
  body {
    width: 210mm;
    height: 297mm;
  }

  .page {
    margin: 0;
    margin-bottom:40px;
    border: initial;
    border-radius: initial;
    width: initial;
    min-height: initial;
    box-shadow: initial;
    background: initial;
    page-break-after: always;
  
  }


}

.page-break {
  display: none;
}

.border {
  border: black solid 1px;
}

.consent-table {
  width: 100%;
  border-collapse: collapse;
  table-layout: fixed;
}

.consent-table td {
  border: black solid 1px;
  padding: 5px;
}

.table-data td {
  border: none;
}

.line {
  border-bottom: black dotted 1px;
}

.p-absolut {
  top: 0;
  left: 0;
  position: relative;
}

.p-relatif {
  top: 0;
  left: 0;
  vertical-align: top;
}

.table-data-p td {
  border: none;
}

.bg-black {
  background-color: black;
}

.bg-yellow {
  background-color: yellow;
}

.bg-red {
  background-color: red;
}

.bg-green {
  background-color: green;
}

.bg-gray {
  background-color: whitesmoke;
}

.table-pengatar td {
  border: none;
}

.margin-none {
  margin: 0px;
  padding: 0px;
}

  </style>
  
</head>

<body>
 
  <div class="book">
    <div class="page" id="result">

      <table class="consent-table">
        <tr>
          <td colspan="2" rowspan="2">
            <header>
              <div class="header-left">
                <img src="data:image/png;base64,{{ $data['logoLeft'] }}" alt="Left Logo">
              </div>
              <div class="header-center">
                <h4>PEMERINTAH KABUPATEN BANYUWANGI</h4>
                <h4>DINAS KESEHATAN</h4>
                <h5>UPTD <span style="text-transform:uppercase">{{ strtoupper($consent['pkm_nama']) }}</span></h5>
                <p style="font-size:10px;">{{ $consent['pkm_alamat'] }}</p>
                <p style="font-size: 10px;">{{ $consent['pkm_telepon'] }}</p>
                <p style="font-weight: bold; font-size:10px;">MUNCAR 68472</p>
              </div>
              <div class="header-right">
                <img src="data:image/png;base64,{{ $data['logoRight'] }}" alt="Right Logo">
              </div>
            </header>
          </td>
         
          <td colspan="2" class="border p-relatif">
            <p  style="text-align: center;">RMJ Form. 01</p>
          </td>
        </tr>
        <tr>
          <td colspan="2" class="border p-relatif">
            <h5 style="text-align: center;">GENERAL CONSENT</h5>
          </td>
        </tr>
        <tr>
          <td colspan="4" style="border:none;">
            <div style="padding-inline: 3px;">
              <p style="margin:0px;">Yang bertanda tangan di bawah ini, saya</p>
              <table class="table-data" style="margin: 0px;">
                <tr>
                  <td>
                    Nama Lengkap
                  </td>
                  <td>:</td>
                  <td>{{ $consent['nama'] }}</td>
                </tr>
                <tr>
                  <td>
                    Tempat Lahir
                  </td>
                  <td>:</td>
                  <td>{{ $consent['tempat'] }},<span style="margin-left: 5px;">{{ $consent['ttl'] }}</span> </td>
                </tr>
                <tr>
                  <td>
                    Alamat
                  </td>
                  <td>:</td>
                  <td>{{ $consent['alamat'] }}</td>
                </tr>
                <tr>
                  <td>Nomor Telepon</td>
                  <td>:</td>
                  <td>{{ $consent['telepon'] }}</td>
                </tr>
                <tr>
                  <td>Bertindak Atas</td>
                  <td>:</td>
                  <td>{{ $consent['status'] }}</td>
                </tr>
              </table>
            </div>
          </td>
        </tr>
       
        <tr>
          <td colspan="4" style="border:none;">
            <p class="p-relatif" style="font-weight:bold;margin:0px;">Mendapatkan informasi tentang :</p>
          </td>
        </tr>
        <tr>
          <td colspan="4" style="border:none;">
            <h5 style="margin: 0px;">I. HAK DAN KEWAJIBAN PASIEN</h5>
          </td>
        </tr>
        <tr>
          <td colspan="4" style="vertical-align: top; margin:0px; border:none;">
            <ol type="a" style="margin:0px;">
              <li>
                <p class="margin-none">Hak Pasien</p>
                <ol type="a">
                  <li>memperoleh informasi mengenai tata tertib dan peraturan pelayanan yang berlaku di puskesmas.</li>
                  <li>
                    <p style="margin: 0px;">mendapatkan informasi diatas:</p>
                    <ol type='1'>
                      <li>Penyakit yang diderita</li>
                      <li>Tindakan medis yang akan dilakukan dan kemungkinan penyulit akibat tindakan tersebut, cara mengatasi alternatif lainya</li>
                      <li>Upaya pencegahan agar penyakit tersebut tidak kambuh lagi, atau pencegahan agar anggota keluarga /  orang lain tidak menderita penyakit yang sama</li>
                      
                    </ol>
                  </li>
                  <li>meminta konsultasi medis</li>
                  <li>menyampaikan pengaduhan, saran , keritik, dan keluhan yang berkaitna dengan pelayanan.</li>
                  <li>Memperoleh layanan yang bermutu, aman, nyaman, adil, jujur, dan manusiawi.</li>
                  <li>Hasil Pemeriksaan yang meliputi diagnosis dan tata cara tindakan, tujuan tindakan, alternatif tindakan resiko, biaya dan komplikasi yang mungkin terjadi dan prognoses terhadap tindakan yang dilakukan.</li>
                  <li>Memberikan persetujuan atau menolak atas tindakan yang akan dilakukan oleh tenaga kesehatan terhadap penyakit yang diderotanya kecuali untuk kasus KLB dan kasus yang dapat membahayakan masyarakat.</li>
                  <li>Keluarga dapat mendampingi saat menerima pelayanan kesehatan.</li>
                </ol>
              </li>
              <li>
                <p style="margin: 0px">Kewajiban Pasien</p>
                <ol type="a">
                  <li>Membawa salah satu kartu identitas (KTP, KK, KIA, KIS)</li>
                  <li>Mengikuti alur pelayanan Puskesmas Genteng Kulon</li>
                  <li>Menaati peraturan yang berlaku di Puskesmas Genteng Kulon</li>
                  <li>Memberikan  informasi yang benar dan lengkap atas masalah kesehatanya pada tenaga kesehatan di Puskesmas Genteng Kulon</li>
                  <li>Pasien Wajib dibawah saat berobat di Puskesmas</li>
                </ol>
              </li>
            </ol>
          </td>
        </tr>
        <tr>
            <td colspan="4" style="border:none; padding-top:10mm;">
              <h5 style="margin: 0px">II. PERSETUJUAN UNTUK PERAWATAN DAN PENGOBATAN</h5>
              <ol type="1">
                <li>Saya mengetahui bahwa saya memiliki kondisi yang membutuhkan perawatan medis, saya mengijinkan dokter / tenaga kesehatan lainnya di Puskesmas Genteng Kulon untuk melakukan pemeriksaan dan memberikan pengobatan / tindakan / asuhan yang sesuai dengan prosedur.</li>
                <li>Saya sadar bahwa praktik kedokteran bukanlah sebuah ilmu yang pasti, dan saya mengakui bahwa tidak ada jaminan atas hasil apapun terhadap prosedur pengobatan / asuhan / tindakan lainnya yang dilakukan terhadap saya.</li>
                <li>
                  <p style="margin:0px;">Saya mengerti dan memahami bahwa :</p>
                  <ol type="a">
                    <li>Saya memiliki hak untuk menyatakan persetujuan atau penolakan untuk setiap prosedur atau terapi yang akan diberikan kepada saya.</li>
                    <li>Saya memiliki hak untuk mengajukan pertanyaan tentang rencana pelayanan yang akan diberikan kepada saya, termasuk identitias setiap orang yang akan memberikan pelayanan pemeriksaan/ tindakan kepada saya.</li>
                  </ol>
                  
                </li>
              </ol>
            </td>
        </tr>
        <tr>
          <td colspan="4" style="vertical-align: top; margin:0px; border:none;">
            <h5 style="margin: 0px">III. PERSETUJUAN PELEPASAN INFORMASI</h5>
            <ol type="1">
              <li>Saya memahami bahwa informasi yang berada dalam diri saya terkait dengan kondisi kesehatan saya, berdasar pada hasil pemeriksaan yang saya jalani di Puskesmas Genteng Kulon, akan terjamin kerahasiaannya.</li>
              <li>Saya memberi wewenang kepada Puskesmas Genteng Kulon untuk memberikan informasi terkait kondisi kesehatan saya apabila diperlukan untuk kebutuhan proses hukum apabila diperlukan.</li>
            </ol>
          </td>

        </tr>
        <tr>
          <td colspan="4" style="vertical-align: top; margin:0px; border:none;">
            <h5 style="margin: 0px">IV. INFORMASI BIAYA PELAYANAN PUSKESMAS</h5>
            <ol type="1">
              <li>Saya telah memahami informasi biaya pengobatan dan biaya tindakan yang telah disampaikan dari pihak Puskesmas Genteng Kulon, dan saya bersedia untuk biaya tersebut sesuai peraturan yang berlaku.</li>
            </ol>
          </td>

        </tr>
        <tr>
          <td colspan="2" style="text-align: center; border:none;">
            
{{-- Suggested code may be subject to a license. Learn more: ~LicenseLog:347673496. --}}
            <p style="font-display: bold; margin-top:54px;">Petugas</p>
            <div>
              <img style="width:200px; height:70px;" src="data:image/png;base64, {{ $data['signaturePetugas']}}" alt="" srcset="">
            </div>
           
            <p style="margin-top: 10px; margin-bottom:0px; text-decoration:underline; font-weight:bold; text-transform: capitalize;">{{ $consent['petugas_nama']}}</p>
            <p style="margin-top:0px; font-weight:bold;">{{ $consent['petugas_nip'] }}</p>
          </td>
        
          <td colspan="2" style="text-align: center; border:none;">
            <p style="font-display:font-bold">Banyuwangi, {{ $consent['date'] }}</p>
            @if ($consent['wali'] == true)
              <p style="font-display: bold">Wali Pasien</p>
            @elseif ($consent['wali'] == false)
              <p style="font-display: bold">Pasien</p> 
            @endif
          
            
            <div style="margin-top:0px;">
              <img style="width:200px; height:70px;" src="data:image/png;base64, {{ $data['signaturePasien']}}" alt="" srcset="">
            </div>
            <p style="margin-top: 0px; text-decoration:underline; font-weight:bold; text-transform: capitalize;">{{ $consent['nama_signature']}}</p>
          </td>
        </tr>
      </table>
    </div>
  </div>
</body>

</html>
