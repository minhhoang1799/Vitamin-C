<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/NewsList">
    <h3 class="main-title line bg">
      <xsl:value-of select="ModuleTitle"></xsl:value-of>
    </h3>
    <div class="row du-an-ds">
      <xsl:apply-templates select="News"/>
    </div>
 
  </xsl:template>
  <xsl:template match="News">
    <div class="col-lg-4">
      <div class="item">
        <a href="#">
         <xsl:attribute name="target">
            <xsl:value-of select="Target"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          <div class="image">
            <img src="./img/home/2.png" alt="">
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
          </img>
        </div>
        </a>
        <div class="content"><a href="#"> <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                  </xsl:attribute>
                    <xsl:value-of select="Title"></xsl:value-of></a></div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>