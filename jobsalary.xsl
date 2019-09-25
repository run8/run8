<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <head>
    <title>Salary Report</title>
    <style type="text/css">
    body{
      font-family:'Arial',verdana,sans-serif;
      font-size:14px;
    }
    h3 {
      font-size:20px;
      font-weight: normal;
      color: #75A54B;
      border-bottom: 2px solid #EFF0F1;
    }
    table tr th{
      background-color:#99CC66;
    }
    </style>
  </head>
  <body>
    <h3>Salary Report</h3>
    <table width="100%">
      <tr>
        <th>Name</th>
        <th>Salary (€)</th>
        <th>Address</th>
        <th>Contact Number</th>       
      </tr> 
      <xsl:for-each select="jobsalary/report">
        <tr>
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="salary"/></td>
          <td><xsl:value-of select="address"/></td>
          <td><xsl:value-of select="contact"/></td>
        </tr>
        </xsl:for-each> 
    </table>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>