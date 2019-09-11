<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" />
    <xsl:template match="/">
        <html>
        <head>
            <title>List of Clients</title>
            <style>
                table,
                td {
                    border: 2px solid blue;
                }
            </style>
        </head>
        <body>
            <h1> List of Clients</h1>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Account Total</th>
                </tr>
                <xsl:for-each select="Accounts/Client">
                    <xsl:sort select="Name/Last" />
                    <tr>
                        <td>
                            <xsl:value-of select="Name"></xsl:value-of>
                        </td>
                        <td>
                            <xsl:value-of select="Phone"></xsl:value-of>
                        </td>
                        <td>
                            <xsl:value-of select="E-mail"></xsl:value-of>
                        </td>
                        <xsl:choose>
                            <xsl:when test="Account_Total &lt;= 80000">
                                <td align="right" style="color: red"><B>&#0036;<xsl:value-of select="Account_Total"></xsl:value-of></B></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td align="right" style="color: black">&#0036;<xsl:value-of select="Account_Total"></xsl:value-of>
                                </td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
