<?xml version ='1.0' encoding ='UTF-8'?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match='/'>
<html>
<body>
<h2>Employee</h2>
<table border='1'>
<tr bgcolor='#d5dfe0'>
<th>Name</th>
<th>Population</th>
<th>Capital</th>
<th>Bird</th>
<th>Flower</th>
<th>Area</th>
</tr>
<xsl:for-each select='class/employee'>
<tr>
<td><xsl:value-of select='name'/></td>
<td><xsl:value-of select='population'/></td>
<td><xsl:value-of select='capital'/></td>
<td><xsl:value-of select='brid'/></td>
<td><xsl:value-of select='flower'/></td>
<td><xsl:value-of select='area'/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:transform>

