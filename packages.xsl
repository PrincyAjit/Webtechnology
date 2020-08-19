<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body>
		 
		<svg height="30" width="200" xmlns:xlink="http://www.w3.org/1999/xlink">
  <a xlink:href="https://en.wikipedia.org/wiki/Goa" target="_blank">
	   <text x="0" y="15"><xsl:value-of select="packages/goa/about"/></text>
  </a>
  Sorry, your browser does not support inline SVG.
</svg>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
