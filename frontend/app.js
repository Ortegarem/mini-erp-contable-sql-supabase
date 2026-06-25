import { supabase } from "./supabase.js";

async function loadDashboard() {

    const { data, error } = await supabase
    .from("movimientos")
    .select("*");

    alert(JSON.stringify(data));
  

    if (error) {

        document.getElementById("dashboard").innerHTML =
            `<p>Error: ${error.message}</p>`;

        console.error(error);
        return;
    }

    const ingresos =
        data.reduce(
            (total, row) =>
                total + Number(row.credito),
            0
        );

    const gastos =
        data.reduce(
            (total, row) =>
                total + Number(row.debito),
            0
        );

    const utilidad =
        ingresos - gastos;

    document.getElementById("dashboard").innerHTML = `

<div class="cards">

<div class="card">
<h3>Ingresos</h3>
<div class="valor">
$${ingresos.toLocaleString()}
</div>
</div>

<div class="card">
<h3>Gastos</h3>
<div class="valor">
$${gastos.toLocaleString()}
</div>
</div>

<div class="card">
<h3>Utilidad</h3>
<div class="valor">
$${utilidad.toLocaleString()}
</div>
</div>

<div class="card">
<h3>Movimientos</h3>
<div class="valor">
${data.length}
</div>
</div>

</div>
`;
}

window.loadDashboard = loadDashboard;






