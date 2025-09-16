<?php

namespace App\Models\Clothes;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Clothes\ClothChaildernCategory;

class ClothMiniChaildernCategory extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = "cloth_minichailderncategorys";
     protected $casts = [
        'name' => 'array',
    ];
   protected $fillable = [
    'cloth_chailderncategory_id',
    'name',
    'title',
    'status',
    'short_order',
];


    public function clothchailderncategory()
    {
        return $this->belongsTo(clothchailderncategory::class, 'educationchailderncategory_id ', 'id');
    }

    protected $dates = ['deleted_at'];
}
