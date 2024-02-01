<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Ejercicio03</title>
</head>
<body>
	<h1>Formulario de ingreso de datos</h1>
	<!-- Esto se puede cambiar a POST. -->
	<form method="POST" action="Ejercicio03.jsp"> <!-- Se establece el formulario mediante html y utilizando el método GET, se envia a la ruta especificada con el atributo action. -->
		<label for="numero1">Primer Numero</label> 
		<input type="text" name="numero1"><br/> <!-- El usuario ingresa datos mediante html. -->

		<label for="numero2">Segundo Numero</label> 
		<input type="text" name="numero2"> <!-- El usuario ingresa datos mediante html. -->

		<p>
			<input type="submit" value="Enviar">
		</p>
	</form>

	<%-- Procesado de datos utilizando Java (La etiqueta <% %> se utiliza para procesar datos y utilizar métodos como GET y POST). --%>
	<%
 	try {
 	 	String numero1 = request.getParameter("numero1");
 		String numero2 = request.getParameter("numero2");
 			  
 		if (Integer.parseInt(numero1) > Integer.parseInt(numero2)) {
 			out.println("<hr>" + numero1 + " es mayor que " + numero2);
 		}
 		else if (Integer.parseInt(numero1) < Integer.parseInt(numero2)) {
 			out.println("<hr>" + numero2 + " es mayor que " + numero1);
 		}
 		else {
 			out.println("<hr>Ambos numeros son iguales");
 		}
 	} catch (Exception ex) {
 			
 	}
 	%>
</body>
</html>