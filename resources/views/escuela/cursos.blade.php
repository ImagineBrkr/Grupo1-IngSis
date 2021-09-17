@extends('plantilla')
@section('contenido')
<div class="container" style="margin-top: 50px">
    <form action="">
        <div class="">
            <label for="" class="form-label">Buscar por Ciclo:</label>
            <select id="ciclos" onchange="actualizar()" class="form-select">
              <option value="1">I</option>
              <option value="2">II</option>
              <option value="3">III</option>
              <option value="4">IV</option>
              <option value="5">V</option>
              <option value="6">VI</option>
              <option value="7">VII</option>
              <option value="8">VIII</option>
              <option value="9">IX</option>
              <option value="10">X</option>
            </select>
        </div>
    </form>
    <table class="table" id="tablaCursos">
        <thead>
          <tr>
            <th class="col-2 text-center" scope="col">Código</th>
            <th class="col-6" scope="col">Nombre</th>
            <th class="col-2 text-center" scope="col">Condición</th>
            <th class="col-2 text-center" scope="col">Créditos</th>
          </tr>
        </thead>
        <tbody id="cursos">
          @foreach ($cursos as $item)
          @if($item->ciclo == 1)
          <tr>
            <td class="text-center">{{$item->codigo}}</td>
            <td>{{$item->nombre}}</td>
            <td class="text-center">{{$item->condicion}}</td>
            <td class="text-center">{{$item->creditos}}</td>
          </tr>
          @endif
          @endforeach
      </table>
</div>
<script>
function actualizar() {
  var arreglo = @json($cursos);
  let ciclo = document.getElementById("ciclos").value;
  var tbodyRef = document.getElementById('tablaCursos').getElementsByTagName('tbody')[0];
  tbodyRef.innerHTML = "";
  for (let i = 0; i < arreglo.length; i++) {
     if(arreglo[i].ciclo == ciclo) {
      var fila = tbodyRef.insertRow();
        var x = fila.insertCell();
        var y = fila.insertCell();
        var w = fila.insertCell();
        var z = fila.insertCell();
        x.className = "text-center"
        w.className = "text-center"
        z.className = "text-center"
        x.innerHTML = arreglo[i].codigo;
        y.innerHTML = arreglo[i].nombre;
        w.innerHTML = arreglo[i].condicion;
        z.innerHTML = arreglo[i].creditos;
     } 
    }
}
</script>
@endsection
