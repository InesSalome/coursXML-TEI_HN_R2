<?xml version="1.0" encoding="UTF-8"?>
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
    
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    <!-- Pour une sortie HTML -->
    
    <!-- Exemple de configuration d'une sortie HTML -->
    <xsl:template match="/">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <title>Mon édition numérique</title>
            </head>
            <body>
                <xsl:apply-templates select="body"/>
            </body>
        </html>
    </xsl:template>   
    
</xsl:stylesheet>