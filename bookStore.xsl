<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Book Store</title>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <style>
                body{
    font-family:Arial,Helvetica,sans-serif;
    background-color:#523819;
    margin:5px;
    text-align:left;
    color:#523819;
}
h2{
   font-size:140%;
   color:#0d3427;
    margin-top:10px
}
p{
   font-size:1000%;
   color:#523819
}
table{
    background-color:hsla(35, 96%, 55%, 0.952);
    border-collapse:collapse;
    width:75%;   
}
.title{
    text-align:center;
    font-style:italic;
}
th{
    border-color:#000;
    font-size:120%;
    align: center;
    color:#0d3427;
}
td{
  border-color:#000;
  font-size:100%;
  color::#523819;
  font-style:italic;
  padding:5px;
}
.name{
   font-size:110%; 

}
img{
    float:left;
    margin-left:10px;
    margin-right:10px;
    border:0;
}
.indent{
    margin-left:78px;
}
                </style>
	        </head>
            <body>
             <table id="menuTable"  class="indent">
             <thead>
            <tr class="title">
                <th>Category</th>
                <th>Book</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <xsl:for-each select="//category">
                <tr align="center" class="name">
                    <td colspan="3">
                        <xsl:value-of select="@name" />
                    </td>
                </tr>
                <xsl:for-each select="choice">
                    <tr>
                        <td>
                            <xsl:element name="img">				
                            <xsl:attribute name="src">				
                            <xsl:value-of select="photo"/>		  		
                             </xsl:attribute>	
                             <xsl:attribute name="width">150</xsl:attribute>						
                             <xsl:attribute name="align">left</xsl:attribute>		
                </xsl:element>
                        </td>
                        <td>
                            <xsl:value-of select="book" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="price" />
                        </td>
                    </tr>
                    <tr>
                    <td>
                    </td>
                     <td>
                     <xsl:value-of select="p"/>
                     </td>
                     <td>
                     </td>
                    </tr>
                </xsl:for-each>
            </xsl:for-each>
          </tbody>
          </table>
          </body>
		</html>
</xsl:template>
</xsl:stylesheet>