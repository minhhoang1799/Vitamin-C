<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/NewsDetail">
    <section class="tintuc-ct main-section">
        <div class="container">
          <div class="row">
            <div class="col-lg-9">
              <div class="title-detail">
                <h3 class="main-child">
                  <xsl:value-of select="Title"></xsl:value-of>
                </h3>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                <div class="social-wrapper">
                  <time>
                    <xsl:value-of select="CreatedDate"></xsl:value-of>
                  </time>
                  <div class="social">
                    <a href="#"><xsl:attribute name="href">
                      <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                      <xsl:value-of select="FullUrl"/>
                      </xsl:attribute>
                      <em class="mdi mdi-facebook"></em>
                    </a>
                    <a href="#"><xsl:attribute name="href"> 
                      <xsl:text>https://twitter.com/home?status=</xsl:text>
                      <xsl:value-of select="FullUrl"/>
                      </xsl:attribute>
                      <em class="mdi mdi-twitter"></em>
                    </a>
                  </div> 
                </div>
              </div>
              <div class="full-content">
               <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
              </div>
            </div>
            <div class="col-lg-3">
              <div class="title">
                <h3>Tin tức khác</h3>
              </div>
              <div class="list-wrapper">
                <div class="list-item">
                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section> 
  </xsl:template>
  <xsl:template match="NewsOther">
    <div class="item">
      <div class="image">
        <img>
          <xsl:attribute name="src">
          <xsl:value-of select="ImageUrl"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
          <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
        </img>
      </div>
      <div class="content">
        <time>
          <xsl:value-of select="CreatedDate"></xsl:value-of>
        </time>
        <a href="#">
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
      </div>
    </div>
 
  </xsl:template>

  <!--<xsl:template match="NewsAttributes" mode="tabs">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:text>#tab</xsl:text>
          <xsl:value-of select="position()"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title"></xsl:value-of>
      </a>
    </li>
  </xsl:template>
  <xsl:template match="NewsAttributes" mode="tabcontent">
    <div class="tab-content">
      <xsl:attribute name="id">
        <xsl:text>tab</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
    </div>
  </xsl:template>
  <xsl:template match="NewsImages">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="ImageUrl"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <img width="80" height="71">
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
        </img>
      </a>
    </li>
  </xsl:template>-->
</xsl:stylesheet>