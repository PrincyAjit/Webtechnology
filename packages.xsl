<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink"
                              exclude-result-prefixes="xlink">
                              <xsl:output method="html"/>
<xsl:template match="/packages">
  <html>
    <body style="background-color:#E3E2DF;">
    <h2>Packages</h2>
  <h3>Goa</h3>
  <div><xsl:value-of select="goa/about/@xlink:href" xmlns:x-link="http://www.w3.org/1999/xlink"/></div>
  <table border="1">
    <tr>
      <th>Package name</th>
      <th>Price</th>
      <th>Nights</th>
      <th>Itinerary</th>
      <th>Total(Inclusive of taxes)</th>    
    </tr>
    <xsl:for-each select="goa/package">
      <tr> <!-- Accessing by node location -->
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="concat('Rs.','',price)"/></td>  <!-- string concatenation -->
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
       <td><xsl:value-of select="sum(price|price)"/></td>
        
      </tr>
    </xsl:for-each>
  </table>
<h3>Manali</h3>
  <div><xsl:value-of select="manali/about/@xlink:href" xmlns:x-link="http://www.w3.org/1999/xlink"/></div>
  <h4>Packages less than 15000</h4>
  <table border="1">
    <tr>
      <th>Package name</th>
      <th>Nights</th>
      <th>Itinerary</th>
    </tr>
    <xsl:for-each select="manali/package">
       <xsl:if test="price &lt; 15000">
      <tr> <!-- Accessing by node with predicate -->
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="('Rs.','',price)"/></td>
          <td><xsl:value-of select="nightcount"/></td>
          <td><xsl:value-of select="itinerary"/></td>
          <td><xsl:value-of select="sum(price|price)"/></td>
      </tr>
      </xsl:if>
    </xsl:for-each>
  </table>
  <h4>Packages greater than 15000</h4>
  <table border="1">
    <tr>
      <th>Package name</th>
      <th>Price</th>
      <th>Nights</th>
      <th>Itinerary</th>
      <th>Total(Inclusive of taxes)</th>
    </tr>
    <xsl:for-each select="manali/package">
      <xsl:if test="price &gt; 15000">
      <tr> <!-- Accessing by node with predicate -->
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="('Rs.','',price)"/></td>
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
        <td><xsl:value-of select="sum(price|price)"/></td>
      </tr>
        </xsl:if>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
