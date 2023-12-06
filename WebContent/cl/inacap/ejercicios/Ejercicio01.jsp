<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejercicio01</title>
</head>
<body>
	<h1>Formulario de ingreso de datos</h1>
	<!-- Esto se puede cambiar a POST. -->
	<form method="GET" action="Ejercicio01.jsp"> <!-- Se establece el formulario mediante html y utilizando el método GET, se envia a la ruta especificada con el atributo action. -->
		<label for="largo">Largo</label> 
		<input type="text" name="largo"/><br/> <!-- El usuario ingresa datos mediante html. -->
		
		<label for="ancho">Ancho</label> 
		<input type="text" name="ancho"/> <!-- El usuario ingresa datos mediante html. -->

		<p>
			<input type="submit" value="Enviar"></input> <!-- El usuario envia datos mediante GET. -->
		</p>
	</form>

	<%-- Procesado de datos utilizando Java (La etiqueta <% %> se utiliza para procesar datos y utilizar métodos como GET y POST). --%>
	<% 
	try { //Es necesario capturar la excepción ya que cuando se carga la página por primera vez el formulario no tiene datos.
		int largo = Integer.parseInt(request.getParameter("largo")); //Se crea una variable, se trae el dato de tipo String utilizando el método estatico getParameter, se refunde a int utilizando el método estatico parseInt y se almacena en la variable de tipo int.
		int ancho = Integer.parseInt(request.getParameter("ancho")); //Se crea una variable, se trae el dato de tipo String utilizando el método estatico getParameter, se refunde a int utilizando el método estatico parseInt y se almacena en la variable de tipo int.
			
		out.println("<hr>" + " El area del rectangulo es: " + largo * ancho + " y su perimetro es: " + (largo + largo + ancho + ancho));	
	} catch(Exception ex) {
			
	}	
	%>

</body>
</html>