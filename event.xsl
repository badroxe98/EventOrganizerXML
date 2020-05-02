<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link href="style.css" rel="stylesheet" type="text/css" media="all"/>
                <title>Gestion des événements</title>
                <style>
                </style>
            </head>
            <body>
                <h2>Evénement</h2>
                <div>
                    <xsl:for-each select="events/event">
                        <div>
                            <ul>
                                <li>
                                    <b>Nom d'événement: </b>
                                    <xsl:value-of select="event_name"/>
                                </li>
                                <li>
                                    <b>Type d'événement: </b>
                                    <xsl:value-of select="type_of_event"/>
                                </li>
                                <li>
                                    <b>Description: </b>
                                    <xsl:value-of select="description"/>
                                </li>
                            </ul>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
