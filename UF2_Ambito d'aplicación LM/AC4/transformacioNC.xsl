<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
     <html>
        <body>
            <h2>M04 - Notas</h2>
            <table border = "1">
                <tr bgcolor = "cyan">
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Telefono</th>
                    <th>Repetidor</th>
                    <th>Nota Practica</th>
                    <th>Nota Examen</th>
                    <th>Nota Total</th>
                </tr>
                <xsl:for-each select="evaluacion/alumno">
                <xsl:sort select="apellidos"/>
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="apellidos"/></td>
                        <td><xsl:value-of select="telefono"/></td>
                        <td><xsl:value-of select="@repite"/></td>
                        <td><xsl:value-of select="practicas"/></td>
                        <td><xsl:value-of select="examen"/></td>
                        <xsl:choose>
                            <xsl:when test="((practicas + examen) div 2) &gt;= 5">
                                <td bgcolor="green"><xsl:value-of select="(practicas + examen) div 2"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td bgcolor="red"><xsl:value-of select="(practicas + examen) div 2"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
     </html>
   </xsl:template>
</xsl:stylesheet>