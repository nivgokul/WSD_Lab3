<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Find a Book</h2>
  <h4> Users and their Favourite Books</h4>
<xsl:apply-templates/>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:center">name</th>
      <th style="text-align:center">fav_book</th>
    </tr>
    <xsl:for-each select="library/user">
    <xsl:sort select="name"/>
    <xsl:if test="user_id &gt; 220000">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="fav_book"/></td>
<xsl:choose>
       <xsl:when test="user_id &gt; 220004">
          <td bgcolor="#ff00ff">
          <xsl:value-of select="fav_book"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td><xsl:value-of select="fav_book"/></td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:if>	
    </xsl:for-each>
  </table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>

