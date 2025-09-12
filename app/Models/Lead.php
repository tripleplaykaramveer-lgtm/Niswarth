<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lead extends Model
{
    use HasFactory;

    protected $fillable = [
        'salutation',
        'name',
        'email',
        'phone',
        'lead_source_id',
        'added_by',
        'lead_owner',
    ];

    // app/Models/Lead.php
    public function leadSource()
    {
        return $this->belongsTo(LeadSource::class, 'lead_source_id');
    }
    public static function salutations()
    {
        return [
            1 => 'Mr',
            2 => 'Miss',
            3 => 'Dr',
            4 => 'Mrs',
            5 => 'Sir',
            6 => 'Madam',
        ];
    }

    
    public function getSalutationTextAttribute()
    {
        return self::salutations()[$this->salutation] ?? 'N/A';
    }

}
