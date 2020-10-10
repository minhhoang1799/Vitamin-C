<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/NewsList">
    <h3 class="main-title line bg">
      <xsl:value-of select="ModuleTitle"></xsl:value-of>
    </h3>
    <div class="row news">
      <div class="col-xl-6 img-wrapper">
        <div class="image">
        	<img src="./img/home/3.png" alt="">
	            <xsl:attribute name="src">
	              <xsl:value-of select="News[1]/ImageUrl"></xsl:value-of>
	            </xsl:attribute>
	            <xsl:attribute name="alt">
	              <xsl:value-of select="News[1]/Title" disable-output-escaping="yes"></xsl:value-of>
	            </xsl:attribute>
	        </img>
        </div>
      </div>
      <div class="col-xl-6 content-wrapper">
        <div class="content">
			<time class="time">
				<xsl:value-of select="News[1]/CreatedDate"></xsl:value-of>
			</time> 
	          <a class="title" href="#">
	            <xsl:attribute name="target">
	            <xsl:value-of select="News[1]/Target"></xsl:value-of>
	            </xsl:attribute>
	            <xsl:attribute name="href">
	              <xsl:value-of select="News[1]/Url"></xsl:value-of>
	            </xsl:attribute>
	            <xsl:attribute name="title">
	              <xsl:value-of select="News[1]/Title"></xsl:value-of>
	            </xsl:attribute>
	            <xsl:value-of select="News[1]/Title"></xsl:value-of>
	        	</a>
	          <xsl:value-of select="News[1]/BriefContent" disable-output-escaping="yes"></xsl:value-of>
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
      </div>
    </div>
    <div class="row child">
      <xsl:apply-templates select="News[position() > 1]"/> 
    </div>
  </xsl:template>
      

  <xsl:template match="News">
      <div class="col-lg-6 item-wrapper">
        <div class="image">
          <img src="./img/home/5.png" alt="">
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
          </img>
        </div>
        <div class="content">
          <time class="time">
            <xsl:value-of select="CreatedDate"></xsl:value-of>
          </time>
          <a class="title" href="#">
            <xsl:attribute name="target">
            <xsl:value-of select="Target"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
          </a>
          <div class="button"><a class="view-more" href="#">
            <xsl:attribute name="target">
            <xsl:value-of select="Target"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>Xem thêm</a></div>
        </div>
      </div>
  </xsl:template>
</xsl:stylesheet>