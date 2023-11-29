<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/"> <!--comencem
    a treballar per l'arrel -->
    <xsl:for-each select="grups/grup"> <!--amb
      al for-each fem com un bucle, com tenim més d'un grup, demanem que es repeteixi per tants
      grups com tinguem, si només en tenim un, en farà un-->
      <article>
        <h2>
          <xsl:value-of select="nom" />
        </h2>
        <h3>
          <xsl:value-of select="@fecha" />
        </h3>
        <p>
          <xsl:value-of select="informacio_general/descripcio" />
        </p>
        <p> Precio: <xsl:value-of select="informacio_general/preu" /> - Duración: <xsl:value-of
            select="informacio_general/dies" />
        </p>
        <a href="{informacio_general/enllac}">
          <xsl:element name="img">
            <xsl:attribute name="class">foto</xsl:attribute>
            <xsl:attribute name="src">
              <xsl:value-of select="informacio_general/foto" />
            </xsl:attribute>
          </xsl:element>
        </a>
      </article>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>