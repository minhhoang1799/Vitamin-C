<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/BannerList">
  	<h3 class="main-title line bg">
      <xsl:value-of select="ModuleTitle"></xsl:value-of>
  	</h3>
	<div class="doi-tac">
		<div class="swiper-container">
			<div class="swiper-wrapper">
      			<xsl:apply-templates select="Banner"></xsl:apply-templates> 
			</div>
		</div>
		<div class="swiper-prev"><em class="mdi mdi-arrow-left"></em></div>
		<div class="swiper-next"><em class="mdi mdi-arrow-right"></em></div>
	</div>
  </xsl:template>

  <xsl:template match="Banner">
  	<div class="swiper-slide">
		<div class="item">
			<img>
				<xsl:attribute name="src">
				  <xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
				  <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
	</div>
  </xsl:template>
</xsl:stylesheet>