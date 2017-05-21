<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejemplo</title>
				<style>
					.tabla { display: table; border: 2px solid black; }
					.fila { display: table-row; }
					.filaEncabezado { display: table-row; background-color: #9acd32;
									font-weigth: bold; }
					.celda { display: table-cell; border: 1px solid black; padding: 3px; }
				</style>
			</head>
			<body>
				<h2> Expediente académico </h2>
				<h3> Alumno: <xsl:value-of select="expediente/@alumno" /> </h3>
				<div class="tabla">
					<div class="filaEncabezado">
						<div class="celda">Asignatura</div>
						<div class="celda">Nota</div>
					</div>
					<xsl:for-each select="expediente/asignatura">
						<xsl:sort select="nombre"/>
						<xsl:if test="nota !='Suspenso'">
						<div class="fila">
							<div class="celda">
								<xsl:value-of select="nombre"/>
							</div>
							<div class="celda">
								<xsl:value-of select="nota"/>
							</div>
						</div>
						</xsl:if>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>