<?php

namespace App\Models\Spiritual;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Spiritual\SpiritualChaildernCategory;

class SpiritualMiniChaildernCategory extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = "spiritual_minichailderncategorys";
     protected $casts = [
        'name' => 'array',
    ];
  protected $fillable = [
    'spiritual_chaildrencategory_id',
    'name',
    'title',
    'status',
    'short_order'
];


    public function spiritualchailderncategory()
    {
        return $this->belongsTo(SpiritualChaildernCategory::class, 'spiritual_chaildrencategory_id ', 'id');
    }

    protected $dates = ['deleted_at'];
}
