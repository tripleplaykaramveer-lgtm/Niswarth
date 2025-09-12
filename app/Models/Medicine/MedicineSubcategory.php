<?php

namespace App\Models\Medicine;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Medicine\MedicineChaildernCategory;

class MedicineSubcategory extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = "medicine_subcategorys";

    protected $casts = [
        'name' => 'array',
    ];
    protected $fillable = [
        'medicine_id',
        'name',
        'title',
        'short_order',
        'status',
    ];

    public function medicine()
    {
        return $this->belongsTo(Medicine::class, 'medicine_id', 'id');
    }

    public function medicinechailderncategory()
    {
        return $this->hasMany(MedicineChaildernCategory::class, 'medicinesubcategory_id', 'id');
    }

    protected $dates = ['deleted_at'];
}
