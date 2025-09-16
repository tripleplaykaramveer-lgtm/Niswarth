<?php

namespace App\Models\Medicine;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Medicine\MedicineSubcategory;
use App\Models\Medicine\MedicineMiniChaildernCategory;

class MedicineChaildernCategory extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = "medicine_chaildrencategorys";

    protected $fillable = [
        'medicinesubcategory_id',
        'name',
        'status',
        'title',
        'short_order'
    ];

    public function medicinesubcategory()
    {
        return $this->belongsTo(MedicineSubcategory::class, 'medicinesubcategory_id', 'id');
    }

    public function medicineminichailderncategory()
    {
        return $this->hasMany(MedicineMiniChaildernCategory::class,'medicinechaildrencategory_id','id');
    }

    protected $dates = ['deleted_at'];
}

