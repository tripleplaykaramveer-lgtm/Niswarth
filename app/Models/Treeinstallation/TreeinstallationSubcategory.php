<?php

namespace App\Models\Treeinstallation;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Treeinstallation\TreeinstallationChaildernCategory;

class TreeinstallationSubcategory extends Model
{
    use HasFactory, SoftDeletes;
     protected $table="tree_installation_subcategorys";


    protected $casts = [
        'name' => 'array',
    ];
    protected $fillable = [
        'tree_installation_id',
        'name',
        'title',
        'status',
    ];

    public function treeinstallation()
    {
        return $this->belongsTo(Treeinstallation::class, 'tree_installation_id', 'id');
    }

    public function treeinstallationchailderncategory(){
        return $this->hasMany(TreeinstallationChaildernCategory::class,'tree_installation_subcategory_id','id');
    }

    protected $dates = ['deleted_at'];
}
