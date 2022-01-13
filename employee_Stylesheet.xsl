<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
		<h1 style="text-align:center">Employee Management System</h1>
		<table border="2" align="center">
		<tr bgcolor="#9acd32">
		<th>Unique id</th>
		<th>Name</th>
		<th>Age</th>
		<th>Salary</th>
		<th>E-Mail</th>
		<th>Mob-Num</th>
		<th>Designation</th>
		<th>Promotion</th>
		</tr>
		<xsl:for-each select="company/employee">
		<xsl:sort select="emp-name"></xsl:sort>
		<tr >
		<td>
		<xsl:attribute name="uid">
        <xsl:value-of select="generate-id(.)"/>
        <xsl:value-of select="uid"></xsl:value-of>
        </xsl:attribute>
		</td>
		<td>
		<xsl:value-of select="emp-name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="emp-age"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="emp-salary"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="emp-emailid"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="emp-phonenum"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="emp-designation"></xsl:value-of>
		</td>
	
			<xsl:choose>
	        <xsl:when test="emp-age &gt;= 50">
	          <td>Associate Project Manager</td>
	        </xsl:when>
	        <xsl:when test="emp-age &gt;= 40">
	        
	          <td>Team Leader</td>
	       
	        </xsl:when>
	        <xsl:otherwise>
	          <td>Developer</td>
	        </xsl:otherwise>
	        </xsl:choose>
   
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>