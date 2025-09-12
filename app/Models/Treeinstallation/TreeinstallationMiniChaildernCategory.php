<?php

namespace App\Models\Treeinstallation;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Treeinstallation\TreeinstallationChaildernCategory;

class TreeinstallationMiniChaildernCategory extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = "tree_installation_minichailderncategorys";
     protected $casts = [
        'name' => 'array',
    ];
    protected $fillable = [
        'tree_installation_chaildrencategory_id',
        'name',
        'title',
        'status',
    ];

    public function treeinstallationchailderncategory()
    {
        return $this->belongsTo(TreeinstallationChaildernCategory::class, 'tree_installation_chaildrencategory_id ', 'id');
    }

    protected $dates = ['deleted_at'];
}
