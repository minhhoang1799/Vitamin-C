<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/ZoneList">
    <h3 class="main-title line bg">
      <xsl:value-of select="ZoneTitle"></xsl:value-of>
    </h3>
    <div class="main-tab" data-toggle="tabslet">
      <div class="nav-news">
        <div class="moblie-list">
          <div class="content"> 
            <p>Danh sách tin tức</p><em class="mdi mdi-chevron-down"></em>
          </div>
        </div>
        <ul class="tabslet-tab">
          <xsl:apply-templates select="Zone" mode="Tab" />
        </ul>
      </div>
      <xsl:apply-templates select="Zone" mode="Content" />
    </div>
 
  </xsl:template>

  <xsl:template match="Zone" mode="Tab">
    <li> 
      <a href="#tab-1">
        <xsl:attribute name="href">
          <xsl:text>#tab-news-</xsl:text>
          <xsl:value-of select="position()"/>
        </xsl:attribute>
        <xsl:value-of select="Title"></xsl:value-of>
      </a>
    </li>
  </xsl:template>

  <xsl:template match="Zone" mode="Content">
      <div class="tabslet-content" id="tab-2">
        <xsl:attribute name="id">
          <xsl:text>tab-news-</xsl:text>
          <xsl:value-of select="position()"/>
        </xsl:attribute>
        <div class="row">
              <xsl:apply-templates select="News" />
        </div>
      </div>
   
  </xsl:template> 
  <xsl:template match="News">
    <div class="col-lg-3 col-sm-6">
      <div class="item-news">
        <div class="image-child">
          <img src="./img/home/7.png" alt="">
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
          </img>
          <div class="time">
            <time>
              <xsl:value-of select="CreatedDate"></xsl:value-of>
            </time>
          </div>
        </div>
        <div class="content">
          <a class="title" href="#">
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="target">
              <xsl:value-of select="Target"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
              <xsl:value-of select="Title"></xsl:value-of>
          </a>
          <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>