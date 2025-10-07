<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Spiritual\SpiritualSubcategory;
use App\Models\Spiritual\SpiritualMiniChaildernCategory;

class FoodwaterSubcategory extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = "food_water_subcategorys";

     protected $casts = [
        'name' => 'array',
    ];

    protected $fillable = [
        'food_water_id', 'name', 'title', 'short_order', 'status'
    ];
    public function food_water() {
        return $this->belongsTo(FoodWater::class, 'food_water_id');
    }



    protected $dates = ['deleted_at'];
}

