<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejemplo XSLT 3</title>
				<style>
					.tabla { display: table; border: 2px solid black; font-family: Arial; width: 30%; }
					.fila { display: table-row; }
					.filaEncabezado { display:table-row; background-color: #9acd32; font-weight: bold; }
					.celda { display: table-cell; border: 1px solid black; padding:3px; }
				</style>
			</head>
			<body>
				<h2>Expediente académico</h2>
				<h3>Alumno: <xsl:value-of select="alumno/@nombre"/></h3>
				<div class="tabla">
					<div class="filaEncabezado">
						<div class="celda">Asignatura</div>
						<div class="celda">Nota</div>
						<div class="celda">Descripción</div>
					</div>
					<xsl:for-each select="alumno/expediente/asignatura">
						<xsl:sort select="nota" />
						<div class="fila">
							<div class="celda">
								<xsl:value-of select="nombre" />
							</div>
							<div class="celda">
								<xsl:value-of select="nota" />
							</div>
							<div class="celda">
								<xsl:choose>
									<xsl:when test="./nota &lt; 5">
										<span style="color:red;">Suspenso</span>
									</xsl:when>
									<xsl:when test="./nota &gt;= 5 and ./nota &lt; 7">
										Aprobado
									</xsl:when>
									<xsl:when test="./nota &gt;= 7 and ./nota &lt; 9">
										Notable
									</xsl:when>
									<xsl:otherwise>
										Excelente
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</div>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
