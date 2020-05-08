<?xml version="1.0" encoding ='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method ='html'/>
<xsl:template match ='/PurchaseOrder'>
<xsl:apply-templates select='poNumber'/>
<xsl:apply-templates select='poDate'/>
<xsl:apply-templates select='sellter'/>
<xsl:apply-templates select='buyer'/>
<xsl:apply-templates select='deLiveDate'/>
<xsl:apply-templates select='shipTo'/>
<xsl:apply-templates select='billTo'/>
<xsl:apply-templates select='products'/>
<xsl:apply-templates select='inStructions'/>
</xsl:template>
<xsl:template match='poNumber'>
<h1 align ='center'>David Enterprises Inc., Carolina West ,USA</h1>
Purchase Order Number:
<xslLvalue-of select='.'/>
<br/>
</xsl:template>
<xsl:template match ='poDate'>
Puchase Order Date:
<xsl:value-of select='.'/>
<br/>
</xsl:template>
<xsl:template match ='sellter'>
Seller:
<xsl:value-of select='.'/>
<br/>
</xsl:template>
<xsl:template match ='buyer'>
Buyer:
<xsl:value-of select='.'/>
<br/>
</xsl:template>
<xsl:template match ='deLiveDate'>
Dalivery Date:
<xsl:value-of select='.'/>
<br/>
</xsl:template>
<xsl:template match ='shipTo'>
<h3>Shipping Details</h3>
Company Name:
<xsl:value-of select='Name'/>
<br/>
Street:
<xsl:value-of select='Street'/>
<br/>
CityZip:
<xsl:value-of select='cityZip'/>
<br/>
Country:
<xsl:value-of select='country'/>
</xsl:template>
<xsl:template match ='billTo'>
<h3>Billing Details</h3>
Company Name:
<xsl:value-of select='Name'/>
<br/>
Street:
<xsl:value-of select='Street'/>
<br/>
CityZip:
<xsl:value-of select='cityZip'/>
<br/>
Country:
<xsl:value-of select='country'/>
</xsl:template>
<xsl:template match ='product'>
<xsl:value-of select = 'name'/>
<xsl:value-of select = 'quantity'/>
<xsl:value-of select = 'price'/>
</xsl:template>
<xsl:template match ='inStruction'>
<br/>
<xsl:value-of select='.'/>
</xsl:template>
</xsl:stylesheet>