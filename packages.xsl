<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/packages">
  <html>
    <body style="background-color:#E3E2DF;">
    <h2>Packages</h2>
  <h3>Goa</h3>
  <table border="1">
    <tr>
      <th>Package name</th>
      <th>Destination</th>
      <th>PRICE</th>
    </tr>
    <xsl:for-each select="goa/package">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="price"/></td>
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
      </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
