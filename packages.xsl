<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body>
		 <h2>Goa</h2> <svg height="30" width="200" xmlns:xlink="http://www.w3.org/1999/xlink">
  <a xlink:href="https://en.wikipedia.org/wiki/Goa" target="_blank">
	   <text x="0" y="15"><xsl:value-of select="packages/goa/about"/></text>
  </a>
  Sorry, your browser does not support inline SVG.
</svg>
            <table border = "1">
               <tr bgcolor = "#9acd32">	 
                  <th>Package name</th>
      <th>Price</th>
      <th>Nights</th>
      <th>Itinerary</th>
	<th>Taxes</th>
      <th>Total(Inclusive of taxes)</th>	  
               </tr>
					
               <xsl:for-each select = "/packages/goa/package">
                  <tr> <!-- Accessing by node location -->
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="concat('Rs.','',price)"/></td>  <!-- string concatenation -->
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
	<td><xsl:value-of select="ceiling(taxcharge)"/></td>
       <xsl:value-of select="sum((taxcharge|price)[number(.) = .])"/>
        
      </tr>
               </xsl:for-each>
					
              
            </table>
		 
		 
		 <h2>Manali</h2> <svg height="30" width="200" xmlns:xlink="http://www.w3.org/1999/xlink">
  <a xlink:href="https://en.wikipedia.org/wiki/Goa" target="_blank">
	   <text x="0" y="15"><xsl:value-of select="packages/goa/about"/></text>
  </a>
  Sorry, your browser does not support inline SVG.
</svg>
		 <h3>Packages greater than 15000</h3>
     <table border = "1">
               <tr bgcolor = "#9acd32">	 
                  <th>Package name</th>
      <th>Price</th>
      <th>Nights</th>
      <th>Itinerary</th>
      <th>Total(Inclusive of taxes)</th>	  
               </tr>

               <xsl:for-each select = "/packages/manali/package[price > 15000]">
                  <tr>	 
                     <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="concat('Rs.','',price)"/></td>  <!-- string concatenation -->
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
       <td><xsl:value-of select="sum(price|price)"/></td>	 
                  </tr>	
               </xsl:for-each>
	
	
            </table>
		 <h3>Packages lesser than 15000</h3>
		 <table border = "1">
               <tr bgcolor = "#9acd32">	 
                  <th>Package name</th>
      <th>Price</th>
      <th>Nights</th>
      <th>Itinerary</th>
      <th>Total(Inclusive of taxes)</th>	  
               </tr>

               <xsl:for-each select = "/packages/manali/package[price &lt; 15000]">
                  <tr>	 
                     <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="concat('Rs.','',price)"/></td>  <!-- string concatenation -->
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
       <td><xsl:value-of select="sum(price|price)"/></td>	 
                  </tr>	
               </xsl:for-each>
	
	
            </table>

 <h2>Andaman</h2>  <svg height="30" width="200" xmlns:xlink="http://www.w3.org/1999/xlink">
  <a xlink:href="https://en.wikipedia.org/wiki/Goa" target="_blank">
	   <text x="0" y="15"><xsl:value-of select="packages/goa/about"/></text>
  </a>
  Sorry, your browser does not support inline SVG.
</svg>
            <table border = "1">
               <tr bgcolor = "#9acd32">	 
                  <th>Package name</th>
      <th>Price</th>
      <th>Nights</th>
      <th>Itinerary</th>
      <th>Total(Inclusive of taxes)</th>	  
               </tr>
					
               <xsl:for-each select = "/packages/andaman/package">
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
