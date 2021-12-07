<?xml version="1.0" encoding="UTF-8"?>
<!-- Attention à l'en-tête : prise en compte des espaces de nom d'XSL, de la TEI et d'XPath ; exclusion des préfixes TEI des résultats-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs tei"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" version="2.0">

    <!-- Définition du type de sortie -->
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <!-- Pour éviter les espaces non voulus. -->
    <xsl:strip-space elements="*"/>

    <xsl:template match="TEI">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="teiHeader">
        <xsl:copy-of select="."/>
    </xsl:template>

    <xsl:template match="text">
        <xsl:copy select="."/>
        <xsl:copy-of select="./front"/>
        <xsl:copy select=".//div[@type = 'act']">
            <xsl:attribute name="type">
                <xsl:value-of select="@type"/>
            </xsl:attribute>
            <xsl:attribute name="n">
                <xsl:value-of select="@n"/>
            </xsl:attribute>
            <xsl:for-each select=".//div[@type = 'scene']">
                <xsl:copy select=".">
                    <xsl:attribute name="type">
                        <xsl:value-of select="@type"/>
                    </xsl:attribute>
                    <xsl:attribute name="n">
                        <xsl:value-of select="@n"/>
                    </xsl:attribute>
                    <xsl:if test=".//head">
                        <xsl:copy-of select="head/text()"/>
                    </xsl:if>
                    <xsl:if test=".//stage[1]">
                        <xsl:element name="stage">
                            <xsl:attribute name="type">
                                <xsl:text>entrance</xsl:text>
                            </xsl:attribute>
                            <xsl:value-of select=".//stage[1]/text()"/>
                        </xsl:element>
                    </xsl:if>
                    <xsl:for-each select=".//sp">
                        <xsl:copy-of select="."/>
                    </xsl:for-each>
                </xsl:copy>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
