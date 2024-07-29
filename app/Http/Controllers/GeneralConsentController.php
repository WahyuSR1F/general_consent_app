<?php

namespace App\Http\Controllers;

use App\Models\GeneralConsent;
use App\Models\Pasien;
use App\Models\Petugas;
use App\Models\WaliPasiens;
use App\Rules\MustNullChecker;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Exception;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;



class GeneralConsentController extends Controller
{

   //view Page
     public function generalConsent()
     {
        return view('page.login');
     }

     public function searchPasiensView(Request $request){
         $data =  Auth::guard('web')->user();
       return view('page.search_pasiens', $data);
     }

     public function  detailPasienView(Request $request){
         $data =  $request->session()->get('pasien');

         $decryptData =  Crypt::decrypt($data);

         $pasien = json_decode($decryptData);
         $uuid = [
            'pasien' => $pasien
         ];
         
// Suggested code may be subject to a license. Learn more: ~LicenseLog:458347404.
         $data = Pasien::with('puskesmas')->where('uuid', $uuid['pasien']->uuid)->first();
         return view('page.detail_pasiens', ['data'=>$data]);
     }

     public function viewConsent (Request $request){
         $data =  $request->session()->get('general_consent');

         $decryptData =  Crypt::decrypt($data);

         $consent = json_decode($decryptData);
         $consent = [
            'consent' => $consent
         ];

         $consentFile = file_get_contents(public_path('storage/general-consent/'.$consent["consent"]->file));
         $consentFile = base64_encode($consentFile);
         $consentFile = 'data:application/pdf;base64,' . $consentFile;
         


          return view('page.priview_consent', ['consent' => $consentFile]);
     }



     //logic prosess
     public function loginProcess (Request $request)
     {
      
      try{
         $request->validate([
            'username' => 'required|string',
            'password' => 'required|string',
         ]);

     

         $credentials = $request->only('username','password');
         if(!Auth::guard('web')->attempt($credentials)){
            return back()->with(['error' => 'username atau password salah']);
         }

         // check data apakah sudah terauthentikasi

         if(!Auth::guard('web')->check()){
            return back()->with(['error' => 'Anda belum login']);
         }

         $user = Auth::guard('web')->user();
         
         return redirect()->route('petugas');
      }catch (ValidationException $e) {
         return back()->with(['error' => $e->getMessage()]); // Unprocessable Entity
      } catch (\Exception $e) {
         return back()->with(['erorr' => 'Sistem sedang sibuk']);
     }
      
     }

     public function regisPetugas (Request $request){
      try{
         $request->validate([
            'nama' => 'required|string',
            'nip' => 'required|string',
            'signature' => 'required|string|starts_with:data:image/png;base64,'
        ]);

        $pkm = Auth::guard('web')->user();

        // melakukan save signature
        $nameSignature =  $request->nip.'_'.$request->nama;
        
        $uuid = Str::uuid();

        $nameImgFIle =  $this->signatureUploud($request->signature, $nameSignature, 'signature/petugas' );
   
        Petugas::create([
            'uuid' => $uuid,
            'puskesmas_id' =>  $pkm->uuid,
            'nama' => $request->nama,
            'nip' => $request->nip,
            'signature' => $nameImgFIle
        ]);
        
        return redirect()->route('petugas');
      }catch (ValidationException $e) {
         return back()->with(['error' => $e->getMessage()]); // Unprocessable Entity
      }catch (\Exception $e) {
         return back()->with(['error' => $e->getMessage()]);
      }
       
     }

     public function dataPetugas (Request $request){
        $data = Auth::guard('web')->user();

        $petugas = Petugas::where('puskesmas_id', $data->uuid)->get();
        

        return view('page.list_petugas',['petugas' => $petugas, 'data' => $data]);
      
     }

     public function getPetugas (Request $request) {
        $id = $request->input('uuid');

        $petugas = Petugas::where('uuid', $id)->first();

        $jsonPetugas =  json_encode($petugas);

        $encryptedPetugas =  Crypt::encrypt($jsonPetugas);
        //lakukan enkripsi session
       // simpan data petugas pada session
        $request->session()->put('petugas', $encryptedPetugas);
        return redirect()->route('search');
     }


     public function searchPassiensProsess (Request $request){
      try{
         $request->validate([
           'nomor' => 'required|string'
         ]);
         $pkm = Auth::guard('web')->user();
         

         $pasien = Pasien::where(function ($query) use ($request) {
            $query->where('nik', $request->nomor)
                  ->orWhere('no_rm', $request->nomor);
         })
         ->where('puskesmas_id', $pkm->uuid)
         ->with('generalConsent')
         ->first();

         // if($pasien->generalConsent != null){
         //    return redirect()->route('search')->with(['error' => 'Pasien sudah dilakukan general consent !!!!']);
         // }

         
         
         if( $pasien == null){
            return redirect()->route('search')->with(['error' => 'Pasien tidak ditemukan atau pasien tidak terdaftar dipuskesmas ini']);
         }
         //store in session

         $jsonPasien =  json_encode($pasien);

// Suggested code may be subject to a license. Learn more: ~LicenseLog:1176898448.
         $encryptedPasien =  Crypt::encrypt($jsonPasien);
         $request->session()->put('pasien', $encryptedPasien);

         return redirect()->route('detail-pasien');
      }catch (ValidationException $e) {
         return back()->with(['error' => $e->getMessage()]); // Unprocessable Entity
      }catch (\Exception $e) {
         return back()->with(['error' => $e->getMessage()]);
      }
     }
   //validated requered null for securty sistem
   

   public function makeGeneralConsent (Request $request){
      try{
         
         //inilialisasi variabel pasiens
         $data =[];
         
         $pkm = Auth::guard('web')->user();
         

         if($request->input('check') == "false"){
            $request->validate([
               'nama' => [new MustNullChecker],
               'tempat' => [new MustNullChecker],
               'ttl' => [new MustNullChecker],
               'alamat' => [new MustNullChecker],
               'telepon' => [new MustNullChecker],
               'status' => [new MustNullChecker],
               'signature' => 'required|string|starts_with:data:image/png;base64,'
            ]);
         } else {
            $request->validate([
               'signature' => 'required|string|starts_with:data:image/png;base64,',
               'nama' =>  'required|string',
               'tempat' => 'required|string',
               'ttl' => 'required|string',
               'alamat' => 'required|string',
               'telepon' => 'required|string',
               'status' => 'required|string'
            ]);
         }

         //uploud sistem file

         // mendapatkan pasiens
         $pasien =  $request->session()->get('pasien');

         $decryptPasien =  Crypt::decrypt($pasien);

         $pasien = json_decode($decryptPasien);
         $pasien = [
            'pasien' => $pasien
         ];

         // mendapatkan petugas

         $petugas = $request->session()->get('petugas');

         $decryptPetugas =  Crypt::decrypt($petugas);

         $petugas =  json_decode($decryptPetugas);

         $petugas = [
            'petugas' => $petugas
         ];



         if($request->input('check') == "true"){
            //wali fiture
            $uuidConsent = Str::uuid();
            $uuidWali =  Str::uuid();

            //uploud signature
            $pasien = Pasien::where('uuid', $pasien['pasien']->uuid)->first();
            $imgName =  $pasien->no_rm .'-'.$pasien->nama.'';
            $path = $this->signatureUploud($request->signature, $imgName, 'signature/pasiens');
            $pasien->update(['signature', $path]);


            WaliPasiens::create([
               'uuid' => $uuidWali,
               'nama' =>  $request->nama,
               'tempat_lahir' => $request->tempat,
               'tanggal_lahir' => $request->ttl,
               'alamat' => $request->alamat,
               'telephone' => $request->telepon,
               'status' => $request->status,
            ]);


            //data for file generate
            $data = [
               "nama" =>  $request->nama,
               "tempat" => $request->tempat,
               "ttl" => $request->ttl,
               "alamat" => $request->alamat,
               "telepon" => $request->telepon,
               "status" =>  $request->status,
               "signature_petugas" => $petugas['petugas']->signature,
               "signature_pasiens" =>  $path,
               "wali" => true,
               "pkm_nama" =>  $pkm->nama,
               "pkm_alamat" =>  'jalan xxxx nomer xxxxx, kab xxxxx',
               "pkm_telepon" =>  'telephone',
               "petugas_nama" => $petugas['petugas']->nama,
               "petugas_nip" => $petugas['petugas']->nip,
               "date" => Carbon::now()->locale('id')->isoFormat('D MMMM YYYY')
            ];
            //uploud and generate pdf
            $fileName =  $pasien->no_rm .'-'.$pasien->nama.'.pdf';
            $this->generalConsentFile($data,$fileName); 
            
            //create 
            GeneralConsent::create([
               'uuid' => $uuidConsent,
               'puskesmas_id' => $pkm->uuid,
               'pasien_id' => $pasien->uuid,
               'petugas_id' => $petugas['petugas']->uuid,
               'wali_id' => $uuidWali,
               'file' => $fileName
            ]);

            $generalConsent =  GeneralConsent::where('uuid',$uuidConsent)->first();
            $generalConsent =  json_encode($generalConsent);
            $encryptedConsent =  Crypt::encrypt($generalConsent);
            //lakukan enkripsi session
            // simpan data petugas pada session
            $request->session()->put('general_consent', $encryptedConsent);

            return redirect()->route('view-consent');

            //$this->generalConsentFile();
          } else {
            // pasiens
            $uuidConsent = Str::uuid()->toString();
         
            $pasien = Pasien::where('uuid', $pasien['pasien']->uuid)->first();
            $imgName =  $pasien->no_rm .'-'.$pasien->nama.'';
            $path = $this->signatureUploud($request->signature, $imgName, 'signature/pasiens');
            $pasien->update(['signature', $path]);
            
            $data = [
               "nama" =>  $pasien->nama,
               "tempat" => $pasien->tempat_lahir,
               "ttl" => $pasien->tanggal_lahir,
               "alamat" => $pasien->alamat,
               "telepon" => $pasien->telephone,
               "status" =>  'Diri Saya Sendiri',
               "signature_petugas" => $petugas['petugas']->signature,
               "signature_pasiens" =>  $path,
               "wali" => false,
               "pkm_nama" =>  $pkm->nama,
               "pkm_alamat" =>  'jalan xxxx nomer xxxxx, kab xxxxx',
               "pkm_telepon" =>  'telephone',
               "petugas_nama" => $petugas['petugas']->nama,
               "petugas_nip" => $petugas['petugas']->nip,
               "date" => Carbon::now()->locale('id')->isoFormat('D MMMM YYYY')
            ];

            $fileName =  $pasien->no_rm .'-'.$pasien->nama.'.pdf';
            $this->generalConsentFile($data,$fileName); 
            
             
            
            GeneralConsent::create([
               'uuid' => $uuidConsent,
               'puskesmas_id' => $pkm->uuid,
               'pasien_id' => $pasien->uuid,
               'petugas_id' => $petugas['petugas']->uuid,
               'wali_id' => null,
               'file' => $fileName
            ]);

            
            $generalConsent =  GeneralConsent::where('uuid',$uuidConsent)->first();
            

            $generalConsent =  json_encode($generalConsent);

            $encryptedConsent =  Crypt::encrypt($generalConsent);
            //lakukan enkripsi session
           // simpan data petugas pada session
            $request->session()->put('general_consent', $encryptedConsent);

            return redirect()->route('view-consent');
          }
          
      }catch (ValidationException $e) {
         return back()->with(['error' => $e->getMessage()]); // Unprocessable Entity
      }catch (\Exception $e) {
         return back()->with(['error' => $e->getMessage()]);
      }
   
    }

    public function PriviewFile (Request $request){
      try{


      }catch (ValidationException $e) {
         return back()->with(['error' => $e->getMessage()]); // Unprocessable Entity
      }catch (\Exception $e) {
         return back()->with(['error' => $e->getMessage()]);
      }
   
    }

    protected function signatureUploud ($imageFile, $nameImg, $folder)
     {
            if($imageFile){
               $imageFile =  str_replace('data:image/png;base64,', '', $imageFile);
            }
            //validasi

            if(!base64_decode($imageFile, true)){
               return response()->json(['error' => 'Invalid signature for base64 data'], 400);
            }

            //decode menjadi data biner
            $imageFile = base64_decode($imageFile);

            //membuat nama file
            $id = time();
            $nameImage = $nameImg . '.png';

            //simpan

            $data = $this->uploud($imageFile, $nameImage, $folder);

            return $nameImage;
     }

     public function selesai(Request $request){
       $request->session()->forget('general_consent');
       $request->session()->forget('petugas');
       $request->session()->forget('pasien');

       return redirect()->route('petugas');
     }

     public function logout(Request $request){
       Auth::guard('web')->logout();
       $request->session()->flush();
       return redirect()->route('login-view');
     }

     protected function generalConsentFile ($dataContent, $fileName)
     {
      try{
         
        
         $logoLeft = base64_encode(file_get_contents(public_path('assets/img/kabupaten-banyuwangi1685453554_0b418421a0f1960a0e0d.png')));
         $logoRight = base64_encode(file_get_contents(public_path('assets/img/puskesmas.png')));

         $signaturePetugas = base64_encode(file_get_contents(public_path('storage/signature/petugas/'.$dataContent["signature_petugas"])));
         $signaturePasien = base64_encode(file_get_contents(public_path('storage/signature/pasiens/'.$dataContent["signature_pasiens"])));
         
         $data=[
            'logoLeft' => $logoLeft,
            'logoRight' =>  $logoRight,
            'signaturePetugas' => $signaturePetugas,
            'signaturePasien' => $signaturePasien,
         ];
        
         
         $pdf = Pdf::loadView('document/general_consent',['data' => $data, 'consent'=> $dataContent]);
         $pdf->setPaper('A4', 'potrait');
         $pdf->render();

         
         // dilakukan simpan kedalam storage filesystem laravel
         $fileConsent = $pdf->output();
         

         
         

         $this->uploud($fileConsent, $fileName, 'general-consent');

         return true;

         
      }catch (Exception $e) {
         return response()->json(['error' => 'Error Generating PDF', 'message' => $e->getMessage()], 500);
      }
       
     }


     protected function uploud ($imageFile, $imageName, $folder)
     {
        Storage::disk('public')->put($folder.'/'.$imageName, $imageFile);
     }
}
