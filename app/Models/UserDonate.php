<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserDonate extends Model
{
    use SoftDeletes;

    protected $table = 'user_donates';

    protected $fillable = [
        'app_user_id',
        'item_id',
        'full_name',
        'email',
        'mobile',
        'address',
        'city',
        'state',
    ];
}
