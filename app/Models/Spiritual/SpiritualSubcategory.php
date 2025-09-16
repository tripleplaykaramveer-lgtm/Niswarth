<?php

namespace App\Models\Spiritual;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Spiritual\SpiritualChaildernCategory;

class SpiritualSubcategory extends Model
{
    use HasFactory, SoftDeletes;
     protected $table="spiritual_subcategorys";

    protected $casts = [
        'name' => 'array',
    ];
    protected $fillable = [
    'spiritual_id',
    'name',
    'title',
    'status',
    'short_order',
];


    public function spiritual()
    {
        return $this->belongsTo(Spiritual::class, 'spiritual_id', 'id');
    }

    public function spiritualchailderncategory(){
        return $this->hasMany(SpiritualChaildernCategory::class,'spiritual_subcategory_id','id');
    }

    protected $dates = ['deleted_at'];
}
