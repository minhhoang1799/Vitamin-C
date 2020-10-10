<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/NewsList">
    <div class="row wrapper">
      <div class="col-md-7">
        <h3 class="main-title line">
          <xsl:value-of select="News[1]/Title"/>
        </h3>
        <div class="content">
          <xsl:value-of select="News[1]/BriefContent" disable-output-escaping="yes"/>
        </div>
        <div class="btn-wrapper"> 
          <a class="view-more" href="#">
            <xsl:attribute name="target">
              <xsl:value-of select="News[1]/Target"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="href">
              <xsl:value-of select="News[1]/Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="News[1]/Title"></xsl:value-of>
            </xsl:attribute>
            Xem thêm
          </a>
        </div>
      </div>
      <div class="col-md-5">
        <div class="image">
          <img>
            <xsl:attribute name="src">
              <xsl:value-of select="News[1]/ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="News[1]/Title" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
          </img>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>