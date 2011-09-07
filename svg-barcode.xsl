<?xml version="1.0"?>
<xsl:stylesheet xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/2000/svg"  xmlns:xlink="http://www.w3.org/1999/xlink" version="2.0">
  
  <xsl:output method="xml" encoding="utf-8" indent="yes"/>
  
  <xsl:template match="dc:identifier[@opf:scheme='ISBN']" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:opf="http://www.idpf.org/2007/opf" exclude-result-prefixes="dc opf">
    <xsl:apply-templates select="." mode="ean-barcode"/>
  </xsl:template>
  
  <xsl:template match="node()" mode="ean-barcode">
    <xsl:param name="value" select="."/>
    <xsl:param name="d1"  as="xs:double" select="number(substring(.,  1, 1))"/>
    <xsl:param name="d2"  as="xs:double" select="number(substring(.,  2, 1))"/>
    <xsl:param name="d3"  as="xs:double" select="number(substring(.,  3, 1))"/>
    <xsl:param name="d4"  as="xs:double" select="number(substring(.,  4, 1))"/>
    <xsl:param name="d5"  as="xs:double" select="number(substring(.,  5, 1))"/>
    <xsl:param name="d6"  as="xs:double" select="number(substring(.,  6, 1))"/>
    <xsl:param name="d7"  as="xs:double" select="number(substring(.,  7, 1))"/>
    <xsl:param name="d8"  as="xs:double" select="number(substring(.,  8, 1))"/>
    <xsl:param name="d9"  as="xs:double" select="number(substring(.,  9, 1))"/>
    <xsl:param name="d10" as="xs:double" select="number(substring(., 10, 1))"/>
    <xsl:param name="d11" as="xs:double" select="number(substring(., 11, 1))"/>
    <xsl:param name="d12" as="xs:double" select="number(substring(., 12, 1))"/>
    <xsl:param name="d13" as="xs:double" select="number(substring(., 13, 1))"/>
          
    <svg version="1.1" width="110" height="70" viewBox="0 0 110 70" fill="black">
      <xsl:if test="(number(substring($value,1,1)) + number(substring($value,3,1)) + number(substring($value,5,1)) + number(substring($value,7,1)) + number(substring($value,9,1)) + number(substring($value,11,1)) + number(substring($value,13,1)) + 3 * (number(substring($value,2,1)) + number(substring($value,4,1)) + number(substring($value,6,1)) + number(substring($value,8,1)) + number(substring($value,10,1)) + number(substring($value,12,1)))) mod 10">
        <xsl:attribute name="fill">red</xsl:attribute>
      </xsl:if>
      <defs>
        <style type="text/css">@namespace "http://www.w3.org/2000/svg";
text { font-family: "Monaco", monospaced; }</style>
        <g id="L0">
          <!--0001101-->
           <rect x="3" y="0" width="2" height="50" class="bar"/>
           <rect x="6" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">0</text>
        </g>
        <g id="L1">
          <!--0011001-->
           <rect x="2" y="0" width="2" height="50" class="bar"/>
           <rect x="6" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">1</text>
        </g>
        <g id="L2">
          <!--0010011-->
           <rect x="2" y="0" width="1" height="50" class="bar"/>
           <rect x="5" y="0" width="2" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">2</text>
        </g>
        <g id="L3">
          <!--0111101-->
           <rect x="1" y="0" width="4" height="50" class="bar"/>
           <rect x="6" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">3</text>
        </g>
        <g id="L4">
          <!--0100011-->
           <rect x="1" y="0" width="1" height="50" class="bar"/>
           <rect x="5" y="0" width="2" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">4</text>
        </g>
        <g id="L5">
          <!--0110001-->
           <rect x="1" y="0" width="2" height="50" class="bar"/>
           <rect x="6" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">5</text>
        </g>
        <g id="L6">
          <!--0101111-->
           <rect x="1" y="0" width="1" height="50" class="bar"/>
           <rect x="3" y="0" width="4" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">6</text>
        </g>
        <g id="L7">
          <!--0111011-->
           <rect x="1" y="0" width="3" height="50" class="bar"/>
           <rect x="5" y="0" width="2" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">7</text>
        </g>
        <g id="L8">
          <!--0110111-->
           <rect x="1" y="0" width="2" height="50" class="bar"/>
           <rect x="4" y="0" width="3" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">8</text>
        </g>
        <g id="L9">
          <!--0001011-->
           <rect x="3" y="0" width="1" height="50" class="bar"/>
           <rect x="5" y="0" width="2" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">9</text>
        </g>
        <g id="G0">
          <!--0100111-->
           <rect x="1" y="0" width="1" height="50" class="bar"/>
           <rect x="4" y="0" width="3" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">0</text>
        </g>
        <g id="G1">
          <!--0110011-->
           <rect x="1" y="0" width="2" height="50" class="bar"/>
           <rect x="5" y="0" width="2" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">1</text>
        </g>
        <g id="G2">
          <!--0011011-->
           <rect x="2" y="0" width="2" height="50" class="bar"/>
           <rect x="5" y="0" width="2" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">2</text>
        </g>
        <g id="G3">
          <!--0100001-->
           <rect x="1" y="0" width="1" height="50" class="bar"/>
           <rect x="6" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">3</text>
        </g>
        <g id="G4">
          <!--0011101-->
           <rect x="2" y="0" width="3" height="50" class="bar"/>
           <rect x="6" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">4</text>
        </g>
        <g id="G5">
          <!--0111001-->
           <rect x="1" y="0" width="3" height="50" class="bar"/>
           <rect x="6" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">5</text>
        </g>
        <g id="G6">
          <!--0000101-->
           <rect x="4" y="0" width="1" height="50" class="bar"/>
           <rect x="6" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">6</text>
        </g>
        <g id="G7">
          <!--0010001-->
           <rect x="2" y="0" width="1" height="50" class="bar"/>
           <rect x="6" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">7</text>
        </g>
        <g id="G8">
          <!--0001001-->
           <rect x="3" y="0" width="1" height="50" class="bar"/>
           <rect x="6" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">8</text>
        </g>
        <g id="G9">
          <!--0010111-->
           <rect x="2" y="0" width="1" height="50" class="bar"/>
           <rect x="4" y="0" width="3" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">9</text>
        </g>
        <g id="R0">
          <!--1110010-->
           <rect x="0" y="0" width="3" height="50" class="bar"/>
           <rect x="5" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">0</text>
        </g>
        <g id="R1">
          <!--1100110-->
           <rect x="0" y="0" width="2" height="50" class="bar"/>
           <rect x="4" y="0" width="2" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">1</text>
        </g>
        <g id="R2">
          <!--1101100-->
           <rect x="0" y="0" width="2" height="50" class="bar"/>
           <rect x="3" y="0" width="2" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">2</text>
        </g>
        <g id="R3">
          <!--1000010-->
           <rect x="0" y="0" width="1" height="50" class="bar"/>
           <rect x="5" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">3</text>
        </g>
        <g id="R4">
          <!--1011100-->
           <rect x="0" y="0" width="1" height="50" class="bar"/>
           <rect x="2" y="0" width="3" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">4</text>
        </g>
        <g id="R5">
          <!--1001110-->
           <rect x="0" y="0" width="1" height="50" class="bar"/>
           <rect x="3" y="0" width="3" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">5</text>
        </g>
        <g id="R6">
          <!--1010000-->
           <rect x="0" y="0" width="1" height="50" class="bar"/>
           <rect x="2" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">6</text>
        </g>
        <g id="R7">
          <!--1000100-->
           <rect x="0" y="0" width="1" height="50" class="bar"/>
           <rect x="4" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">7</text>
        </g>
        <g id="R8">
          <!--1001000-->
           <rect x="0" y="0" width="1" height="50" class="bar"/>
           <rect x="3" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">8</text>
        </g>
        <g id="R9">
          <!--1110100-->
           <rect x="0" y="0" width="3" height="50" class="bar"/>
           <rect x="4" y="0" width="1" height="50" class="bar"/>
           <text x="0" y="60" font-size="10">9</text>
        </g>
        <g id="separator">
           <rect x="0" y="0" width="1" height="57" class="bar"/>
           <rect x="2" y="0" width="1" height="57" class="bar"/>
        </g>
      </defs>
      <desc>ISBN <xsl:apply-templates select="value" mode="format-isbn"/></desc>

      <use xlink:href="#separator" x="5" y="0"/>
      <use xlink:href="#L{$d2}" x="8" y="0"/>
      <xsl:choose>
        <xsl:when test="$d1 &lt; 4">
          <use xlink:href="#L{$d3}" x="16" y=" 0"/>
        </xsl:when>
        <xsl:otherwise>
          <use xlink:href="#G{$d3}" x="16" y="0"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="$d1 = 0 or $d1 = 4 or $d1 = 7 or $d1 = 8">
          <use xlink:href="#L{$d4}" x="24" y="0"/>
        </xsl:when>
        <xsl:otherwise>
          <use xlink:href="#G{$d4}" x="24" y="0"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="$d1 = 0 or $d1 = 1 or $d1 = 4 or $d1 = 5 or $d1 = 9">
          <use xlink:href="#L{$d5}" x="32" y="0"/>
        </xsl:when>
        <xsl:otherwise>
          <use xlink:href="#G{$d5}" x="32" y="0"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="$d1 = 0 or $d1 = 2 or $d1 = 5 or $d1 = 6 or $d1 = 7">
          <use xlink:href="#L{$d6}" x="40" y="0"/>
        </xsl:when>
        <xsl:otherwise>
          <use xlink:href="#G{$d6}" x="40" y="0"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="$d1 = 0 or $d1 = 3 or $d1 = 6 or $d1 = 8 or $d1 = 9">
          <use xlink:href="#L{$d7}" x="48" y="0"/>
        </xsl:when>
        <xsl:otherwise>
          <use xlink:href="#G{$d7}" x="48" y="0"/>
        </xsl:otherwise>
      </xsl:choose>
      <use xlink:href="#separator" x="56" y="0"/>
      <use xlink:href="#R{$d8}" x="60" y="0"/>
      <use xlink:href="#R{$d9}" x="68" y="0"/>
      <use xlink:href="#R{$d10}" x="76" y="0"/>
      <use xlink:href="#R{$d11}" x="84" y="0"/>
      <use xlink:href="#R{$d12}" x="92" y="0"/>
      <use xlink:href="#R{$d13}" x="100" y="0"/>
      <use xlink:href="#separator" x="107" y="0"/>
    </svg>
  </xsl:template>
  
  <xsl:template match="*" mode="format-isbn">
    <xsl:value-of select="substring(., 1, 3)"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="substring(., 4, 1)"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="substring(., 5, 2)"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="substring(., 7, 6)"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="substring(., 13, 1)"/>
  </xsl:template>
  
</xsl:stylesheet>