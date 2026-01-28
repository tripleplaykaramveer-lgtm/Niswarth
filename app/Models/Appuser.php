<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class Appuser extends Authenticatable
{
    use HasFactory, SoftDeletes, Notifiable;

    protected $table = 'appusers';

    protected $fillable = [
        'email',
        'password',
        'name',
        'phone',
        'address',
        'organization',
        'donation_type',
        'contact_method',
        'role',
        'email_otp',
        'email_verified_at'
    ];

    protected $hidden = [
        'password',
    ];
}
