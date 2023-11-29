<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/"> <!--comencem
        a treballar per l'arrel, grups-->
        <xsl:for-each select="grups/grup[@id=1]">
            <article>
                <h1>
                    <xsl:value-of select="nom" />
                    <xsl:value-of select="@fecha" />
                </h1>
                <div class="container1">
                    <xsl:element name="img">
                        <xsl:attribute name="class">foto</xsl:attribute>
                        <xsl:attribute name="src">
                            <xsl:value-of select="informacio_general/foto2" />
                        </xsl:attribute>
                    </xsl:element>
                    <div class="container2">
                        <div class="informacioGeneral">
                            <h2> 
                                Grupo mínimo: <xsl:value-of select="informacio_general/grupMin" />
                                Precio: <xsl:value-of select="informacio_general/preu" /> 
                                Duracion: <xsl:value-of select="informacio_general/dies" />
                            </h2>
                        </div>
                        <div class="inclou">
                            <h3>Viaje incluye:</h3>
                            <xsl:for-each select="inclos/inclou">
                                <p>
                                    <xsl:value-of select="text()" />
                                </p>
                            </xsl:for-each>
                        </div>
                    </div>
                </div>
                <div class="itinerari">
                    <h3>Itinerario:</h3>
                    <xsl:for-each select="itinerari/dia">
                        <p>
                            <xsl:value-of select="titol" />
                            <xsl:value-of select="desc" />
                        </p>
                    </xsl:for-each>
                </div>
            </article>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>