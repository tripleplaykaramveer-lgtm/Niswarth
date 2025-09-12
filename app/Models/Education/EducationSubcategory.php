<?php

namespace App\Models\Education;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Education\EducationChaildernCategory;

class EducationSubcategory extends Model
{
    use HasFactory, SoftDeletes;
     protected $table="education_subcategorys";


    protected $casts = [
        'name' => 'array',
    ];
    protected $fillable = [
        'education_id',
        'name',
        'title',
        'status',
        'short_order'
    ];

    public function education()
    {
        return $this->belongsTo(Education::class, 'education_id', 'id');
    }

    public function educationchailderncategory(){
        return $this->hasMany(EducationChaildernCategory::class,'educationsubcategory_id','id');
    }

    protected $dates = ['deleted_at'];
}
