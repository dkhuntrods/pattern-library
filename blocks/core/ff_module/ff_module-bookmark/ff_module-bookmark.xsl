<xsl:template name="ff_module-bookmark">
    <xsl:param name="data" />
    
    <div class="ff_module-bookmark ff_module-bookmark--{$data/bookmark/@type}">
      <p class="ff_module-bookmark__label"><a href="{$data/bookmark/@href}" class="ff_module-bookmark__link"><xsl:value-of select="$data/bookmark/label"/></a></p>
      <xsl:if test="$data/bookmark/@type = 'recommended'">
          <p class="ff_module-bookmark__label ff_module-bookmark__label--meta">Recommended by <a href="{$data/bookmark/@from_href}"><xsl:value-of select="$data/bookmark/@from"/></a><xsl:text> </xsl:text><time datetime="{$data/bookmark/@date}"><xsl:value-of select="$data/bookmark/@date"/></time></p>
      </xsl:if>  
    </div>
    
</xsl:template>