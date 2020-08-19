<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body style="background-color:#E3E2DF;font-family:verdana;">
		 <center><h1>Packages</h1></center>
		 <h2>Goa</h2>
		 <b><svg height="30" width="300" xmlns:xlink="http://www.w3.org/1999/xlink">
  <a xlink:href="https://en.wikipedia.org/wiki/Goa" target="_blank">
	   <text x="0" y="15" fill="purple"><xsl:value-of select="packages/goa/about"/></text>
	 </a>
  Sorry, your browser does not support inline SVG.
</svg></b>
            <table border = "1">
               <tr bgcolor = "#3b3a30" style="color: white;">	 
                  <th>Package name</th>
      <th>Nights</th>
      <th>Itinerary</th>
	<th>Price</th>
	<th>Taxes</th>
      <th>Total(Inclusive of taxes)</th>	  
               </tr>
					
               <xsl:for-each select = "/packages/goa/package">
                  <tr bgcolor="#c0ded9"> <!-- Accessing by node location -->
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
	<td><xsl:value-of select="concat('Rs.','',price)"/></td>  <!-- string concatenation -->
	<td><xsl:value-of select="ceiling(taxcharge)"/></td>
	<td><xsl:value-of select="ceiling(sum(taxcharge|price))"/></td>
        
      </tr>
               </xsl:for-each>
					
              
            </table>
		 
		 
		 <h2>Manali</h2> <svg height="30" width="200" xmlns:xlink="http://www.w3.org/1999/xlink">
  <a xlink:href="https://en.wikipedia.org/wiki/Goa" target="_blank">
	   <text  x="0" y="15" fill="purple"><xsl:value-of select="packages/manali/about"/></text>
  </a>
  Sorry, your browser does not support inline SVG.
</svg>
		 <h3>Packages greater than 15000</h3>
     <table border = "1">
               <tr bgcolor = "#3b3a30" style="color: white;">	 
                  <th>Package name</th>
           <th>Nights</th>
     	 <th>Itinerary</th>
	 <th>Price</th>
	<th>Taxes</th>
      <th>Total(Inclusive of taxes)</th>	  
               </tr >

               <xsl:for-each select = "/packages/manali/package[price > 15000]">
                  <tr bgcolor="#c0ded9">	 
                     <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
	<td><xsl:value-of select="concat('Rs.','',price)"/></td>  <!-- string concatenation -->
      <td><xsl:value-of select="ceiling(taxcharge)"/></td>
	<td><xsl:value-of select="ceiling(sum(taxcharge|price))"/></td> 
                  </tr>	
               </xsl:for-each>
	
	
            </table>
		 <h3>Packages lesser than 15000</h3>
		 <table border = "1">
               <tr bgcolor = "#3b3a30" style="color: white;">	 
                  <th>Package name</th>
           <th>Nights</th>
     	 <th>Itinerary</th>
	 <th>Price</th>
	<th>Taxes</th>
      <th>Total(Inclusive of taxes)</th>	  
               </tr>

               <xsl:for-each select = "/packages/manali/package[price &lt; 15000]">
                  <tr bgcolor="#c0ded9">	 
                     <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
      <td><xsl:value-of select="concat('Rs.','',price)"/></td>  <!-- string concatenation -->
      <td><xsl:value-of select="ceiling(taxcharge)"/></td>
	<td><xsl:value-of select="ceiling(sum(taxcharge|price))"/></td> 	 
                  </tr>	
               </xsl:for-each>
	
	
            </table>

 <h2>Andaman</h2>  <svg height="30" width="200" xmlns:xlink="http://www.w3.org/1999/xlink">
  <a xlink:href="https://en.wikipedia.org/wiki/Goa" target="_blank">
	   <text  x="0" y="15" fill="purple"><xsl:value-of select="packages/andaman/about"/></text>
  </a>
  Sorry, your browser does not support inline SVG.
</svg>
            <table border = "1">
               <tr bgcolor = "#3b3a30" style="color: white;" >	 
                <th>Package name</th>
           <th>Nights</th>
     	 <th>Itinerary</th>
	 <th>Price</th>
	<th>Taxes</th>
      <th>Total(Inclusive of taxes)</th>	  
               </tr>
					
               <xsl:for-each select = "/packages/andaman/package">
                  <tr bgcolor="#c0ded9"> <!-- Accessing by node location -->
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
      <td><xsl:value-of select="concat('Rs.','',price)"/></td>  <!-- string concatenation -->
      <td><xsl:value-of select="ceiling(taxcharge)"/></td>
	<td><xsl:value-of select="ceiling(sum(taxcharge|price))"/></td> 
        
      </tr>
               </xsl:for-each>
					
              
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
