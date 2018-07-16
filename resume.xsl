<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" indent="yes" />
	<xsl:template match="/">
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html>
			<head>
		  		<title>COMP466 Assignment 1 TMA1 Part 1</title>
		  		<meta charset="utf-8"/>
		  		<link href='https://fonts.googleapis.com/css?family=Lato:400,300,100,700,900' rel='stylesheet' type='text/css'/>
		  		<link rel="stylesheet" type="text/css" href="main.css"/>
			</head>
		  	<body style="font-family: 'Lato', sans-serif;">
		  		<div style="font-size:30pt;text-align: center" class="myName">
		  			<xsl:value-of select="resume/header/name"/>
		  		</div>

		  		<div style="text-align: center" class="myAddress">
		  			<xsl:value-of select="resume/header/address/."/>
		  		</div>
		  		<div style="text-align: center" class="myContactInfo">
		  			<xsl:value-of select="resume/header/contact/."/>
		  		</div>

		  		<xsl:for-each select="resume/content">
			  		<h2>Objective</h2>
			  		<p><xsl:value-of select="./objective"/></p>
			  		<h2>Skills</h2>
			  			<h3>Technical</h3>
			  				<h4>Data Tools</h4>
			  					<p><xsl:value-of select="./skills/technical/dataTools"/></p>
			  				<h4>Programming</h4>
			  					<p><xsl:value-of select="./skills/technical/programming"/></p>
			  				<h4>Operating System</h4>
			  					<p><xsl:value-of select="./skills/technical/operatingSystem"/></p>
		  		</xsl:for-each>

		  		<xsl:for-each select="resume/content/education">
		  			<h2>Education</h2>
		  				<h3><xsl:value-of select="./degree"/></h3>
		  				<xsl:for-each select="./university">
		  					<h4><xsl:value-of select='.'/></h4>
		  				</xsl:for-each>
		  		</xsl:for-each>

		  		<h2>Work Experience</h2>
		  		<xsl:for-each select="resume/content/work/job">
		  			<h4><xsl:value-of select='./title'/></h4>
		  			<ul>
		  				<xsl:for-each select="./description/bullet">
		  					<li><xsl:value-of select='.'/></li>
		  				</xsl:for-each>
		  			</ul>
		  		</xsl:for-each>
		  	</body>
		</html>
	</xsl:template>

</xsl:stylesheet>