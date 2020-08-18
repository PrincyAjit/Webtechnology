<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/packages">
  <html>
    <body style="background-color:#E3E2DF;">
    <h2>Packages</h2>
  <h3>Goa</h3>
  <div><xsl:value-of select="goa/about"/></div>
  <table border="1">
    <tr>
      <th>Package name</th>
      <th>Price</th>
      <th>Nights</th>
      <th>Itinerary</th>
    
    </tr>
    <xsl:for-each select="goa/package">
      <tr> <!-- Accessing by node location -->
        <td><xsl:value-of select="concat('Rs.','',price)"/></td>  <!-- string concatenation -->
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
       
      </tr>
    </xsl:for-each>
  </table>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
