<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Appuser extends Model
{
    use HasFactory, SoftDeletes;

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
    ];

    protected $hidden = [
        'password',
    ];
}
