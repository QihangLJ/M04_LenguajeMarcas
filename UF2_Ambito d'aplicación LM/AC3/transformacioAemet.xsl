<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
    <head>
        <title>Transf.HTML</title>
    </head>
    <body>
        <h1>TIEMPO</h1>
        <table border="1" width = "500px" >
            <tr bgcolor="cyan">
                <td>Fecha</td>
                <td>Maxima</td>
                <td>Minima</td>
                <td>Prediccions</td>
            </tr>
            <xsl:for-each select="root/prediccion/dia">
            <tr>
                <td ><xsl:value-of select="@fecha"/></td>
                <td><xsl:value-of select="temperatura/maxima"/></td>
                <td><xsl:value-of select="temperatura/minima"/></td>
                <td>
                    <img src="{concat('src/',estado_cielo[@periodo='00-12']/@descripcion)}.png"/>                 
                </td>
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>