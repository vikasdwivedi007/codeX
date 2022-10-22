<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
    use HasFactory;

   protected $table = 'branch_master';


    protected $fillable = [
        'branch_id',
        'insurer_id',
        'branch',
        'state_id',
        'city_id',
    ];
}
