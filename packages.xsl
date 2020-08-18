<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/packages">
  <html>
  <body>
    <body style="background-color:#E3E2DF;">
  <nav  class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="homepage.html"><img src="images/logo.png" height="50" width="55"> </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div style="margin-left: 900px;" class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul  class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="homepage.html"><b>Home</b><span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="gallery.html" target=""><b>Gallery</b></a> 
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="signup.html" target=""><b>Signup</b></a> 
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="login.html" target=""><b>Login</b></a> 
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="aboutus.html" target=""><b>About Us</b></a> 
      </li>
      
      
      <!-- <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li> -->
    </ul>
   
  </div>   
</nav>
  <h2>Packages</h2>
  <h3>Goa</h3>
  <table border="1">
    <tr>
      <th>Package name</th>
      <th>Destination</th>
      <th>PRICE</th>
    </tr>
    <xsl:for-each select="goa/package">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="price"/></td>
        <td><xsl:value-of select="nightcount"/></td>
        <td><xsl:value-of select="itinerary"/></td>
      </tr>
    </xsl:for-each>
  </table>
    <xsl:text> </xsl:text>
<xsl:value-of select="TravelsName"/>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>