<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body bgcolor="#ccffff">
  <h2>Find a Book</h2>
  <h4> Users and their Favourite Books</h4>
<h5> P.S.- Make sure to check out recommendations from our newest readers! (Highlighted in green) </h5>
  <table border="1">
    <tr bgcolor="#99ff66">
      <th style="text-align:center">Name</th>
      <th style="text-align:center">Favourite Book</th>
    </tr>
    <xsl:for-each select="library/user">
    <xsl:sort select="name"/>
    <xsl:if test="user_id &gt; 220000">
    <tr>
<xsl:choose>
       <xsl:when test="user_id &gt; 220004">
          <td bgcolor="#00cc66" style="text-align:center">
          <xsl:value-of select="name"/></td>
          <td bgcolor="#00cc66" style="text-align:center">
          <xsl:value-of select="fav_book"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td style="text-align:center"><xsl:value-of select="name"/></td>
          <td style="text-align:center"><xsl:value-of select="fav_book"/></td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:if>	
    </xsl:for-each>
  </table>
<h4> Know more about the books!</h4>
<xsl:apply-templates/>
</body>
</html>
</xsl:template>

<xsl:template match="user">
  <p> 
    <xsl:apply-templates select="fav_book"/>
    <xsl:apply-templates select="genre"/>
    <xsl:apply-templates select="time_to_read"/>

  </p>
</xsl:template>

<xsl:template match="fav_book">
  Book: <span style="color:#006600">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="genre">
  Genre: <span style="color:#339966">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="time_to_read">
  Estimated Time to Read (in hours and minutes): <span style="color:#003366">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

</xsl:stylesheet>
