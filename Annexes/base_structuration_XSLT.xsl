<?xml version="1.0" encoding="UTF-8"?>
<!-- Instruction de traitement XML, version XML, type de codage de caractères -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0" 
        xpath-default-namespace="http://www.tei-c.org/ns/1.0"
        exclude-result-prefixes="xs tei"
        version="2.0"> 
<!-- Espaces de nom XSL, XML Schema et TEI
    Espace de nom de XPath par défaut tenant compte de la TEI
    exclude-result-prefixes="xs tei" pour éviter d'afficher en sortie les espaces de noms à chaque balise transformée
    Version d'XSLT utilisée -->
    
    <xsl:strip-space elements="*"/>
    <!-- Pour éviter les espaces non voulus. -->

    <xsl:template match="TEI">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="teiHeader">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="body">
        <xsl:element name="text">
            <xsl:copy>
                <xsl:apply-templates/>
            </xsl:copy>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>