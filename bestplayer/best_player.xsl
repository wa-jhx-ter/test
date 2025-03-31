<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Player List</title>
            </head>
            <body>
                <h1>Player Information</h1>
                <xsl:for-each select="best_Player/Player">
                    <div>
                        <h2>
                            <xsl:value-of select="PlayerName/firstName" />
                            <xsl:text>&#160;</xsl:text>
                            <xsl:value-of select="PlayerName/lastName" />
                        </h2>
                        <p>
                            <strong>Domicile: </strong>
                            <br />
                            <xsl:value-of select="Domicile/Number" />
                            <br /> <!-- Use <br/> tag for line breaks -->
                            <xsl:value-of select="Domicile/Street" />
                            <br />
                            <xsl:value-of select="Domicile/City" />
                            <br />
                            <xsl:value-of select="Domicile/PostCode" />
                        </p>
                        <p>
                            <strong>Team: </strong>
                            <xsl:value-of select="Team" />
                        </p>
                        <p>
                            <strong>Gender: </strong>
                            <xsl:value-of select="Gender" />
                        </p>
                        <p>
                            <strong>Date of Birth: </strong>
                            <xsl:value-of select="DateOfBirth" />
                        </p>
                        <p>
                            <strong>Email: </strong>
                            <xsl:value-of select="Email" />
                        </p>
                        <p>
                            <strong>Positions: </strong>
                            <xsl:for-each select="Positions/Position">
                                <xsl:value-of select="." />
                                <xsl:if test="position() != last()">, </xsl:if>
                            </xsl:for-each>
                        </p>
                        <p>
                            <strong>Achievements:</strong>
                            <xsl:for-each select="Achievements/Acmt">
                                <Li><xsl:value-of select="." /></Li>
                            </xsl:for-each>
                        </p>
                        <hr />
                    </div>
                </xsl:for-each>
                <p>
                    <i> &#xA9; College Productions Ltd</i>
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>