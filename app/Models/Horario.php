<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Horario extends Model
{
    use HasFactory;
    protected $primaryKey = "ciclo";
    protected $fillable = ["ciclo", "linkHorario"];
    public $timestamps = false;
    protected $table = "horario";
}
