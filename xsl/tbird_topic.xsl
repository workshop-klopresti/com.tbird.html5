<?xml version="1.0" encoding="UTF-8"?>
<!--
This file is part of the DITA Open Toolkit project.
See the accompanying LICENSE file for applicable license.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
  xmlns:dita2html="http://dita-ot.sourceforge.net/ns/200801/dita2html"
  xmlns:ditamsg="http://dita-ot.sourceforge.net/ns/200704/ditamsg" version="2.0"
  exclude-result-prefixes="xs dita-ot dita2html ditamsg">

  <!-- TBIRD: DITA paragraphs should always be div elements in HTML output -->
  <xsl:template match="*[contains(@class, ' topic/p ')]" name="topic.p">
    <div>
      <xsl:call-template name="commonattributes"/>
      <xsl:call-template name="setid"/>
      <xsl:apply-templates/>
    </div>
  </xsl:template>



</xsl:stylesheet>
