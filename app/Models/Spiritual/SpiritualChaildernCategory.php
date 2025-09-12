<?php

namespace App\Models\Spiritual;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Spiritual\SpiritualSubcategory;
use App\Models\Spiritual\SpiritualMiniChaildernCategory;

class SpiritualChaildernCategory extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = "spiritual_chailderncategorys";

     protected $casts = [
        'name' => 'array',
    ];

    protected $fillable = [
        'spiritual_subcategory_id',
        'name',
        'title',
        'status',
    ];

    public function spiritualsubcategory()
    {
        return $this->belongsTo(SpiritualSubcategory::class, 'spiritual_subcategory_id', 'id');
    }

    public function spiritualminichailderncategory()
    {
        return $this->hasMany(SpiritualMiniChaildernCategory::class,'spiritual_chaildrencategory_id','id');
    }

    protected $dates = ['deleted_at'];
}

