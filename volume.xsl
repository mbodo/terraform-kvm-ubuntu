<?xml version="1.0" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:param name="gid" select="1001" />

  <xsl:template match="node()|@*">
     <xsl:copy>
       <xsl:apply-templates select="node()|@*"/>
     </xsl:copy>
  </xsl:template>

   <xsl:template match="target/path/format">
      <xsl:copy-of select="."/>
      <permissions>
        <mode>0775</mode>
        <group>1001</group>
      </permissions>
   </xsl:template>

</xsl:stylesheet>
