<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/"> <!--comencem a treballar per l'arrel, minerals-->
    <!-- AQUÍ VA EL VOSTRE CODI-->
    <html>
        <head>
            <title>Minerals</title>
            <link rel="stylesheet" href="minerals.css" />
        </head>
        <body>
            <h1>MINERALS</h1>
            <xsl:for-each select="minerals/mineral">
            <table class="info_general">
                <tr>
                    <td><strong><xsl:value-of select="nom"/></strong></td>
                    <td><strong>ID: </strong> <xsl:value-of select="@Id"/></td>
                    <td><strong>NOM: </strong> <xsl:value-of select="nom"/></td>
                    <td><strong>COMPOSICIO: </strong> <xsl:value-of select="composicio"/></td>
                    <td><strong>GRUP: </strong> <xsl:value-of select="grup"/></td>
                </tr>
            </table>

            <table class="info_especifica"> 
                <tr>
                    <td><strong>Densitat:</strong> <xsl:value-of select="densitat"/></td>
                    <td rowspan="5">
                        <div class="img">
                            <img>
                                <xsl:attribute name="src"><xsl:value-of select="foto"/></xsl:attribute>
                            </img>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><strong>Duresa:</strong> <xsl:value-of select="duressa"/></td>
                </tr>
                <tr>
                    <td><strong>Exfoliacio:</strong> <xsl:value-of select="exfoliacio"/></td>
                </tr>
                <tr>
                    <td><strong>Color:</strong> <xsl:value-of select="color"/> <strong> Ratlla:</strong> <xsl:value-of select="ratlla"/></td>
                </tr>
                <tr>
                    <td><strong>Lluissor:</strong> <xsl:value-of select="lluissor"/></td>
                </tr>
            </table>
            </xsl:for-each>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>