<?php

use App\Http\Controllers\GeneralConsentController;
use App\Http\Middleware\AuthPkmAccess;
use Illuminate\Support\Facades\Route;


Route::get('/',function(){
    redirect()->route('login-view');
});

Route::get('/login',[GeneralConsentController::class, 'generalConsent'])->name('login-view');


Route::post('/login-process',[GeneralConsentController::class, 'loginProcess'])->name('login_process');


Route::middleware(AuthPkmAccess::class)->group(function(){
    
    Route::get('/petugas',[GeneralConsentController::class, 'dataPetugas'])->name('petugas');
    Route::post('/petugas-prosess',[GeneralConsentController::class,'getPetugas'])->name('petugas-prosess');

    Route::get('/cari-pasien',[GeneralConsentController::class, 'searchPasiensView'])->name('search');
    Route::post('/cari-pasien-process',[GeneralConsentController::class, 'searchPassiensProsess'])->name('search-process');
    Route::get('/detail-pasien',[GeneralConsentController::class, 'detailPasienView'])->name('detail-pasien');
    Route::get('/priview-consent',[GeneralConsentController::class, 'viewConsent'])->name('view-consent');
    Route::get('/finised', [GeneralConsentController::class, 'selesai'])->name('finish');
    Route::get('/logout',[GeneralConsentController::class, 'logout'])->name('logout');

    Route::get('/pkm-petugas-regis',function(){
        return view ('page.register_petugas');
    });
    route::post('/cetak-general-consent',[GeneralConsentController::class, 'makeGeneralConsent'])->name('cetak-general-consent');
    Route::post('/regis-petugas-prosess',[GeneralConsentController::class, 'regisPetugas'])->name('regis-petugas-process');
    Route::post('/signature-upload', [GeneralConsentController::class,'signatureUploud'])->name('signature_upload');
    Route::get('/general-consent/print', [GeneralConsentController::class,'generalConsentFile'])->name('general-consent-print');
});





Route::get('/view', function () {
    $logoLeft = '/home/user/general-conset-app/public/assets/img/kabupaten-banyuwangi1685453554_0b418421a0f1960a0e0d.png';
    $logoRight = '/home/user/general-conset-app/public/assets/img/puskesmas.png';

    $data=[
       'logoLeft' => $logoLeft,
       'logoRight' =>  $logoRight
    ];
    return view('document.general_consent', ['data'=>$data]);
});

//guard route 
