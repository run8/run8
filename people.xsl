<xsl:stylesheet xmlns:xsl=http://www.w3.org/1999/XSL/Transformversion="2.0"> </xsl:stylesheet> 
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
            <xsl:for-each select="people/person">
                <tr>
                    <td>
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
