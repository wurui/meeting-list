<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.meeting-list">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-meeting-list" ox-mod="meeting-list">
        	<ul>
	            <xsl:for-each select="data/user-event/i">
	            	<li>
	            		<h3>
	            			<a href="{LINK/detail}"><xsl:value-of select="title"/></a>
	            		</h3>
	            		<p>
	            			<label>时间</label><xsl:value-of select="starttime/y"/>-<xsl:value-of select="starttime/M"/>-<xsl:value-of select="starttime/d"/>&#160;<xsl:value-of select="starttime/H"/>:<xsl:value-of select="format-number(starttime/m,'00')"/>
	            		</p>
	            		<p>
	            			<label>地点</label><xsl:value-of select="spot"/>
	            		</p>
	            		<p>
	            			<label>规模</label><xsl:value-of select="scale"/>人
	            			<xsl:if test="organizer and organizer != ''">
				            	&#160;&#160;&#160;&#160;<label>组织者</label><xsl:value-of select="organizer"/>
			            	</xsl:if>
	            		</p>
	            		
	            	</li>
	            </xsl:for-each>
	        </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
