<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Foodwaterminichild extends Model
{
    use HasFactory, SoftDeletes;

    // If your DB table name differs, set it explicitly:
    protected $table = 'food_water_minichailderncategorys';

    protected $fillable = [
        'food_water_chailderncategory_id',
        'name',
        'title',
        'short_order',
        'status',
    ];

    public function parentChild()
    {
        // relates to Foodwatechildcategrory (your child-category model)
        return $this->belongsTo(Foodwatechildcategrory::class, 'food_water_chailderncategory_id');
    }

    protected $dates = ['deleted_at'];
}
