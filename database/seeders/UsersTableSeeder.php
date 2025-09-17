<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            [
                'name' => 'webpino',
                'email' => 'admin@gmail.com',
                'password' => Hash::make('123456789'),
                'mobile_number' => '1234567890',
                'status' => 1,
                'role' => 1,
                'assign_user' => 0,
                'image' => null,
                'is_verified' => 1,
                'device_user_token' => null,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'crmuser',
                'email' => 'crmuser@admin.com',
                'password' => Hash::make('123456789'),
                'mobile_number' => '1234567890',
                'status' => 1,
                'role' => 1,
                'assign_user' => null,
                'image' => null,
                'is_verified' => 1,
                'device_user_token' => null,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Devashish Soni',
                'email' => 'admin@admin.com',
                'password' => Hash::make('123456789'),
                'mobile_number' => '1234567890',
                'status' => 1,
                'role' => 1,
                'assign_user' => null,
                'image' => null,
                'is_verified' => 1,
                'device_user_token' => null,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'New CRM User',
                'email' => 'newcrmuser@gmail.com',
                'password' => Hash::make('123456789'),
                'mobile_number' => '1234567891',
                'status' => 1,
                'role' => 1,
                'assign_user' => null,
                'image' => null,
                'is_verified' => 1,
                'device_user_token' => null,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
