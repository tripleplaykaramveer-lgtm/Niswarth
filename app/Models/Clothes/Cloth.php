<?php

namespace App\Models\clothes;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Clothes\ClothSubcategory;
class Cloth extends Model
{
    use HasFactory;
    protected $table = "clothes";
    protected $fillable = [
        'image',
        'title',
        'description',
        'button_text',
        'short_order'
    ];

    public function clothsubcategory()
    {
        return $this->hasMany(ClothSubcategory::class, 'cloth_id', 'id');
    }

}
