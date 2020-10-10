<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/BannerList">
	<div class="swiper-container">
		<div class="swiper-wrapper">
        	<xsl:apply-templates select="/BannerList/Banner" />
		</div>
	</div>
  </xsl:template>

  <xsl:template match="Banner">
			<div class="swiper-slide">
				<div class="banner">
					<div class="image">
						<img src="./img/banner/1.png" alt="">
							<xsl:attribute name="src">
							  <xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
							  <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
						</img>
						<img src="./img/banner/2.png" alt="">
						    <xsl:attribute name="src">
						      <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
						    </xsl:attribute>
						    <xsl:attribute name="alt">
						      <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						    </xsl:attribute>
						</img>
					</div>
					<div class="content-banner">
				      	<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				      	<xsl:if test="Url != ''">
							<div class="btn-wrapper">
								<a class="view-more" href="#">
								    <xsl:attribute name="href">
								      <xsl:value-of select="Url"></xsl:value-of>
								    </xsl:attribute>
								    <xsl:attribute name="title">
								      <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								    </xsl:attribute>
									Xem thêm
								</a> 
							</div>
						</xsl:if>
					</div>
				</div> 
			</div>
  </xsl:template>
</xsl:stylesheet>