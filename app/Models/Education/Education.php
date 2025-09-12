<?php

namespace App\Models\Education;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Education\educationSubcategory;

class Education extends Model
{
    use HasFactory;
     protected $table="educations";

    protected $fillable = [
        'image',
        'title',
        'description',
        'button_text',
         'sort_order',
    ];

    public function educationSubcategory(){
        return $this->hasMany(EducationSubcategory::class,'education_id','id');
    }
}
