<?php

namespace App\Models\Education;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Education\EducationChaildernCategory;

class EducationMiniChaildernCategory extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = "education_minichailderncategorys";
     protected $casts = [
        'name' => 'array',
    ];
    protected $fillable = [
        'educationchailderncategory_id',
        'name',
        'short_order',
        'status',
    ];

    public function educationchailderncategory()
    {
        return $this->belongsTo(EducationChaildernCategory::class, 'educationchailderncategory_id ', 'id');
    }

    protected $dates = ['deleted_at'];
}
