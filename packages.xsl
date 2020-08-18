        <td><xsl:value-of select="name"/></td>
<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body style="background-color:#E3E2DF;">
    <h2>Packages</h2>
  <h3>Goa</h3>
  <table border="1">
    <tr>
      <th>Package name</th>
      <th>Nights</th>
      <th>Itinerary</th>
    </tr>
    <xsl:for-each select="packages/goa/package">
      <tr> <!-- Accessing by node location -->
        <td><xsl:value-of select="price"/></td>
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
      </tr>
    </xsl:for-each>
  </table>
  <h3>Manalii</h3>
  <h4>Packages less than 15000</h4>
  <table border="1">
    <tr>
      <th>Package name</th>
      <th>Nights</th>
      <th>Itinerary</th>
    </tr>
    <xsl:for-each select="//manali/package[price < 15000]">
      <tr> <!-- Accessing by node with predicate -->
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="price"/></td>
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
      </tr>
    </xsl:for-each>
  </table>
  <h4>Packages greater than 15000</h4>
  <table border="1">
    <tr>
      <th>Package name</th>
      <th>Nights</th>
      <th>Itinerary</th>
    </tr>
    <xsl:for-each select="//manali/package[price > 15000]">
      <tr> <!-- Accessing by node with predicate -->
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="price"/></td>
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
      </tr>
    </xsl:for-each>
  </table>
   <table border="1">
    <tr>
      <th>Package name</th>
      <th>Nights</th>
      <th>Itinerary</th>
    </tr>
    <xsl:for-each select="child:: andaman/package">
      <tr> <!-- Accessing by node type -->
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
