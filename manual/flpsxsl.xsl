<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0"
    version="1.0" exclude-result-prefixes="tei">
    <xsl:output method="html" encoding="UTF-8" />
    
    <xsl:template match="/" xml:space="default">
        <html>
            <head>
                <title>FLPS fun</title>
                <link rel="stylesheet" href="flpshtml.css" type="text/css"/>
            </head>
            <body>
                <div id="toc"><xsl:apply-templates select="//tei:body/tei:div" mode="toc"/></div>                
                <xsl:apply-templates select="//tei:body/tei:div"/>
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="tei:div" mode="toc">
        <div>
            <a href="#{tei:head/@xml:id}"><xsl:value-of select="normalize-space(tei:head)"/></a>
            
            <xsl:apply-templates select="tei:div[not(@type='description')]" mode="toc"/></div>
    </xsl:template>
    
    <xsl:template match="tei:div">
        <div><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <strong><a  id="{@xml:id}"><xsl:apply-templates/></a></strong>
    </xsl:template>
    
</xsl:stylesheet>