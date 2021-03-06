<xsl:template name="ff_module-progress">
    <xsl:param name="data" />
    
    <xsl:variable name="completed">
        <xsl:value-of select="format-number(($data/progress/@completed_by div $data/progress/@sent_to) * 100, '#')"/><xsl:text>%</xsl:text>
    </xsl:variable>
    <xsl:variable name="marked">
        <xsl:value-of select="format-number(($data/progress/@marked div $data/progress/@sent_to) * 100, '#')"/><xsl:text>%</xsl:text>
    </xsl:variable>
    <xsl:variable name="marked-diff">
        <xsl:value-of select="format-number(($data/progress/@completed_by div $data/progress/@sent_to) * 100, '#') - format-number(($data/progress/@marked div $data/progress/@sent_to) * 100, '#')"/><xsl:text>%</xsl:text>
    </xsl:variable>
    
    <div class="ff_module-progress">
        <div class="ff_module-progress__stacked">
            <div class="ff_module-progress__bar ff_module-progress__bar--marked" style="width: {$marked};" title="{$marked} Marked">
                <span class="ff_module-progress__meta"><xsl:value-of select="$marked"/> Marked</span>
            </div> 
            <div class="ff_module-progress__bar ff_module-progress__bar--completed" style="width: {$marked-diff};" title="{$completed} Completed">
                <span class="ff_module-progress__meta"><xsl:value-of select="$completed"/> Completed</span>
            </div>
        </div>
        <ul class="ff_module-progress__key">
            <li class="ff_module-progress__label ff_module-progress__label--marked"><xsl:value-of select="$data/progress/@marked"/> Marked</li>
            <li class="ff_module-progress__label ff_module-progress__label--completed"><xsl:value-of select="$data/progress/@completed_by"/> Completed</li>
            <li class="ff_module-progress__label ff_module-progress__label--total"><xsl:value-of select="$data/progress/@sent_to"/> Total</li>
        </ul>
    </div>
    
</xsl:template>