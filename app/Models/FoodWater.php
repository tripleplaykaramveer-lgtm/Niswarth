<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FoodWater extends Model
{
    use HasFactory;

    protected $fillable = [
        'image',
        'title',
        'description',
        'button_text',
        'short_order',
    ];
}
