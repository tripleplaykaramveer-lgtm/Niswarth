<?php

namespace App\Models\Education;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Education\EducationSubcategory;
use App\Models\Education\EducationMiniChaildernCategory;

class EducationChaildernCategory extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = "education_chailderncategorys";


    protected $fillable = [
        'educationsubcategory_id',
        'name',
        'short_order',
        'status',
    ];

    public function educationsubcategory()
    {
        return $this->belongsTo(EducationSubcategory::class, 'educationsubcategory_id', 'id');
    }

    public function educationminichailderncategory()
    {
        return $this->hasMany(EducationMiniChaildernCategory::class,'educationchailderncategory_id','id');
    }

    protected $dates = ['deleted_at'];
}

