<?php

namespace App\Models\Treeinstallation;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Treeinstallation\TreeinstallationSubcategory;

class TreeInstallation extends Model
{
    use HasFactory;
    protected $table="tree_installations";

    protected $fillable = [
        'image',
        'title',
        'description',
        'button_text',
        'short_order'
    ];

     public function treeinstallationsubcategory(){
        return $this->hasMany(TreeinstallationSubcategory::class,'education_id','id');
    }

}
