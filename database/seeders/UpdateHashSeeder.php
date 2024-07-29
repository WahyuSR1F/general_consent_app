<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UpdateHashSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
         // Ambil data dari tabel yang sudah ada
         $users = DB::table('master_puskesmas')->get();

         // Looping untuk mengupdate password menjadi dihash
         foreach ($users as $user) {
             DB::table('master_puskesmas')->where('id', $user->id)->update([
                 'password' => Hash::make($user->password)
             ]);
         }
    }
}
