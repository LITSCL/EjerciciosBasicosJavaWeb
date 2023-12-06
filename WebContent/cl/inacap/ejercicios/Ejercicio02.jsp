<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejercicio02</title>
</head>
<body>
	<h1>Formulario de ingreso de datos</h1>
	<!-- Esto se puede cambiar a POST. -->
	<form method="POST" action="Ejercicio02.jsp"> <!-- Se establece el formulario mediante html y utilizando el m�todo GET, se envia a la ruta especificada con el atributo action. -->
		<label for="evaluacion1">Evaluaci�n 1</label> 
		<input type="text"name="evaluacion1"><br/> <!-- El usuario ingresa datos mediante html. -->

		<label for="evaluacion2">Evaluaci�n 2</label> 
		<input type="text" name="evaluacion2"><br/> <!-- El usuario ingresa datos mediante html. -->

		<label for="evaluacion3">Evaluaci�n 3</label> 
		<input type="text" name="evaluacion3"><br/> <!-- El usuario ingresa datos mediante html. -->

		<label for="evaluacion4">Evaluaci�n 4</label> 
		<input type="text" name="evaluacion4"> <!-- El usuario ingresa datos mediante html. -->

		<p>
			<input type="submit" value="Enviar">
		</p>
	</form>

	<%-- Definiendo variables utilizando Java (La etiqueta <%! %> se utiliza para definir variables Java. --%>
	<%! double evaluacion1, evaluacion2, evaluacion3, evaluacion4; %>

	<%-- Procesado de datos utilizando Java (La etiqueta <% %> se utiliza para procesar datos y utilizar m�todos como GET y POST). --%>
	<%
	try { //Es necesario capturar la excepci�n ya que cuando se carga la p�gina por primera vez el formulario no tiene datos.
		evaluacion1 = Double.parseDouble(request.getParameter("evaluacion1")); //Se utiliza la variable, se trae el dato de tipo String utilizando el m�todo estatico getParameter, se refunde a double utilizando el m�todo estatico parseDouble y se almacena en la variable de tipo double.
		evaluacion2 = Double.parseDouble(request.getParameter("evaluacion1")); //Se utiliza la variable, se trae el dato de tipo String utilizando el m�todo estatico getParameter, se refunde a double utilizando el m�todo estatico parseDouble y se almacena en la variable de tipo double.
		evaluacion3 = Double.parseDouble(request.getParameter("evaluacion1")); //Se utiliza la variable, se trae el dato de tipo String utilizando el m�todo estatico getParameter, se refunde a double utilizando el m�todo estatico parseDouble y se almacena en la variable de tipo double.
		evaluacion4 = Double.parseDouble(request.getParameter("evaluacion1")); //Se utiliza la variable, se trae el dato de tipo String utilizando el m�todo estatico getParameter, se refunde a double utilizando el m�todo estatico parseDouble y se almacena en la variable de tipo double.

		out.println("<hr>El promedio del alumno es: " + (evaluacion1 * 0.15 + evaluacion2 * 0.20 + evaluacion3 * 0.25 + evaluacion4 * 0.40)); //Aca se imprime la concatenaci�n en el body de la p�gina.
	} catch (Exception ex) {

	}
	%>
</body>
</html>