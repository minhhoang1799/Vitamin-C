<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/ZoneList">
    <section class="gioi-thieu main-section">
      <div class="container">
        <xsl:apply-templates select="Zone[position() = 1]" mode="About" /> 
        <xsl:apply-templates select="Zone[position() = 2]" mode="TamNhin" /> 
        <xsl:apply-templates select="Zone[position() = 3]" mode="DaiSu" /> 
        <xsl:apply-templates select="Zone[position() = 4]" mode="CoVan" /> 
        <xsl:apply-templates select="Zone[position() = 5]" mode="GiayPhep" /> 
      </div>
    </section> 
  </xsl:template>

  <xsl:template match="Zone" mode="About">
     <div class="about-wrapper">
        <div class="row wrapper">
          <div class="col-md-7">
            <h3 class="main-title line">
              <xsl:value-of select="News[1]/Title"/>
            </h3>
            <div class="content">
              <xsl:value-of select="News[1]/BriefContent" disable-output-escaping="yes"/>
            </div>
          </div> 
          <div class="col-md-5">
            <div class="image">
              <img >
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
      </div>
  </xsl:template>

  <xsl:template match="Zone" mode="TamNhin">
    <div class="tam-nhin">
      <h3 class="main-title line bg">
        <xsl:value-of select="Title"/>
      </h3>
      <div class="row">
        <xsl:apply-templates select="News" mode="TamNhin" /> 
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Zone" mode="DaiSu">
    <div class="dai-su main-section">
      <h3 class="main-title line bg">
        <xsl:value-of select="Title"/>
      </h3>
      <div class="slide-wrapper">
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <xsl:apply-templates select="News" mode="DaiSu" /> 
          </div>
        </div>
        <div class="swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
        <div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Zone" mode="CoVan">
    <div class="co-van main-section">
      <h3 class="main-title line bg">
        <xsl:value-of select="Title"/>
      </h3>
      <div class="row">
        <xsl:apply-templates select="News" mode="CoVan" /> 
      </div>
    </div>
  </xsl:template>
  <xsl:template match="Zone" mode="GiayPhep">
    <div class="giayphep main-section">
      <h3 class="main-title line bg">
        <xsl:value-of select="Title"/>
      </h3>
      <div class="main-tab" data-toggle="tabslet">
        <ul class="tabslet-tab">
          <xsl:apply-templates select="Zone" mode="GiayPhep-Tab" /> 
        </ul>
        <xsl:apply-templates select="Zone" mode="GiayPhep-Content" /> 
      </div>
    </div>
  </xsl:template>
  <xsl:template match="Zone" mode="GiayPhep-Tab">
    <li>
     <a href="#tab-1">
      <xsl:attribute name="href">
        <xsl:text>#tab-about-</xsl:text>
        <xsl:value-of select="position()"/>
      </xsl:attribute>
        <xsl:value-of select="Title"/>
      </a>
    </li>

  </xsl:template>

  <xsl:template match="Zone" mode="GiayPhep-Content">
    <div class="tabslet-content" id="tab-1">
      <xsl:attribute name="id">
        <xsl:text>tab-about-</xsl:text>
        <xsl:value-of select="position()"/>
      </xsl:attribute>
      <div class="slide-wrapper">
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <xsl:apply-templates select="News" mode="GiayPhep-Content-Slider" />
        </div>
        <div class="swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
        <div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
        </div>
      </div> 
    </div>
  </xsl:template>

  <xsl:template match="News" mode="GiayPhep-Content-Slider" >
    <div class="swiper-slide">
      <a class="item" href="#">
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
          <img src="./img/giay-phep/1.png" alt="">
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
          </img>
        </div>
        <p class="desc">
          <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </p>
      </a>
    </div>
  </xsl:template>
  <xsl:template match="News" mode="CoVan" >
    <div class="col-lg-6">
      <a class="item" href="#">
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
          <img >
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
              </xsl:attribute>
          </img>
        </div>
        <div class="content">
          <h3 class="name">
            <xsl:value-of select="Title"></xsl:value-of>
          </h3>
          <p>
            <xsl:value-of select="SubTitle"></xsl:value-of>
          </p>
        </div>
      </a>
    </div>
  </xsl:template>
  <xsl:template match="News" mode="DaiSu" >
    <div class="swiper-slide">
      <a class="item" href="#">
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
          <img>
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
              </xsl:attribute>
            </img>
        </div>
        <div class="content">
          <h3 class="name">
            <xsl:value-of select="Title"></xsl:value-of>
          </h3>
          <p>
            <xsl:value-of select="SubTitle"></xsl:value-of>
          </p>
        </div>
      </a>
    </div>
  </xsl:template>
  <xsl:template match="News" mode="TamNhin" >
    <div class="col-xl-6">
      <div class="item-vitaminC">
        <div class="icon">
            <img src="./img/icon/1.png" alt="">
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
              </xsl:attribute>
            </img>
          </div>
        <div class="content">
          <h3 class="main-child">
            <xsl:value-of select="Title"></xsl:value-of>
          </h3>
          <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>