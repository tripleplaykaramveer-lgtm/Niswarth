<?php

namespace App\Models\Medicine;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Medicine\MedicineChaildernCategory;

class MedicineMiniChaildernCategory extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = "medicine_minichaildrencategorys";
     protected $casts = [
        'name' => 'array',
    ];
    protected $fillable = [
        'medicinechaildrencategory_id',
        'name',
        'title',
        'status',
    ];

    public function medicinechaildernCategory()
    {
        return $this->belongsTo(MedicineChaildernCategory::class, 'medicinechaildrencategory_id ', 'id');
    }

    protected $dates = ['deleted_at'];
}
