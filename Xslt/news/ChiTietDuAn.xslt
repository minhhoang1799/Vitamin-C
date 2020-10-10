<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/NewsDetail">
    <section class="duan-ct main-section">
      <div class="container">
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
        <div class="slide-wrapper">
          <div class="swiper-top">
            <div class="swiper-container gallery-top">
              <div class="swiper-wrapper"> 
              <xsl:apply-templates select="NewsImages" mode="Image"></xsl:apply-templates>
               
              </div>
            </div>
            <div class="swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
            <div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
          </div>
          <div class="swiper-container gallery-thumbs">
            <div class="swiper-wrapper"> 
              <xsl:apply-templates select="NewsImages" mode="Thumbs"></xsl:apply-templates>
            </div>
          </div>
        </div>
        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
        <div class="noidung-duan">
          <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <div class="duan-khac main-section">
          <h3 class="main-title line bg">Dự án khác</h3>
          <div class="swiper-container">
            <div class="swiper-wrapper">
              <xsl:apply-templates select="NewsOther"></xsl:apply-templates>
            </div>
          </div>
          <div class="swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
          <div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
        </div>
      </div>
    </section>
  </xsl:template>
  <xsl:template match="NewsImages" mode="Image">
    <div class="swiper-slide">
      <div class="image">
          <img src="./img/home/4.png" alt="">
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
          </img>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="NewsImages" mode="Thumbs">
    <div class="swiper-slide">
      <div class="image">
          <img src="./img/home/4.png" alt="">
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
          </img>
      </div>
    </div>

  </xsl:template>
  <xsl:template match="NewsOther">

    <div class="swiper-slide">
      <div class="item-news">
        <div class="image-child">
          <img src="./img/home/4.png" alt="">
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
          </img>
          <div class="time">
            <time>
            <xsl:value-of select="CreatedDate"></xsl:value-of></time>
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
          <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
          <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
        </div>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>