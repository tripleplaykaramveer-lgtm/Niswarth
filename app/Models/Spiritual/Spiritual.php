<?php

namespace App\Models\Spiritual;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Spiritual\SpiritualSubcategory;

class Spiritual extends Model
{
    use HasFactory;
    protected $table="spirituals";
    protected $fillable = [
        'image',
        'title',
        'description',
        'button_text',
        'short_order'
    ];

    public function epiritualsubcategory(){
        return $this->hasMany(SpiritualSubcategory::class,'spiritual_id ','id');
    }
}
