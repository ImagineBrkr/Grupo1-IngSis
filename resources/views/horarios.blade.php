@extends('plantilla')
@section('contenido')
<div class="container" style="margin-top: 50px">
    <form action="{{route('horario.borrar')}}" method="post">
        <div class="row">
            <label for="ciclos" class="form-label">Buscar por Ciclo:</label>
            <select id="ciclos" name="ciclos" onchange="actualizar()" class="form-select">
                @foreach($horarios as $item)
                <option value="{{$item->ciclo}}">{{$item->ciclo}}</option>
                @endforeach
            </select>
        </div>
    </form>
    <div class="row mt-3 d-flex justify-content-center">
        <img id="imagenCiclo" src="img/{{$horarios[0]->linkHorario}}" class="img-fluid" style="width:90%;" alt="">
    </div>
</div>
<script>
function actualizar() {
    var arreglo = @json($horarios);
    let ciclo = document.getElementById("ciclos").value;
    for (let i = 0; i < arreglo.length; i++) {
        if(arreglo[i].ciclo == ciclo) {
            document.getElementById('imagenCiclo').src = "img/"+arreglo[i].linkHorario;
        }        
    }    
}
</script>
@endsection
