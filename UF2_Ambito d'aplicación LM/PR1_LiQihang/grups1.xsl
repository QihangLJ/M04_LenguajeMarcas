<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> <!--comencem a treballar per l'arrel, grups-->
  <html>
    <head>
    	<meta charset="UTF-8" />
        <title>ITB Tours</title>
        <link rel="stylesheet" href="itinerari.css" />
    </head>
    <body>
       <header>
        <img alt="logo ITB" src="img/logoitb.jpeg" />
       </header>
       
        <nav id="fijo">
            <ul class="menunav">
                <li> <a href="#">inicio</a></li>
                <li> <a href="#">grupos propios</a></li>
                <li> <a href="#">viajes a medida</a></li>
                <li> <a href="#">cruceros</a></li>
                <li> <a href="#">ofertas</a></li>
                <li> <a href="#">contacto</a></li>
            </ul>
        </nav>
    
        <article>
            <xsl:for-each select="grups/grup">
                <h1>
                    <xsl:value-of select = "nom"/>
                    <xsl:value-of select = "@fecha"/>
                </h1>
                <xsl:element name="img">
                    <xsl:attribute name="class">foto</xsl:attribute>
                    <xsl:attribute name="src">
                        <xsl:value-of select="informacio_general/foto"/>    
                    </xsl:attribute>
                </xsl:element>

                <div class = "informacioGeneral">
                    <h2>
                        Grupo mínimo: <xsl:value-of select = "informacio_general/grupMin"/>
                        Precio: <xsl:value-of select = "informacio_general/preu"/>
                        Duracion: <xsl:value-of select = "informacio_general/dies"/>
                    </h2>
                </div>
                <div class = "inclou">
                    <h3>Viaje incluye:</h3>
                    <xsl:for-each select="inclos/inclou">
                            <p><xsl:value-of select = "text()"/></p>
                    </xsl:for-each> 
                </div>
                <div class = "itinerari">
                    <h3>Itinerario:</h3>
                    <xsl:for-each select="itinerari/dia">
                        <p>
                            <xsl:value-of select = "titol"/>
                            <xsl:value-of select = "desc"/>
                        </p>
                    </xsl:for-each> 
                </div>
            </xsl:for-each> 
        </article>
    </body>
   </html>
 </xsl:template>
</xsl:stylesheet>
