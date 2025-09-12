<?php

namespace App\Models\Medicine;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Medicine\MedicineSubcategory;

class Medicine extends Model
{
    use HasFactory;

    protected $fillable = [
        'image',
        'title',
        'description',
        'button_text',
        'short_order'
    ];

    public function medicinesubcategory(){
        return $this->hasMany(MedicineSubcategory::class,'medicine_id','id');
    }
}
