<?php

namespace App\Models\Treeinstallation;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Treeinstallation\TreeinstallationSubcategory;
use App\Models\Treeinstallation\TreeinstallationMiniChaildernCategory;

class TreeinstallationChaildernCategory extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = "tree_installation_chailderncategorys";

    protected $fillable = [
        'tree_installation_subcategory_id',
        'title',
        'name',
        'status',
    ];

    public function treeinstallationsubcategory()
    {
        return $this->belongsTo(TreeinstallationSubcategory::class, 'tree_installation_subcategory_id', 'id');
    }

    public function treeinstallationminichailderncategory()
    {
        return $this->hasMany(TreeinstallationMiniChaildernCategory::class,'tree_installation_chaildrencategory_id','id');
    }

    protected $dates = ['deleted_at'];
}

