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
            <xsl:apply-templates select="teiHeader"/>
                <text>
                    <body>
                        <xsl:apply-templates select="descendant::body"/>
                    </body>
                </text>           
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="teiHeader">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="descendant::body">
            <xsl:apply-templates select="./lg"/>               
    </xsl:template>
    
    <xsl:template match="lg">
        <xsl:copy>
                <xsl:for-each select="./lg">
                    <xsl:copy>
                        <xsl:apply-templates select="descendant::l"/>
                    </xsl:copy>
                </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="l">
        <xsl:element name="l">
            <xsl:attribute name="n">
                <xsl:number count="l" level="any"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
