<?php

namespace App\Models\Clothes;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Clothes\ClothChaildernCategory;

class ClothSubcategory extends Model
{
    use HasFactory, SoftDeletes;
     protected $table="cloth_subcategorys";


    protected $casts = [
        'name' => 'array',
    ];
  protected $fillable = [
    'cloth_id',
    'name',
    'title',
    'status',
    'short_order',
];


    public function cloth()
    {
        return $this->belongsTo(Cloth::class, 'cloth_id', 'id');
    }

    public function clothchailderncategory(){
        return $this->hasMany(ClothChaildernCategory::class,'cloth_subcategory_id','id');
    }

    protected $dates = ['deleted_at'];
}
