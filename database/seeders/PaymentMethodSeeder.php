<?php

namespace Database\Seeders;

use App\Models\PaymentMethod;
use Illuminate\Database\Seeder;

class PaymentMethodSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        PaymentMethod::insert([
            [
                'id' => 1,
                'name' => 'COD',
                'content' => 'Silahkan lakukan pembayaran ditempat'
            ],
            [
                'id' => 2,
                'name' => 'Transfer BCA',
                'content' => 'Silahkan melakukan transfer <b>BCA</b> ke rekening dibawah ini <br>
                7150932577 <br>
                DWI LINGGA ASTUTI'
            ],
        ]);
    }
}
