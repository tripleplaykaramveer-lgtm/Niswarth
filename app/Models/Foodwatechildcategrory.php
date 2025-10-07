<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Spiritual\SpiritualSubcategory;
use App\Models\Spiritual\SpiritualMiniChaildernCategory;

class Foodwatechildcategrory extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = "food_water_chailderncategorys";

     protected $casts = [
        'name' => 'array',
    ];

    protected $fillable = [
        'food_water_subcategory_id', 'name', 'title', 'short_order', 'status'
    ];
    public function food_water() {
        return $this->belongsTo(FoodWater::class, 'food_water_subcategory_id');
    }



    protected $dates = ['deleted_at'];
}

