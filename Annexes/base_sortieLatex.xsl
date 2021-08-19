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
       
    <xsl:output method="text" encoding="UTF-8"/>
    <!-- Pour une sortie en Latex -->    
    
    <xsl:template match="TEI">
        <xsl:variable name="witfile">
            <xsl:value-of select="replace(base-uri(.), '.xml', '')"/>
            <!-- récupération du nom du fichier courant -->
        </xsl:variable>
        <xsl:result-document href="{concat($witfile, '.tex')}"> 
            \documentclass[12pt, a4paper]{report}
            \usepackage[utf8x]{inputenc}
            \usepackage[T1]{fontenc}
            \usepackage{lmodern}
            \usepackage{graphicx}
            \usepackage[french]{babel}
            \usepackage{reledmac}
            
            \setstanzaindents{0,1}
            \setcounter{stanzaindentsrepetition}{1}        
            
            \Xarrangement[A]{paragraph}
            \Xparafootsep{$\parallel$~}
            
            \begin{document}
            
            \firstlinenum{5}
            \linenumincrement{5}
            \linenummargin{right}
            \setline{<xsl:value-of select="//lg/l[1]/@n"/>}
            
            \beginnumbering
            \stanza 
            <xsl:apply-templates mode="verse"/>
            \endnumbering
            \end{document}
        </xsl:result-document>
    </xsl:template>
    
</xsl:stylesheet>