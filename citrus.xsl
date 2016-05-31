<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:METS="http://www.loc.gov/METS/"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:sobekcm="http://sobekrepository.org/schemas/sobekcm/"
    xmlns:lom="http://sobekrepository.org/schemas/sobekcm_lom"
    xmlns:vra="http://www.loc.gov/standards/vracore/vra.xsd"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" indent="yes" encoding="utf-8"/>
    <xsl:template match="/">
        <record>
            <dc:format>image/jpeg</dc:format>
            <dc:relation>Deeply Rooted</dc:relation>
            <dc:identifier>http://ufdc.ufl.edu/<xsl:value-of select="//sobekcm:BibID"/></dc:identifier>
            <dc:title><xsl:value-of select="//mods:title"/></dc:title>
            <xsl:for-each select="//mods:subject">
                <dc:subject><xsl:value-of select="mods:topic"/></dc:subject>
            </xsl:for-each>
            <xsl:for-each select="//mods:note">
                <dc:description><xsl:value-of select="."/></dc:description>
            </xsl:for-each>
            <xsl:for-each select="//mods:name">
                <dc:creator><xsl:value-of select="mods:namePart"/></dc:creator>
            </xsl:for-each>
            <dc:contributor>George A. Smathers Libraries</dc:contributor>
            <dc:publisher>
                <xsl:for-each select="//mods:publisher">
                    <xsl:value-of select="."/>
                </xsl:for-each>
            </dc:publisher>
            <dc:coverage.temporal><xsl:value-of select="//mods:dateIssued"/></dc:coverage.temporal>
            <xsl:for-each select="//mods:hierarchicalGeographic">
                <dc:coverage.spatial><xsl:value-of select="mods:state"/> -- <xsl:value-of select="mods:county"/> -- <xsl:value-of select="mods:city"/></dc:coverage.spatial>
            </xsl:for-each>
            <dc:rights>The University of Florida George A. Smathers Libraries respect the intellectual property rights of others and do not claim any copyright interest in this item. This item may be protected by copyright but is made available here under a claim of fair use (17 U.S.C. §107) for non-profit research and educational purposes. Users of this work have responsibility for determining copyright status prior to reusing, publishing or reproducing this item for purposes other than what is allowed by fair use or other copyright exemptions. Any reuse of this item in excess of fair use or other copyright exemptions requires permission of the copyright holder. The Smathers Libraries would like to learn more about this item and invite individuals or organizations to contact Special and Area Studies Collections (special@uflib.ufl.edu) with any additional information they can provide. Due to the copyright status of the materials, high resolution copies of the materials may only be made available in limited circumstances.</dc:rights>
            <dc:date>2015</dc:date>
        </record>
    </xsl:template> 
</xsl:stylesheet>