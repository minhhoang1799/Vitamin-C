<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/ZoneList">
    <section class="donggop-ds main-section">
      <div class="container">
        <h3 class="main-title line bg">
          <xsl:value-of select="Title" />
        </h3>
        <div class="row wrapper">
          <div class="col-lg-6 box-right">
            <div class="image">
              <img src="./img/dong-gop/1.png" alt="">
                <xsl:attribute name="src">
                  <xsl:value-of select="ImageUrl" />
                </xsl:attribute>
                <xsl:attribute name="alt">
                  <xsl:value-of select="Title" />
                </xsl:attribute>
              </img>
            </div>
          </div>
          <div class="col-lg-6 box-left">
            <div class="content">
              <p class="title">
                  <xsl:value-of select="Title" />
              </p>
              <p>
                  <xsl:value-of select="Description"  disable-output-escaping="yes" />
              </p>
            </div>
          </div>
        </div>
        <div class="row du-an-ds">
          <xsl:apply-templates select="Zone[position() > 1]"/>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template match="Zone">
    <div class="col-lg-4">
      <div class="item">
        <a href="#">
          <xsl:attribute name="href">
            <xsl:value-of select="Url" />
          </xsl:attribute>
          <xsl:attribute name="Title">
            <xsl:value-of select="Title" />
          </xsl:attribute>
          <div class="image">
            <img src="./img/dong-gop/2.png" alt="">
                <xsl:attribute name="src">
                  <xsl:value-of select="ImageUrl" />
                </xsl:attribute>
                <xsl:attribute name="alt">
                  <xsl:value-of select="Title" />
                </xsl:attribute>
              </img>
          </div>
        </a>
        <div class="content">
          <a href="#">
          <xsl:attribute name="href">
            <xsl:value-of select="Url" />
          </xsl:attribute>
          <xsl:attribute name="Title">
            <xsl:value-of select="Title" />
          </xsl:attribute>
          <xsl:value-of select="Title" />
          </a> 
      </div>
      </div>
    </div>
  </xsl:template>
 
</xsl:stylesheet>