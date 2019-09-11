<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>List of Clients</title>
<style>
  table, th, td { border: 1px double blue; }
  th { background-color: white; }
  .bgred { background-color: red; color: white; }
</style>
</head>
<body>
    <h1>List of Clients</h1>
  <table>
    <tr>
      <th>Name</th>
      <th>Phone</th>
      <th>Account Total</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <xsl:choose>
      <xsl:when test="price > 10">
         <td class="bgred">
         <xsl:value-of select="artist"/>
         </td>
      </xsl:when>
      <xsl:otherwise>
         <td><xsl:value-of select="artist"/></td>
      </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
