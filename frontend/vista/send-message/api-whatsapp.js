(function () {
	'use strict';
	window.addEventListener(
		'load',
		async function () {
			const api = await fetch('../../../backend/controlador/whatsapp.php', {
				method: 'GET',
			});

			const respuesta = await api.json();

			console.log(respuesta);

			const listarCursos = document.getElementById('listarCursos');

			respuesta.map((imprimir) => {
				listarCursos.innerHTML += `
				<div class="form-check">
				<input class="form-check-input" type="checkbox" name="${imprimir.cod_tip_cur}" id="checkbox${imprimir.cod_tip_cur}" value="${imprimir.cod_tip_cur}" />
				<label class="form-check-label" for="checkbox${imprimir.cod_tip_cur}">${imprimir.nom_tip_cur}</label>
				</div>
				`;
			});

			const formularioFiltro = document.getElementById('formularioFiltro');

			formularioFiltro.addEventListener(
				'submit',
				async (e) => {
					e.preventDefault();
					let datos = new FormData(formularioFiltro);

					console.log(...datos);

					const api = await fetch('../../../backend/controlador/whatsapp.php', {
						method: 'POST',
						body: datos,
					});

					const respuesta = await api.json();

					console.log(respuesta);

					const listarUsuarios = document.getElementById('listarUsuarios');

					respuesta.map((imprimir) => {
						listarUsuarios.innerHTML += `
							<div class="row border rounded my-3 p-2 align-items-center">
								<div class="col-1">
									<button class="btn" id="${imprimir.cod_usu_onl}"><i class="fas fa-times text-danger"></i></button>
								</div>
								<div class="col-7">
									<h5 class="mb-0">${imprimir.nom_usu_onl} ${imprimir.ape_usu_onl}</h5>
								</div>
								<div class="col-4 text-right">
									<a href="#" class="btn btn-success btn-large">Enviar <i class="fas fa-paper-plane"></i></a>
								</div>
							</div>
						`;
					});
				},
				false
			);
		},
		false
	);
})();
