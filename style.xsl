<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

    <xsl:template match="/">
        <html>
        <head>
            <title>Activity Badges</title>
            <style>
                /* Basic styling to match the assessment's expected output screenshot */
                body { font-family: "Times New Roman", Times, serif; color: #333; }
                h2 { font-size: 24px; border-bottom: 2px solid #ccc; padding-bottom: 5px; }
                h3 { font-size: 18px; margin-bottom: 2px; }
                p { margin-top: 5px; margin-bottom: 5px; font-size: 14px; }
                .level-info { margin-left: 0; }
                .copyright { font-style: italic; margin-top: 20px; }
            </style>
        </head>
        <body>
            <h2>Activity Badges</h2>
            
            <xsl:for-each select="badges/badge[@type='activity' or not(@type)]">
                
                <xsl:sort select="name" order="ascending" />
                
                <h3><xsl:value-of select="name"/></h3>
                <p><xsl:value-of select="description"/></p>
                
                <xsl:for-each select="levels/availability">
                    <p class="level-info">
                    <xsl:choose>
                        <xsl:when test="@level='beaver'">
                            Beaver: <xsl:value-of select="."/>
                        </xsl:when>
                        <xsl:when test="@level='cub'">
                            Cub: <xsl:value-of select="."/>
                        </xsl:when>
                        <xsl:when test="@level='scout'">
                            Scout: <xsl:value-of select="."/>
                        </xsl:when>
                    </xsl:choose>
                    </p>
                </xsl:for-each>
                
                <br/> </xsl:for-each>

            <p class="copyright"><xsl:text disable-output-escaping="yes">&amp;copy;</xsl:text> College Productions Ltd</p>
            
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>