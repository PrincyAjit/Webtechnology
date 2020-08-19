<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body>
		 <h1>Yes!</h1>
		 <a xlink:href="https://en.wikipedia.org/wiki/Goa" target="_blank"><p><xsl:value-of select="packages/goa/about"/></p></a>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
