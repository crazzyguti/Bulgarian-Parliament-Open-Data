<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
	<xsl:output method="xml" indent="yes" encoding="UTF-8"/>

	<xsl:template match="/PleanaryControl">
		<xsl:copy>
			<xsl:apply-templates select="@*" />
			<xsl:if test="SittingProgram/@id">
				<xsl:attribute name="sittingProgramId">
					<xsl:value-of select="SittingProgram/@id"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="PleanarySitting/@id">
				<xsl:attribute name="pleanarySittingId">
					<xsl:value-of select="PleanarySitting/@id"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="PleanarySittingUrl"/>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>
