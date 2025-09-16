<?php

namespace App\Models\Clothes;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Clothes\ClothSubcategory;
use App\Models\Clothes\ClothMiniChaildernCategory;

class ClothChaildernCategory extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = "cloth_chailderncategorys";

    protected $fillable = [
        'cloth_subcategory_id',
        'name',
        'title',
        'status',
        'short_order',
    ];

    public function clothsubcategory()
    {
        return $this->belongsTo(ClothSubcategory::class, 'cloth_subcategory_id', 'id');
    }

    public function clothminichailderncategory()
    {
        return $this->hasMany(ClothMiniChaildernCategory::class,'cloth_chailderncategory_id ','id');
    }

    protected $dates = ['deleted_at'];
}

