<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/NewsList">
    <h3 class="main-title line bg">
        <xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
    </h3>
    <div class="row">
      <xsl:apply-templates select="News"></xsl:apply-templates>
    </div>
  </xsl:template> 

  <xsl:template match="News">
    <div class="col-lg-6">
      <div class="item-vitaminC">
        <h3 class="main-child">
           <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </h3>
        <div class="table">
            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
        </div>
      </div>
    </div> 
  </xsl:template>
</xsl:stylesheet>