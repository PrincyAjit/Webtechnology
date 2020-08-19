<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body>
		 <h1>Yes!yo</h1>
		 <svg height="30" width="200" xmlns:xlink="http://www.w3.org/1999/xlink">
		 <a xlink:href="https://en.wikipedia.org/wiki/Goa" target="_blank"><xsl:value-of select="packages/goa/about"/></a>
		 </svg>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
