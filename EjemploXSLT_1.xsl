<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/"> <!-- Busca la raíz del documento XML en el arbol de nodos -->
		<html>
			<head>
				<title> Ejemplo 1 de XSLT </title>
			</head>
			<body>
				<h1> Lorem Ipsum </h1>
					<xsl:for-each select="/strings/s"> <!-- Selecciona cada uno de las etiquetas s dentro de strings -->
						<p> <!-- Cada vez que encuentre uno, genera un parrafo html -->
							<xsl:value-of select="." /> <!-- En cada parrafo, incluirá el valor de s -->
						</p>
					</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>