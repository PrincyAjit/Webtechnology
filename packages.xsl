<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body>
            
		 <h3>Andaman</h3>

   <table border="1">
    <tr>
      <th>Package name</th>
      <th>Price</th>
      <th>Nights</th>
      <th>Itinerary</th>
      <th>Total(Inclusive of taxes)</th>
    </tr>
    <xsl:for-each select="/packages/andaman/package">
      <tr> <!-- Accessing by node type -->
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="('Rs.','',price)"/></td>
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
        <td><xsl:value-of select="sum(price|price)"/></td>
      </tr>
    </xsl:for-each>
  </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
