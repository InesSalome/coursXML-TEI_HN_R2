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
        <xsl:copy>
            <xsl:copy-of select="teiHeader"/>
            <xsl:copy select="text">
                <xsl:copy select="body">
                    <!-- apply-templates permet d'insérer des match dans la structurer arborescente du document de sortie. -->
                    <xsl:apply-templates select="lg[1]"/>
                </xsl:copy>
            </xsl:copy>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="lg[@type='sonnet']">
        <xsl:copy select=".">
            <xsl:copy select="./lg[2]">
            <xsl:copy-of select=".//l"/>
        </xsl:copy>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
