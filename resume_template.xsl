<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<xsl:for-each select="/resume">
 	 <h2><xsl:value-of select="@name" /></h2>
		<xsl:for-each select="*" >
			<div class="section {local-name()}">
				<h3><xsl:value-of select="local-name()"/></h3>
										<xsl:for-each select="*">
										<div class="listBox {@name | @type | @label}">
											
												<xsl:if test="@name"><h4><xsl:value-of select="@name" /></h4></xsl:if>
												<xsl:if test="@type"><h4><xsl:value-of select="@type" /></h4></xsl:if>
											
											<xsl:if test="@label"><label><xsl:value-of select="@label" /></label></xsl:if>
											
											<xsl:if test="@location">
												<small class="location">
													<xsl:value-of select="@location" />
												</small>
											</xsl:if>
											<xsl:if test="@startDate">
												<small class="dates">
													<xsl:value-of select="@startDate" /> - <xsl:if test="@endDate"><xsl:value-of select="@endDate" /></xsl:if>
												</small>
											</xsl:if>
											<xsl:if test="@position">
												<small class="position">
													<strong><xsl:value-of select="@position" /></strong>
												</small>
											</xsl:if>
											<xsl:if test="@concentration">
												<small class="cocentration">
													<strong><xsl:value-of select="@concentration" /></strong>
												</small>	
											</xsl:if>
											<xsl:if test="descendant-or-self::*[not(*)]">
												<ul>
													<xsl:for-each select="descendant-or-self::*[not(*)]">
														 <li>
														 	<xsl:choose><xsl:when test="@href"><a href="{@href}" alt="{@label}"><xsl:value-of select="." /></a></xsl:when>
															<xsl:otherwise>
														 		<xsl:value-of select="."/>
														 	</xsl:otherwise>
														 	</xsl:choose>
	 														<xsl:if test="@imgSrc">
		 														<!--<div class="thumb"><img src="{@imgSrc}" alt="{.}" width="100px" height="100px"/></div>-->
	 														</xsl:if>
														 </li>
													</xsl:for-each>
												</ul>
											 </xsl:if>
										</div>		
										</xsl:for-each>
								
					
			</div>
		</xsl:for-each>
	</xsl:for-each>
  
  
</xsl:template>

</xsl:stylesheet>