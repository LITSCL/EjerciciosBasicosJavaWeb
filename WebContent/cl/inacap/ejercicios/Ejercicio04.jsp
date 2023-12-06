<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejercicio04</title>
</head>
<body>
	<h1>Formulario de ingreso de datos</h1>
	<!-- Esto se puede cambiar a POST. -->
	<form action="Ejercicio04.jsp" method="GET"> <!-- Se establece el formulario mediante html y utilizando el m�todo GET, se envia a la ruta especificada con el atributo action. -->
		<label for="precioVenta">Precio de la venta sin IVA</label> 
		<input type="text" name="precioVenta"> <!-- El usuario ingresa datos mediante html. -->

		<p>
			<input type="submit" value="Enviar">
		</p>
	</form>

	<%-- Procesado de datos utilizando Java (La etiqueta <% %> se utiliza para procesar datos y utilizar m�todos como GET y POST). --%>
	<%	
	try {
		double precioVenta = Double.parseDouble(request.getParameter("precioVenta"));
			
		if (precioVenta > 300000) {
			precioVenta = precioVenta * 0.90;
		}
			  
		out.println("<hr>El precio de la venta con el IVA es: " + precioVenta * 1.19);
	} catch (Exception ex) {
			
	}
	%>
</body>
</html>