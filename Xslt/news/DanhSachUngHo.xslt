<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/NewsDetail">
      <section class="donggop-mtq main-section">
        <div class="container">
          <h3 class="main-title line bg">
            <xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
          </h3>
            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
          <div class="table">
            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
          </div>
        </div>
      </section>
   
  </xsl:template>

</xsl:stylesheet>