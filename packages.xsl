<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body>
  <h2>Goa</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">	 
                  <th>Package name</th>
      <th>Price</th>
      <th>Nights</th>
      <th>Itinerary</th>
      <th>Total(Inclusive of taxes)</th>	  
               </tr>
					
               <xsl:for-each select = "/packages/goa/package">
                  <tr> <!-- Accessing by node location -->
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="concat('Rs.','',price)"/></td>  <!-- string concatenation -->
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
