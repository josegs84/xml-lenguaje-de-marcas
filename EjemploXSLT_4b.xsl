<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<title>Ejemplo</title>
<body>
<h2>Expediente académico</h2>
<h3>Alumno: <xsl:value-of select="alumno/@nombre"/></h3>
<xsl:apply-templates/>
</body>
</html>
</xsl:template>
<xsl:template match="curso">
Curso académico: <xsl:value-of select="."/><hr />
</xsl:template>
<xsl:template match="numero_expediente">
Expediente: <xsl:value-of select="."/><br />
</xsl:template>
<xsl:template match="expediente">
<xsl:apply-templates select="asignatura"/>
</xsl:template>
<xsl:template match="asignatura">
<p>
<xsl:apply-templates select="nombre"/>
<xsl:apply-templates select="nota"/>
</p>
</xsl:template>
<xsl:template match="nombre">
Asignatura: <xsl:value-of select="."/>
<br />
</xsl:template>
<xsl:template match="nota">
Nota: <span style="font-weight:bold;">
<xsl:value-of select="."/>
</span>
<br />
</xsl:template>
</xsl:stylesheet>