<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/">

    <html>

    <body>
        <table border="1">
            <tr>
                <th>
                    Name</th>
                <th>Address</th>
                <th>Tel</th>
                <th>Email</th>
            </tr>
            
<!--            Step 3 for-each of the PERSON elements-->
            <xsl:for-each select="people/person">
                
                <tr>
<!--                    Step 5 select the address element, send the value as output-->
                    <td>
                        <xsl:value-of select="name"/>
                        Address field will go here
                    </td>
                    <td>
                        TEL field will go here
                    </td>
                    <td>
                        EMAIL field will go here
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </body>

    </html>
</xsl:template>
</xsl:stylesheet>