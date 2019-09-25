<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" />
    <xsl:template match="/">
        <html>

        <head>
            <title>ABC Financial Startup</title>
            <style>
                h1 {
                    border-top-style: double;
                    border-top-color: #A9A9A9
                }

                img {
                    display: block;
                    margin-left: auto;
                    margin-right: auto;
                }

            </style>
        </head>

        <body>
            <h1>ABC Financial Startup</h1>
            <img src="financialstartup.jpg" />
            <p>We are a very young financial management company and we are proud of our clients.</p>

            <p>We started with 1 client a little more than 10 years ago and now we have
                <xsl:value-of select="count(//Client)" /> clients!</p>

            <p>These are our clients:
                <xsl:for-each select="Accounts/Client/Name">
                    <xsl:value-of select="First"></xsl:value-of>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="Last"></xsl:value-of>
                    <xsl:choose>
                        <xsl:when test="position()=last()">.</xsl:when>
                        <xsl:when test="position()=last()-1">, and </xsl:when>
                        <xsl:otherwise>, </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </p>

            <p>
                <xsl:value-of select="count(Accounts/Client[Years &gt; 7])" /> of our clients have been with us for more than 7 years!
            </p>

        </body>

        </html>

    </xsl:template>
</xsl:stylesheet>
