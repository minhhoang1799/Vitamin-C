<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/LanguageList">
        <xsl:apply-templates select="Language"></xsl:apply-templates>
    
    </xsl:template>

    <xsl:template match="Language">
        <div class="item">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a class="dropdown-item" href="javascript:void(0);"> 
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            <span>
                    <xsl:value-of select="Title"></xsl:value-of></span>

            <xsl:if test="IsActive='true'">
                <em class="ri-check-line"></em>
            </xsl:if> 
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>