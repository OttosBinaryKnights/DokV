<?xml version="1.0"?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Autor</th>
      <th>Artist</th>
      <th>Year</th>
    </tr>

    <xsl:for-each select="booker/award">
      <xsl:sort select="year" order="descending"/>
      <tr>
        <td><xsl:value-of select="author"/></td>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="year"/></td>
      </tr>
    </xsl:for-each>

  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
