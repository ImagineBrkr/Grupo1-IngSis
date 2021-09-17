@extends('plantilla')
@section('contenido')
<div class="container" style="margin-top: 50px">
@if(Session::get('rol') == 'Administrador' || Session::get('rol') == 'Secretaría')
<div class="row my-3"><div class="col-5"><a href="{{route('escuela.docentes.agregar')}}" class="btn btn-primary">Añadir Docente</a></div></div>
@endif
    @foreach ($docentes as $item)
    <div class="row">
        <div class="col mt-2">
            <div class="row">
                <div class="col-4 text-center">
                    <label for="">{{$item->nombres}}</label>
                </div>
                <div class="col-6">
                    {{$item->logros}}
                </div>
                @if(Session::get('rol') == 'Administrador' || Session::get('rol') == 'Secretaría')
                <div class="col-2 text-center"><a href="{{route('escuela.docentes.editar', $item->idDocente)}}" class="btn btn-primary">Editar</a></div>
                @endif
            </div>
        </div>
    </div>
    @endforeach
    <div style="margin-top: 45px"></div>
</div>
@endsection