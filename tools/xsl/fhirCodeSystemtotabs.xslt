<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:f="http://hl7.org/fhir"
    xmlns="urn:ihe:iti:svs:2008"
    xmlns:set="http://exslt.org/sets"
    exclude-result-prefixes="xs"
    extension-element-prefixes="set"
    version="1.0">
    <xsl:output indent="yes" method="text" cdata-section-elements="shortdescription"/>
    <xsl:variable name='cs' select='document("codesystems.xml")'/>
    <xsl:template match="/"><![CDATA[<OID>;<Type fichier>;<Nom fichier>;<Description>;<URL fichier>;<Date valid>;<Date fin>;<Date MAJ>]]><xsl:text>&#10;</xsl:text>
    <xsl:value-of select="substring-after(/f:CodeSystem/f:identifier[f:system/@value='urn:ietf:rfc:3986']/f:value/@value,'oid:')" />;TRE;<xsl:value-of select="/f:CodeSystem/f:name/@value" />;;<xsl:value-of select="/f:CodeSystem/f:url/@value" />;<xsl:value-of select="/f:CodeSystem/f:extension/f:valuePeriod/f:start/@value" />; <xsl:value-of select="/f:CodeSystem/f:extension/f:valuePeriod/f:end/@value" />;<xsl:value-of select="/f:CodeSystem/f:meta/f:lastUpdated/@value"/>
<![CDATA[<OID>;<Code>;<Libellé>;<Libellé>;<synomyme>;<synomyme> ]]>
<xsl:for-each select='//f:concept'><xsl:value-of select="substring-after(//f:CodeSystem/f:identifier[f:system/@value='urn:ietf:rfc:3986']/f:value/@value,'oid:')" />;<xsl:value-of select="f:code/@value" />;<xsl:value-of select="f:display/@value" /><xsl:for-each select='f:designation'><xsl:value-of select="f:value/@value" />;</xsl:for-each>  
<xsl:text>&#10;</xsl:text>          
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
