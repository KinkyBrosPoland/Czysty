<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop"><!-- (envelope, 6846f899e0d378.44714940.6)-->
	<iaixsl:variable name="priceTypeVat"><iaixsl:if test="(/shop/basket/@login and not(/shop/client_data/@uses_vat='false') or not(/shop/basket/@login)) and not(/shop/contact/owner/@vat_registered = 'false') and not(/shop/page/@price_type = 'hidden')">true</iaixsl:if></iaixsl:variable>
	<iaixsl:variable name="priceTypeText"><iaixsl:if test="not($priceTypeVat = '')"><iaixsl:choose><iaixsl:when test="/shop/page/@price_type = 'net'"> iai_i18n:[bmV0dG8=]</iaixsl:when><iaixsl:when test="/shop/page/@price_type = 'gross'"> iai_i18n:[YnJ1dHRv]</iaixsl:when></iaixsl:choose></iaixsl:if></iaixsl:variable>
	<iaixsl:variable name="meta_langcode_iso639">translatable</iaixsl:variable>
	<iaixsl:variable name="html5_layout">1</iaixsl:variable>
	<iaixsl:variable name="asyncJS"/>
	<iaixsl:variable name="themeColor">#0090f6</iaixsl:variable>
	<iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
		<iaixsl:text disable-output-escaping="yes">&lt;html lang=&quot;</iaixsl:text><iaixsl:value-of select="/shop/language/option[@selected = 'true']/@name"/><iaixsl:text disable-output-escaping="yes">&quot;</iaixsl:text><iaixsl:text disable-output-escaping="yes"> class=&quot;</iaixsl:text><iaixsl:if test="(/shop/page/@type = 'prepaid' and /shop/page/prepaid/details/@msg = 'order') or /shop/page/@type = 'order-nonstandardized' or /shop/page/@type = 'order1' or /shop/page/@type = 'order2' or /shop/page/@type = 'pickup-sites' or /shop/page/@type = 'place-order' or (/shop/page/@type = 'login' and /shop/page/login/response/@type = 'no login') or /shop/page/@type = 'client-new' or /shop/page/@type = 'returns-open' or /shop/page/@type = 'rma-open'"><iaixsl:text disable-output-escaping="yes">order_process </iaixsl:text></iaixsl:if><iaixsl:if test="/shop/page/@type = 'place-order'"> --place-order-page </iaixsl:if><iaixsl:if test="/shop/page/@type = 'return'"><iaixsl:value-of select="/shop/page/return/@type"/><iaixsl:text disable-output-escaping="yes"> </iaixsl:text></iaixsl:if><iaixsl:if test="/shop/basket/@toshippingfree != ''"><iaixsl:text disable-output-escaping="yes">--freeShipping </iaixsl:text></iaixsl:if><iaixsl:if test="/shop/rebatecode/@code"><iaixsl:text disable-output-escaping="yes">--rabateCode </iaixsl:text></iaixsl:if><iaixsl:if test="not($priceTypeVat = '')"><iaixsl:text disable-output-escaping="yes">--vat --</iaixsl:text><iaixsl:value-of select="/shop/page/@price_type"/><iaixsl:text disable-output-escaping="yes"> </iaixsl:text></iaixsl:if><iaixsl:if test="/shop/mask/prices/@hide_percentage_discounts = 'true'"><iaixsl:text disable-output-escaping="yes">--hide-percentage-discounts </iaixsl:text></iaixsl:if><iaixsl:text disable-output-escaping="yes">&quot;</iaixsl:text><iaixsl:text disable-output-escaping="yes"> &gt;</iaixsl:text>
		<iaixsl:if test="$meta_langcode_iso639"><iaixsl:attribute name="lang"><iaixsl:value-of select="$meta_langcode_iso639"/></iaixsl:attribute></iaixsl:if>
		<head>
			
			
			<iaixsl:if test="/shop/page/@type = 'main' and count(commercial_banner/link[not(html)]) &gt; 0">
				<iaixsl:choose>
					<iaixsl:when test="/shop/commercial_banner/link[1]/image">
						<link rel="preload" as="image" fetchpriority="high">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/commercial_banner/link[1]/image/@src"/></iaixsl:attribute>
						</link>
					</iaixsl:when>
					<iaixsl:otherwise>
						<link rel="preload" as="image" fetchpriority="high" media="(max-width: 756.9px)">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/commercial_banner/link[1]/image_mobile/@src"/></iaixsl:attribute>
						</link>
						<link rel="preload" as="image" fetchpriority="high" media="(min-width: 757px) and (max-width: 978.9px)">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/commercial_banner/link[1]/image_tablet/@src"/></iaixsl:attribute>
						</link>
						<link rel="preload" as="image" fetchpriority="high" media="(min-width: 979px)">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/commercial_banner/link[1]/image_desktop/@src"/></iaixsl:attribute>
						</link>
					</iaixsl:otherwise>
				</iaixsl:choose>
			</iaixsl:if>
			
			<iaixsl:if test="/shop/page/@type = 'search' and /shop/page/products/display_mode/@active = 'normal' and /shop/page/products/product">
				<link rel="preload" as="image" fetchpriority="high" media="(max-width: 420px)">
					<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/product[1]/icon_small"/></iaixsl:attribute>
				</link>
				<link rel="preload" as="image" fetchpriority="high" media="(min-width: 420.1px)">
					<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/product[1]/icon"/></iaixsl:attribute>
				</link>
				<iaixsl:if test="/shop/page/products/product[2]">
					<link rel="preload" as="image" fetchpriority="high" media="(max-width: 420px)">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/product[2]/icon_small"/></iaixsl:attribute>
					</link>
					<link rel="preload" as="image" fetchpriority="high" media="(min-width: 420.1px)">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/product[2]/icon"/></iaixsl:attribute>
					</link>
				</iaixsl:if>
			</iaixsl:if>
			
			<iaixsl:if test="/shop/page/@type = 'projector'">
				<link rel="preload" as="image" fetchpriority="high">
					<iaixsl:choose>
						<iaixsl:when test="count(/shop/page/projector/product/enclosures/images/enclosure) &gt; 0">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@medium"/></iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]/enclosures/images/enclosure[1]/@medium"/></iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/icon"/></iaixsl:attribute>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</link>
			</iaixsl:if>
			<meta name="viewport" content="initial-scale = 1.0, maximum-scale = 5.0, width=device-width, viewport-fit=cover"/>
			<iaixsl:variable name="meta_breadcrumb">
				<iaixsl:if test="(page/@type='search') or (page/@type='navigation') or (page/@type='projector')">
					<iaixsl:choose>
						<iaixsl:when test="page/@type='navigation'">
							<iaixsl:for-each select="bc/item"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:for-each select="bc/item[not(position() = last())]"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
						</iaixsl:otherwise>
					</iaixsl:choose>
					
				</iaixsl:if>
			</iaixsl:variable>
			<iaixsl:variable name="meta_breadcrumb_full">
				<iaixsl:if test="(page/@type='search') or (page/@type='navigation') or (page/@type='projector')">
					<iaixsl:for-each select="bc/item"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
					
				</iaixsl:if>
			</iaixsl:variable>
			<iaixsl:variable name="meta_subcategories">
				<iaixsl:if test="((page/@type='search') or (page/@type='navigation') or (page/@type='projector')) and (/shop/navigation/current/@ni)">
					<iaixsl:for-each select="navigation/descendant-or-self::item[@ni=/shop/navigation/current/@ni]/item"><iaixsl:value-of select="@name"/>, </iaixsl:for-each>
				</iaixsl:if>
			</iaixsl:variable>
			<iaixsl:variable name="meta_variable_emulate_ie">IE=edge</iaixsl:variable>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
			<iaixsl:if test="$meta_variable_emulate_ie">
				<meta http-equiv="X-UA-Compatible"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_emulate_ie"/></iaixsl:attribute></meta>
			</iaixsl:if>
			<iaixsl:choose>
				<iaixsl:when test="page/@search_title">
					<title><iaixsl:value-of select="page/@search_title" disable-output-escaping="yes"/></title>
				</iaixsl:when>
				<iaixsl:when test="page/@projector_title">
					<title><iaixsl:value-of select="page/@projector_title" disable-output-escaping="yes"/> | <iaixsl:value-of select="$meta_breadcrumb_full" disable-output-escaping="yes"/><iaixsl:value-of select="page/@title" disable-output-escaping="yes"/></title>
				</iaixsl:when>
				<iaixsl:otherwise>
					<title><iaixsl:value-of select="$meta_breadcrumb" disable-output-escaping="yes"/><iaixsl:value-of select="page/@title" disable-output-escaping="yes"/><iaixsl:if test="page/@title2"> | <iaixsl:value-of select="page/@title2" disable-output-escaping="yes"/></iaixsl:if></title>
				</iaixsl:otherwise>
			</iaixsl:choose>
			<iaixsl:choose>
				<iaixsl:when test="page/@search_keywords">
					<meta name="keywords"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@search_keywords"/></iaixsl:attribute></meta>
				</iaixsl:when>
				<iaixsl:when test="page/@projector_keywords">
					<meta name="keywords"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@projector_keywords"/> | <iaixsl:value-of select="$meta_breadcrumb_full"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@keywords"/></iaixsl:attribute></meta>
				</iaixsl:when>
				<iaixsl:when test="not(page/@keywords='')">
					<meta name="keywords">
						<iaixsl:attribute name="content">
							<iaixsl:value-of select="$meta_breadcrumb_full"/>
							<iaixsl:value-of select="$meta_subcategories"/>
							<iaixsl:choose>
								<iaixsl:when test="not(page/@keywords='') ">
									<iaixsl:value-of select="page/@keywords"/>
								</iaixsl:when>
								<iaixsl:otherwise>

								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:attribute>
					</meta>
				</iaixsl:when>
				<iaixsl:otherwise>
				</iaixsl:otherwise>
			</iaixsl:choose>
			<iaixsl:choose>
				<iaixsl:when test="page/@search_description">
					<meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@search_description"/></iaixsl:attribute></meta>
				</iaixsl:when>
				<iaixsl:when test="page/@projector_description">
					<meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@projector_description"/> | <iaixsl:value-of select="$meta_breadcrumb_full"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@description"/></iaixsl:attribute></meta>
				</iaixsl:when>
				<iaixsl:otherwise>
					<meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_breadcrumb"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@description"/></iaixsl:attribute></meta>
				</iaixsl:otherwise>
			</iaixsl:choose>

			<link rel="shortcut icon" href="/gfx/translatable/favicon.ico" />
			<iaixsl:choose>
				<iaixsl:when test="/shop/mask/@scheme_color">
					<meta name="theme-color"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
					<meta name="msapplication-navbutton-color"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
					<meta name="apple-mobile-web-app-status-bar-style"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
				</iaixsl:when>
				<iaixsl:when test="$themeColor">
					<meta name="theme-color"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
					<meta name="msapplication-navbutton-color"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
					<meta name="apple-mobile-web-app-status-bar-style"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
				</iaixsl:when>
			</iaixsl:choose>

			<iaixsl:choose>
				<iaixsl:when test="$asyncJS">
					<iaixsl:choose>
						<iaixsl:when test="/shop/@preview &gt; 0">
							<link rel="preload stylesheet" as="style"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
						</iaixsl:when>
						<iaixsl:otherwise>
							
						</iaixsl:otherwise>
					</iaixsl:choose>
				</iaixsl:when>
				<iaixsl:otherwise>
					<iaixsl:choose>
						<iaixsl:when test="/shop/@preview &gt; 0">
							<link rel="preload stylesheet" as="style"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
						</iaixsl:when>
						<iaixsl:otherwise>
							
						</iaixsl:otherwise>
					</iaixsl:choose>
				</iaixsl:otherwise>
			</iaixsl:choose>

      
      
<iaixsl:choose>
    <iaixsl:when test="/shop/@preview &gt; 0"><link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/common_style.css?r=1765442856</iaixsl:attribute></link></iaixsl:when>
    <iaixsl:otherwise><link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/common_style.css.gzip?r=1765442856</iaixsl:attribute></link></iaixsl:otherwise>
</iaixsl:choose>


			
			<iaixsl:if test="/shop/page/@type = 'projector' and (count(/shop/page/projector/product/enclosures/images/enclosure) &gt; 0 or /shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon])">
				<style>
					<iaixsl:choose>
						<iaixsl:when test="count(/shop/page/projector/product/enclosures/images/enclosure) &gt; 0">
							#photos_slider[data-skeleton] .photos__link:before {
								padding-top: calc(min((<iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@medium_height"/>/<iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@medium_width"/> * 100%), <iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@medium_height"/>px));
							}
							@media (min-width: 979px) {.photos__slider[data-skeleton] .photos__figure:not(.--nav):first-child .photos__link {
								max-height: <iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@medium_height"/>px;
							}}
						</iaixsl:when>
						<iaixsl:when test="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
							#photos_slider[data-skeleton] .photos__link:before {
								padding-top: calc(min(<iaixsl:value-of select="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]/enclosures/images/enclosure[1]/@medium_height"/>/<iaixsl:value-of select="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]/enclosures/images/enclosure[1]/@medium_width"/> * 100%), <iaixsl:value-of select="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]/enclosures/images/enclosure[1]/@medium_height"/>px));
							}
							@media (min-width: 979px) {.photos__slider[data-skeleton] .photos__figure:not(.--nav):first-child .photos__link {
								max-height: <iaixsl:value-of select="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]/enclosures/images/enclosure[1]/@medium_height"/>px;
							}}
						</iaixsl:when>
					</iaixsl:choose>
				</style>
			</iaixsl:if>
			<script>var app_shop={urls:{prefix:&apos;data=&quot;/gfx/&apos;.replace(&apos;data=&quot;&apos;, &apos;&apos;)+&apos;<iaixsl:value-of select="language/@id"/>/&apos;,graphql:&apos;/graphql/v1/&apos;},vars:{meta:{viewportContent:&apos;initial-scale = 1.0, maximum-scale = 5.0, width=device-width, viewport-fit=cover&apos;},priceType:&apos;<iaixsl:choose><iaixsl:when test="/shop/page/@price_type = 'hidden'">gross</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="/shop/page/@price_type"/></iaixsl:otherwise></iaixsl:choose>&apos;,priceTypeVat:<iaixsl:choose><iaixsl:when test="not($priceTypeVat = '')">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,productDeliveryTimeAndAvailabilityWithBasket:false,geoipCountryCode:&apos;<iaixsl:value-of select="/shop/@geoip_country_code"/>&apos;,fairShopLogo: { enabled: <iaixsl:choose><iaixsl:when test="/shop/@trust_level = '1'">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>, image: &apos;<iaixsl:choose><iaixsl:when test="/shop/@trust_level = '1'">/gfx/standards/superfair_light.svg</iaixsl:when><iaixsl:otherwise>/gfx/standards/safe_light.svg</iaixsl:otherwise></iaixsl:choose>&apos;},currency:{id:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@id"/>&apos;,symbol:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>&apos;,country:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@country"/>&apos;,format:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_format"/>&apos;,beforeValue:<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_before_value"/>,space:<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_space"/>,decimalSeparator:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_decimal_separator"/>&apos;,groupingSeparator:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_grouping_separator"/>&apos;},language:{id:&apos;<iaixsl:value-of select="/shop/language/option[@selected='true']/@id"/>&apos;,symbol:&apos;<iaixsl:value-of select="/shop/language/option[@selected='true']/@name"/>&apos;,name:&apos;<iaixsl:value-of select="/shop/language/@name"/>&apos;},omnibus:{enabled:<iaixsl:choose><iaixsl:when test="/shop/@omnibus = 1">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,rebateCodeActivate:<iaixsl:choose><iaixsl:when test="/shop/rebatecode/@activate_omnibus = 'true'">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,hidePercentageDiscounts:<iaixsl:choose><iaixsl:when test="/shop/mask/prices/@hide_percentage_discounts = 'true'">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,},},txt:{priceTypeText:&apos;<iaixsl:value-of select="$priceTypeText"/>&apos;,},fn:{},fnrun:{},files:[],graphql:{}};const getCookieByName=(name)=&gt;{const value=`; ${document.cookie}`;const parts = value.split(`; ${name}=`);if(parts.length === 2) return parts.pop().split(&apos;;&apos;).shift();return false;};if(getCookieByName(&apos;freeeshipping_clicked&apos;)){document.documentElement.classList.remove(&apos;--freeShipping&apos;);}if(getCookieByName(&apos;rabateCode_clicked&apos;)){document.documentElement.classList.remove(&apos;--rabateCode&apos;);}function hideClosedBars(){const closedBarsArray=JSON.parse(localStorage.getItem(&apos;closedBars&apos;))||[];if(closedBarsArray.length){const styleElement=document.createElement(&apos;style&apos;);styleElement.textContent=`${closedBarsArray.map((el)=&gt;`#${el}`).join(&apos;,&apos;)}{display:none !important;}`;document.head.appendChild(styleElement);}}hideClosedBars();</script>
			<iaixsl:variable name="projector_script_bottom">true</iaixsl:variable>
			<iaixsl:if test="not(/shop/page/@type = 'main') and not(/shop/page/@type = 'search') and not(/shop/page/@type = 'place-order') and not(/shop/page/@type = 'noproduct') and not($projector_script_bottom and /shop/page/@type = 'projector')">
				<script src="/gfx/translatable/jquery.js.gzip?r=1765442856"></script>
				<iaixsl:choose>
					<iaixsl:when test="/shop/@preview &gt; 0">
						<script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
					</iaixsl:when>
					<iaixsl:otherwise>
						
					</iaixsl:otherwise>
				</iaixsl:choose>
				
				
<iaixsl:choose>
    <iaixsl:when test="/shop/@preview &gt; 0"><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/common_shop.js?r=1765442856</iaixsl:attribute></script></iaixsl:when>
    <iaixsl:otherwise><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/common_shop.js.gzip?r=1765442856</iaixsl:attribute></script></iaixsl:otherwise>
</iaixsl:choose>

				
				<script src="/gfx/translatable/orderdetails_payments.js.gzip?r=1765442856"></script>
			</iaixsl:if>
			
			
			<iaixsl:text disable-output-escaping="yes"></iaixsl:text>
			<iaixsl:variable name="meta_variable_expires">never</iaixsl:variable>
			<iaixsl:variable name="meta_variable_distribution">global</iaixsl:variable>
			<iaixsl:variable name="meta_variable_rating">general</iaixsl:variable>
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/@meta_robots">
					<meta name="robots">
						<iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/@meta_robots"/></iaixsl:attribute>
					</meta>
				</iaixsl:when>
				<iaixsl:otherwise>
					<meta name="robots">
						<iaixsl:attribute name="content">INDEX,FOLLOW</iaixsl:attribute>
					</meta>
				</iaixsl:otherwise>
			</iaixsl:choose>
			<iaixsl:if test="not($html5_layout)">
				<iaixsl:if test="$meta_variable_expires">
					<meta name="expires"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_expires"/></iaixsl:attribute></meta>
				</iaixsl:if>
				<iaixsl:if test="$meta_variable_distribution">
					<meta name="distribution"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_distribution"/></iaixsl:attribute></meta>
				</iaixsl:if>
			</iaixsl:if>
			<iaixsl:if test="$meta_variable_rating">
				<meta name="rating"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_rating"/></iaixsl:attribute></meta>
			</iaixsl:if>
			<iaixsl:if test="/shop/iai/@meta_author">
				<meta name="Author">
					<iaixsl:attribute name="content"><iaixsl:value-of select="/shop/iai/@meta_author"/></iaixsl:attribute>
				</meta>
			</iaixsl:if>
			<iaixsl:if test="page/facebook_comments">
				<meta property="fb:admins">
					<iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/facebook_comments/@admin_id"/></iaixsl:attribute>
				</meta>
				<meta property="fb:app_id">
					<iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/facebook_comments/@app_id"/></iaixsl:attribute>
				</meta>
			</iaixsl:if>
			<iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_meta_tags')"/>
		</head>
		<iaixsl:variable name="meta_body_id"/>
		<iaixsl:text disable-output-escaping="yes">&lt;body</iaixsl:text><iaixsl:if test="action/set_render/item/@name = 'popup'"><iaixsl:text disable-output-escaping="yes"> class=&quot;popup&quot; </iaixsl:text></iaixsl:if><iaixsl:text disable-output-escaping="yes">&gt;</iaixsl:text>

		<iaixsl:if test="$meta_body_id">
			<iaixsl:attribute name="id"><iaixsl:value-of select="$meta_body_id"/></iaixsl:attribute>
		</iaixsl:if>
		<iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_top_scripts')"/>
	</iaixsl:if>
	<iaixsl:variable name="valuepricedesc">iai_i18n:[Q2VuYSBkbGEgQ2llYmll]</iaixsl:variable>
	<iaixsl:variable name="discountpricedesc">iai_i18n:[UHJ6ZWNlbmE=]</iaixsl:variable>
	<iaixsl:variable name="promopricedesc">iai_i18n:[UHJvbW9jamE=]</iaixsl:variable>
	<iaixsl:variable name="detalpricedesc">iai_i18n:[Q2VuYSBkZXRhbGljem5h]</iaixsl:variable>
	<iaixsl:variable name="rebatepricedesc">iai_i18n:[UmFiYXQ=]</iaixsl:variable>
	<iaixsl:variable name="nettopricedesc">iai_i18n:[Q2VuYSBuZXR0bw==]</iaixsl:variable>
	<iaixsl:variable name="signbeforeprice">false</iaixsl:variable>
	<iaixsl:variable name="signbetweenpricecurrency"> </iaixsl:variable>
	<iaixsl:variable name="showcomparelink">1</iaixsl:variable>

	<!-- (layout, 6842f4db17e1f3.74318533.2)-->
	<div id="container">
		<iaixsl:attribute name="class"><iaixsl:value-of select="page/@type"/>_page <iaixsl:if test="/shop/page/login/@shop_registration = 'true'">registration_page </iaixsl:if>container max-width-1200</iaixsl:attribute>

		<iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'head')">
			<header>
				<iaixsl:attribute name="class"><iaixsl:if test="count(commercial_banner/link) &gt; 0"> commercial_banner</iaixsl:if></iaixsl:attribute>
				<!-- (menu_javascript, 60dd8e8cd12ec2.99578279.36)-->
  <script class="ajaxLoad">app_shop.vars.vat_registered=&quot;<iaixsl:value-of select="/shop/contact/owner/@vat_registered"/>&quot;;app_shop.vars.currency_format=&quot;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_format"/>&quot;;<iaixsl:if test="/shop/currency/option[@selected='true']/@currency_before_value">app_shop.vars.currency_before_value=<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_before_value"/>;</iaixsl:if><iaixsl:if test="/shop/currency/option[@selected='true']/@currency_space">app_shop.vars.currency_space=<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_space"/>;</iaixsl:if>app_shop.vars.symbol=&quot;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>&quot;;app_shop.vars.id=&quot;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@id"/>&quot;;app_shop.vars.baseurl=&quot;<iaixsl:value-of select="/shop/@baseurl"/>&quot;;app_shop.vars.sslurl=&quot;<iaixsl:value-of select="/shop/@sslurl"/>&quot;;app_shop.vars.curr_url=&quot;<iaixsl:value-of select="/shop/navigation/current/@curr_url"/>&quot;;<iaixsl:if test="/shop/basket/@login">app_shop.vars.logged=1;</iaixsl:if>var currency_decimal_separator=&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_decimal_separator"/>&apos;;var currency_grouping_separator=&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_grouping_separator"/>&apos;;<iaixsl:if test="/shop/form_data/upload_file/blacklist_extension/param">app_shop.vars.blacklist_extension=[<iaixsl:for-each select="/shop/form_data/upload_file/blacklist_extension/param"><iaixsl:if test="not(position()=1)">,</iaixsl:if>&quot;<iaixsl:value-of select="@type"/>&quot;</iaixsl:for-each>];</iaixsl:if><iaixsl:if test="/shop/form_data/upload_file/blacklist_mime/param">app_shop.vars.blacklist_mime=[<iaixsl:for-each select="/shop/form_data/upload_file/blacklist_mime/param"><iaixsl:if test="not(position()=1)">,</iaixsl:if>&quot;<iaixsl:value-of select="@type"/>&quot;</iaixsl:for-each>];</iaixsl:if><iaixsl:if test="/shop/contact/link/@url">app_shop.urls.contact=&quot;<iaixsl:value-of select="/shop/contact/link/@url"/>&quot;;</iaixsl:if></script>
  <div id="viewType" style="display:none"/>
<!-- (menu_suggested_shop_for_language, 60dd8e83bf9068.60920781.8)-->
	<iaixsl:if test="count(/shop/select_language/language/option) &gt; 1 and /shop/select_language/@show_select = 'true' and not(/shop/select_language/@country_first = 'true')">
		<div class="redirection">
		  <span class="redirection__close"/>
			<div class="redirection__suggestions row">
				<div class="redirection__wrapper --title col-12 col-md-6 ">
					<strong class="redirection__title"><span>Choose your language</span><span>and country</span></strong>
				</div>
				<div class="redirection__wrapper --configurator col-12 col-md-6">
					<div class="redirection__selector --language">
						<iaixsl:for-each select="/shop/select_language/language">
							<div class="redirection__language">
								<iaixsl:if test="option/@selected">
									<iaixsl:attribute name="class">redirection__language --active</iaixsl:attribute>
								</iaixsl:if>
								<strong>
									<span>
										<iaixsl:attribute name="class">flag flag_<iaixsl:value-of select="@id"/></iaixsl:attribute>
									</span>
									<span class="redirection__language_name"><iaixsl:value-of select="@name"/></span>
								</strong>
								<div class="redirection__selector --country">
									<iaixsl:if test="count(option) = 1 and option = ''">
										<iaixsl:attribute name="data-link"><iaixsl:value-of select="option/@site"/></iaixsl:attribute>
										<iaixsl:attribute name="class">redirection__selector --country --any</iaixsl:attribute>
									</iaixsl:if>
									<iaixsl:for-each select="option[not(. = '')]">
										<div class="f-group --radio --small">
											<input type="radio" name="shop_country" class="f-control">
												<iaixsl:attribute name="id"><iaixsl:value-of select="../@id"/>_<iaixsl:value-of select="."/></iaixsl:attribute>
												<iaixsl:attribute name="data-link"><iaixsl:value-of select="@site"/></iaixsl:attribute>
												<iaixsl:if test="@selected">
													<iaixsl:attribute name="checked">true</iaixsl:attribute>
												</iaixsl:if>
											</input>
											<label class="f-label">
												<iaixsl:attribute name="for"><iaixsl:value-of select="../@id"/>_<iaixsl:value-of select="."/></iaixsl:attribute>
												<iaixsl:value-of select="."/>
											</label>
										</div>
									</iaixsl:for-each>
								</div>
							</div>
						</iaixsl:for-each>
					</div>
					<form class="redirection__submit" action="" method="post">
					  <iaixsl:if test="/shop/select_language/language/option[@selected = 'true']">
							<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/select_language/language/option[@selected = 'true']/@site"/></iaixsl:attribute>
						</iaixsl:if>
					  <input type="hidden" name="redirection" value="redirected"/>
						<a class="redirection__button btn --medium --solid" href="#redirect">
							<iaixsl:attribute name="title">OK</iaixsl:attribute>
							OK
						</a>
					</form>
				</div>
			</div>
		</div>
	</iaixsl:if>

<!-- (menu_skip, 6810b4b52b7321.12194129.2)-->
	<div id="menu_skip" class="menu_skip">
		<a href="#layout" class="btn --outline --medium menu_skip__link --layout">iai_i18n:[UHJ6ZWpkxbogZG8gemF3YXJ0b8WbY2kgc3Ryb255]</a>
		<a href="#menu_categories" class="btn --outline --medium menu_skip__link --menu">iai_i18n:[UHJ6ZWpkxbogZG8ga2F0ZWdvcmlp]</a>
	</div>
<!-- (bars_top, 62e7a5fa10fd24.34671527.3)-->
	<iaixsl:if test="/shop/page/bars/bar[@position = 'top']">
		<div class="bars_top bars">
			<iaixsl:for-each select="/shop/page/bars/bar[@position = 'top']">
				<div class="bars__item">
					<iaixsl:attribute name="id">bar<iaixsl:value-of select="@id"/></iaixsl:attribute>
					<iaixsl:if test="@possibilityToClose = 'true'">
						<iaixsl:attribute name="data-close">true</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:if test="@fixed = 'true'">
						<iaixsl:attribute name="data-fixed">true</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:attribute name="style">--background-color:<iaixsl:value-of select="@backgroundColor"/>;--border-color:<iaixsl:value-of select="@borderColor"/>;--font-color:<iaixsl:value-of select="@fontColor"/>;</iaixsl:attribute>
					<div class="bars__wrapper">
						<div class="bars__content"><iaixsl:value-of disable-output-escaping="yes" select="."/></div>
						<iaixsl:if test="@possibilityToClose = 'true'">
							<a href="#closeBar" class="bars__close">
							  <iaixsl:attribute name="aria-label">iai_i18n:[WmFta25pag==]</iaixsl:attribute>
							</a>
						</iaixsl:if>
					</div>
				</div>
			</iaixsl:for-each>
		</div>
		<script>document.documentElement.style.setProperty(&apos;--bars-height&apos;,`${document.querySelector(&apos;.bars_top&apos;).offsetHeight}px`);</script>
	</iaixsl:if>
<!-- (menu_rebates_codes, 61b0b1afcdfdf5.19170359.4)-->
	<iaixsl:variable name="disableRebatesCodes"/>
	<iaixsl:if test="not($disableRebatesCodes) and /shop/rebatecode/@code">
		<div id="rabateCode" class="rabateCode">
			<span class="rabateCode__info">iai_i18n:[QWt0eXdueSBrb2QgcmFiYXRvd3k=]: </span>
			<strong>
				<span><iaixsl:value-of select="number(/shop/rebatecode/@value)"/></span>
				<span>
					<iaixsl:choose>
						<iaixsl:when test="/shop/rebatecode/@price_type = 'fixed_amount' or /shop/rebatecode/@price_type = 'c'"> <iaixsl:value-of select="/shop/currency/@name"/></iaixsl:when>
						<iaixsl:when test="/shop/rebatecode/@price_type = 'p'">%</iaixsl:when>
					</iaixsl:choose>
				</span>
			</strong>
			<a href="" class="rabateCode__close">
			  <iaixsl:attribute name="aria-label">iai_i18n:[WmFta25paiBwYXNlayBpbmZvcm1hY3lqbnk=]</iaixsl:attribute>
			</a>
		</div>
	</iaixsl:if>
<!-- (menu_delivery_cost, 60dd8f2ee8f533.38237884.8)-->
	<iaixsl:variable name="disableBar"/>
	<iaixsl:variable name="disableReturns"/>
	<iaixsl:if test="not($disableBar) and /shop/basket/@toshippingfree != ''">
		<div id="freeShipping" class="freeShipping">
			<iaixsl:if test="/shop/basket/@toshippingfree = 0">
				<iaixsl:attribute name="class">freeShipping --active</iaixsl:attribute>
			</iaixsl:if>
			<span class="freeShipping__info">iai_i18n:[RGFybW93YSBkb3N0YXdh]</span>
			<strong class="freeShipping__val">
				iai_i18n:[b2Q=] 
				<iaixsl:value-of select="/shop/basket/@shippinglimitfree_formatted"/>
			</strong>
			
			<iaixsl:if test="not($disableReturns) and /shop/returns/@freereturnsactive='y'">
				<span class="freeShipping__return">
					iai_i18n:[ZG5p]
					<iaixsl:value-of select="/shop/returns/@days_to_return"/>
					iai_i18n:[aSBkYXJtb3d5IHp3cm90IG9k] 
				</span>
			</iaixsl:if>
			
			<a href="" class="freeShipping__close">
			  <iaixsl:attribute name="aria-label">iai_i18n:[WmFta25paiBwYXNlayBpbmZvcm1hY3lqbnk=]</iaixsl:attribute>
			</a>
		</div>
	</iaixsl:if>
<!-- (menu_top, 614c5d30adc291.84869744.6)-->
	<div id="logo" class="d-flex align-items-center">
		<iaixsl:if test="mask/top2/link/image/@src and (mask/top2/link/image/@width&gt;1 or mask/top2/link/image/@height &gt; 1)"><iaixsl:attribute name="data-bg"><iaixsl:value-of select="mask/top2/link/image/@src"/></iaixsl:attribute></iaixsl:if>
		<a href="{/shop/mask/top/link/@href}" target="{/shop/mask/top/link/@target}">
			<iaixsl:attribute name="aria-label">iai_i18n:[TG9nbyBza2xlcHU=]</iaixsl:attribute>
			<iaixsl:choose>
				<iaixsl:when test="/shop/mask/top/link/image_mobile/@src and /shop/mask/top/link/image_tablet/@src">
					<picture>
						<iaixsl:if test="/shop/mask/top/link/image/@src">
							<source media="(min-width:979px)" srcset="{/shop/mask/top/link/image/@src}" width="{/shop/mask/top/link/image/@width}" height="{/shop/mask/top/link/image/@height}"/>
						</iaixsl:if>
						<iaixsl:if test="/shop/mask/top/link/image_tablet/@src">
							<source media="(min-width:757px)" srcset="{/shop/mask/top/link/image_tablet/@src}" width="{/shop/mask/top/link/image_tablet/@width}" height="{/shop/mask/top/link/image_tablet/@height}"/>
						</iaixsl:if>
						<img src="{/shop/mask/top/link/image_mobile/@src}" alt="{/shop/mask/top/link/description}" width="{/shop/mask/top/link/image_mobile/@width}" height="{/shop/mask/top/link/image_mobile/@height}"/>
					</picture>
				</iaixsl:when>
				<iaixsl:otherwise>
					<img src="{/shop/mask/top/link/image/@src}" alt="{/shop/mask/top/link/description}" width="{/shop/mask/top/link/image/@width}" height="{/shop/mask/top/link/image/@height}"/>
				</iaixsl:otherwise>
			</iaixsl:choose>
		</a>
	</div>
	
	<iaixsl:if test="/shop/mask/@rwd_pc">
		<iaixsl:if test="/shop/mask/@rwd_tablet"/>
		<iaixsl:if test="/shop/mask/@rwd_smartphone"/>
	</iaixsl:if>
<!-- (menu_search, 614c5d2b6852b4.42348920.10)-->
	<form action="/search.php" method="get" id="menu_search" class="menu_search">
		<iaixsl:if test="/shop/action/search/@url"><iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/search/@url"/></iaixsl:attribute></iaixsl:if>
		<a href="#showSearchForm" class="menu_search__mobile">
		  <iaixsl:attribute name="aria-label">iai_i18n:[U3p1a2Fq]</iaixsl:attribute>
		</a>

		<div class="menu_search__block">
			<div class="menu_search__item --input">
				<input class="menu_search__input" type="text" name="text" autocomplete="off">
					<iaixsl:attribute name="placeholder">iai_i18n:[V3Bpc3ogY3plZ28gc3p1a2Fzeg==]</iaixsl:attribute>
					<iaixsl:attribute name="aria-label">iai_i18n:[V3Bpc3ogY3plZ28gc3p1a2Fzeg==]</iaixsl:attribute>
					<iaixsl:if test="/shop/page/search_params/text">
						<iaixsl:attribute name="placeholder"><iaixsl:value-of select="/shop/page/search_params/text/@value"/></iaixsl:attribute>
					</iaixsl:if>
				</input>
				<button class="menu_search__submit" type="submit">
					<iaixsl:attribute name="aria-label">iai_i18n:[U3p1a2Fq]</iaixsl:attribute>
				</button>
			</div>
			<div class="menu_search__item --results search_result"/>
		</div>
	</form>
<!-- (top_menu_wrapper, 6846f75e7e8ce9.23903861.6)-->
<div id="menu_top" class="menu_top">
	<iaixsl:if test="(((count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)) and not(/shop/select_language/@country_first = 'true')) or (count(/shop/select_language/language/option) &gt; 1 and /shop/select_language/@country_first = 'true')">
		<div id="menu_settings" class="align-items-center justify-content-center justify-content-lg-end">
			<iaixsl:if test="count(/shop/select_language/language/option) &gt; 1 and /shop/select_language/@country_first = 'true'">
				<iaixsl:attribute name="class">align-items-center justify-content-center justify-content-lg-end --select_language</iaixsl:attribute>
			</iaixsl:if>
			<iaixsl:if test="((count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)) and not(/shop/select_language/@country_first = 'true')">
			<div class="open_trigger hover__wrapper --hover_touch" tabindex="0">
				<iaixsl:attribute name="aria-label">iai_i18n:[S2xpa25paiwgYWJ5IHptaWVuacSH] <iaixsl:if test="count(/shop/language/option) &gt; 1">iai_i18n:[asSZenlr]<iaixsl:if test="count(/shop/currency/option) &gt; 1 or count(/shop/countries/country) &gt; 1">, </iaixsl:if></iaixsl:if><iaixsl:if test="count(/shop/currency/option) &gt; 1">iai_i18n:[d2FsdXTEmQ==]<iaixsl:if test="count(/shop/countries/country) &gt; 1">, </iaixsl:if></iaixsl:if><iaixsl:if test="count(/shop/countries/country) &gt; 1">iai_i18n:[a3JhaiBkb3N0YXd5]</iaixsl:if></iaixsl:attribute>
					<span>
						<iaixsl:choose>
							<iaixsl:when test="count(/shop/language/option) &gt; 1">
								<iaixsl:attribute name="class">d-none d-md-inline-block flag flag_<iaixsl:value-of select="/shop/language/option[@selected='true']/@id"/></iaixsl:attribute>
							</iaixsl:when>
							<iaixsl:when test="count(/shop/currency/option) &gt; 1">
								<iaixsl:attribute name="class">d-none d-md-inline-block flag_txt</iaixsl:attribute>
								<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>
							</iaixsl:when>
							<iaixsl:when test="count(/shop/countries/country) &gt; 1">
								<iaixsl:attribute name="class">d-none d-md-inline-block flag_txt</iaixsl:attribute>
								<i class="icon-truck"/>
							</iaixsl:when>
						</iaixsl:choose>
					</span>

					<i class="icon-angle-down d-none d-md-inline-block"/>

				<iaixsl:if test="(count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)">
					<form class="hover__element --right" action="/settings.php" method="post">
						<iaixsl:if test="/shop/action/settings/@url">
							<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:attribute>
						</iaixsl:if>

						<ul>
							
							<iaixsl:if test="count(/shop/language/option) &gt; 1">
								<li>
									<div class="form-group">
										<span class="menu_settings_lang_label">iai_i18n:[SsSZenlr]</span>

										<iaixsl:for-each select="/shop/language/option">
											<div class="radio">
												<label>
													<input type="radio" name="lang">
														<iaixsl:if test="@selected='true'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
														<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
													</input>
													<span>
														<iaixsl:attribute name="class">flag flag_<iaixsl:value-of select="@id"/></iaixsl:attribute>
													</span>
													<span><iaixsl:value-of select="@name"/></span>
												</label>
											</div>
										</iaixsl:for-each>
									</div>
								</li>
							</iaixsl:if>

							<iaixsl:if test="count(/shop/currency/option) &gt; 1 or count(/shop/countries/country) &gt; 1">
								<li>
									<iaixsl:if test="count(/shop/currency/option) &gt; 1">
										<div class="form-group">
											<span for="menu_settings_curr">iai_i18n:[V2FsdXRh]</span>

											<div class="select-after">
												<select class="form-control" name="curr" id="menu_settings_curr">
													<iaixsl:attribute name="aria-label">iai_i18n:[V2FsdXRh]</iaixsl:attribute>
													<iaixsl:for-each select="/shop/currency/option">
														<option>
															<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
															<iaixsl:choose>
																<iaixsl:when test="@selected='true'">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																	<iaixsl:value-of select="@symbol"/>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<iaixsl:value-of select="@symbol"/> (1 <iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/> = <iaixsl:value-of select="@rate"/>  <iaixsl:value-of select="@symbol"/>)
																</iaixsl:otherwise>
															</iaixsl:choose>
														</option>
													</iaixsl:for-each>
												</select>
											</div>
										</div>
									</iaixsl:if>
									<iaixsl:if test="count(/shop/countries/country) &gt; 1">
										<div class="form-group">
											<span for="menu_settings_country">iai_i18n:[RG9zdGF3YSBkbw==]</span>

											<div class="select-after">
												<select class="form-control" name="country" id="menu_settings_country">
													<iaixsl:attribute name="aria-label">iai_i18n:[RG9zdGF3YSBkbw==]</iaixsl:attribute>
													<iaixsl:for-each select="/shop/countries/country">
														<option>
															<iaixsl:if test="@selected='true'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>
															<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
															<iaixsl:value-of select="@name"/>
														</option>
													</iaixsl:for-each>
												</select>
											</div>
										</div>
									</iaixsl:if>
								</li>
							</iaixsl:if>
							<li class="buttons">
								<button class="btn --solid --large" type="submit">
									iai_i18n:[WmFzdG9zdWogem1pYW55]
								</button>
							</li>
						</ul>
					</form>
				</iaixsl:if>
				</div>
			</iaixsl:if>

			<iaixsl:if test="count(/shop/select_language/language/option) &gt; 1 and /shop/select_language/@country_first = 'true'">
				<iaixsl:variable name="show_select_var"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true'] = /shop/select_language/language/option[@selected = 'true']">false</iaixsl:when><iaixsl:otherwise test="count(/shop/currency/option) &gt; 1"><iaixsl:value-of select="/shop/select_language/@show_select"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

				<iaixsl:variable name="is_recommended_country"><iaixsl:if test="/shop/select_language/language/option[@recommended = 'true'] and not(/shop/select_language/language/option[@selected = 'true']/@id = /shop/select_language/language/option[@recommended = 'true']/@id)">true</iaixsl:if></iaixsl:variable>
				<iaixsl:variable name="is_default_country"><iaixsl:if test="not(/shop/select_language/language/option[@recommended = 'true']) and /shop/select_language/language/option[@default = 'true'] and not(/shop/select_language/language/option[@selected = 'true']/@id = /shop/select_language/language/option[@default = 'true']/@id)">true</iaixsl:if></iaixsl:variable>
				<iaixsl:variable name="recommended_country_lang"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']/../@id = /shop/select_language/language[@recommended = 'true']/@id"><iaixsl:value-of select="/shop/select_language/language[@recommended = 'true']/@id"/></iaixsl:when><iaixsl:otherwise>eng</iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise>eng</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

				<script>
					window.selectLanguageConfig = [<iaixsl:for-each select="/shop/select_language/language"><iaixsl:for-each select="option">{group:`<iaixsl:choose><iaixsl:when test="$is_recommended_country = 'true'"><iaixsl:value-of select="@recommended_group_name"/></iaixsl:when><iaixsl:when test="$is_default_country = 'true'"><iaixsl:value-of select="@default_group_name"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="@group"/></iaixsl:otherwise></iaixsl:choose>`,id:`<iaixsl:value-of select="@id"/>`,name: `<iaixsl:value-of select="text()"/>`,recommendedName: `<iaixsl:value-of select="@recommended_name"/>`,defaultName: `<iaixsl:value-of select="@default_name"/>`,selectedName: `<iaixsl:value-of select="@selected_name"/>`,currencyId: `<iaixsl:value-of select="@currency_id"/>`,currencySymbol: `<iaixsl:value-of select="@currency_symbol"/>`,<iaixsl:if test="@selected = 'true'">selected: true,</iaixsl:if><iaixsl:if test="@recommended = 'true'">recommended: true,</iaixsl:if><iaixsl:if test="@default = 'true'">default: true,</iaixsl:if>lang: [{site: `<iaixsl:value-of select="@site"/>`,name: `<iaixsl:value-of select="../@name"/>`,recommendedName:`<iaixsl:value-of select="../@recommended_name"/>`, defaultName:`<iaixsl:value-of select="../@default_name"/>`, id:`<iaixsl:value-of select="../@id"/>`, }]},</iaixsl:for-each></iaixsl:for-each>
					];
					window.selectLanguageParamsConfig = {show_select: &quot;<iaixsl:value-of select="$show_select_var"/>&quot;, recommended_lang: &quot;<iaixsl:value-of select="$recommended_country_lang"/>&quot;, is_recommended_country: &quot;<iaixsl:value-of select="$is_recommended_country"/>&quot;, is_default_country: &quot;<iaixsl:value-of select="$is_default_country"/>&quot;, country_first: &quot;<iaixsl:value-of select="/shop/select_language/@country_first"/>&quot;, selectedLangId: &quot;<iaixsl:for-each select="/shop/select_language/language"><iaixsl:if test="option[@selected = 'true']"><iaixsl:value-of select="@id"/></iaixsl:if></iaixsl:for-each>&quot;, };
				</script>

				<div class="select_language__open" tabindex="0"><iaixsl:attribute name="aria-label">iai_i18n:[V3liaWVyeiBrcmFqIGRvc3Rhd3kgaSBqxJl6eWs=]</iaixsl:attribute><span><i class="icon-glob"/></span></div>

				<div id="select_language" class="select_language">
					<div class="select_language__header"><span data-txt="Wybierz kraj dostawy i język">iai_i18n:[V3liaWVyeiBrcmFqIGRvc3Rhd3kgaSBqxJl6eWs=]</span></div>

					<div class="select_language__choose"/>
					<form class="select_language__form" action="" method="post">
						<iaixsl:if test="/shop/select_language/language/option[@selected = 'true']">
							<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/select_language/language/option[@selected = 'true']/@site"/></iaixsl:attribute>
						</iaixsl:if>
						<input type="hidden" name="redirection" value="redirected"/>
						<a class="select_language__submit btn --large --solid" href="#select_language" data-txt="Zastosuj zmiany" title="Zastosuj zmiany">
							<iaixsl:attribute name="title">iai_i18n:[WmFzdG9zdWogem1pYW55]</iaixsl:attribute>
							iai_i18n:[WmFzdG9zdWogem1pYW55]
						</a>
						<a class="select_language__back" href="#select_language" data-txt="Wróć" title="Wróć">
							<iaixsl:attribute name="title">iai_i18n:[V3LDs8SH]</iaixsl:attribute>
							iai_i18n:[V3LDs8SH]
						</a>
					</form>
				</div>

				<div class="select_language --recommended">
					<iaixsl:variable name="recommended_country"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']/../@id = /shop/select_language/language[@recommended = 'true']/@id"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@recommended_name"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@default_name"/></iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/@default_name"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="recommended_country_id"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@id"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/@id"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="recommended_language"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']/../@id = /shop/select_language/language[@recommended = 'true']/@id"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/../@recommended_name"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/../@default_name"/></iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/../@default_name"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="recommended_currency_id"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@currency_id"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/@currency_id"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="recommended_currency_symbol"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@currency_symbol"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/@currency_symbol"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

					<div class="select_language__header">
						<span class="flag"><iaixsl:attribute name="data-flag"><iaixsl:value-of select="$recommended_country_id"/></iaixsl:attribute></span>
						<iaixsl:choose>
							<iaixsl:when test="$is_recommended_country = 'true'">
								<span>
									<span data-txt="Twój rekomendowany kraj dostawy to">iai_i18n:[VHfDs2ogcmVrb21lbmRvd2FueSBrcmFqIGRvc3Rhd3kgdG8g]</span><iaixsl:text> </iaixsl:text><span><iaixsl:attribute name="data-default_txt"><iaixsl:value-of select="/shop/select_language/language/option[@id = $recommended_country_id]/@default_name "/></iaixsl:attribute><iaixsl:value-of select="$recommended_country"/></span>
								</span>
							</iaixsl:when>
							<iaixsl:otherwise>
								<span data-txt="Wybór dostawy do twojego kraju nie jest możliwy">iai_i18n:[V3liw7NyIGRvc3Rhd3kgZG8gdHdvamVnbyBrcmFqdSBuaWUgamVzdCBtb8W8bGl3eQ==]</span>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</div>
					<ul class="select_language__info">
						<iaixsl:choose>
							<iaixsl:when test="$is_recommended_country = 'true'">
								<li class="select_language__recommended --currency"><span data-txt="Zrób zakupy w">iai_i18n:[WnLDs2IgemFrdXB5IHc=]:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:value-of select="$recommended_currency_id"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="$recommended_currency_symbol"/></strong></li>
								<li class="select_language__recommended --country"><span data-txt="Zamów do kraju">iai_i18n:[WmFtw7N3IGRvIGtyYWp1]:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:attribute name="data-default_txt"><iaixsl:value-of select="/shop/select_language/language/option[@id = $recommended_country_id]/@default_name "/></iaixsl:attribute><iaixsl:value-of select="$recommended_country"/></strong></li>
								<li class="select_language__recommended --language"><span data-txt="Język sklepu">iai_i18n:[SsSZenlrIHNrbGVwdQ==]:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:attribute name="data-default_txt"><iaixsl:value-of select="/shop/select_language/language/option[@id = $recommended_country_id]/../@default_name "/></iaixsl:attribute><iaixsl:value-of select="$recommended_language"/></strong></li>
							</iaixsl:when>
							<iaixsl:otherwise>
								<li class="select_language__recommended --country"><span data-txt="Domyślny kraj dostawy">iai_i18n:[RG9tecWbbG55IGtyYWogZG9zdGF3eQ==]:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:attribute name="data-default_txt"><iaixsl:value-of select="/shop/select_language/language/option[@id = $recommended_country_id]/@default_name "/></iaixsl:attribute><iaixsl:value-of select="$recommended_country"/></strong></li>
								<li class="select_language__recommended --currency"><span data-txt="Zrób zakupy w">iai_i18n:[WnLDs2IgemFrdXB5IHc=]:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:value-of select="$recommended_currency_id"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="$recommended_currency_symbol"/></strong></li>
								<li class="select_language__recommended --language"><span data-txt="Język sklepu">iai_i18n:[SsSZenlrIHNrbGVwdQ==]:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:attribute name="data-default_txt"><iaixsl:value-of select="/shop/select_language/language/option[@id = $recommended_country_id]/../@default_name "/></iaixsl:attribute><iaixsl:value-of select="$recommended_language"/></strong></li>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</ul>
					<form class="select_language__form" action="" method="post">
						<iaixsl:if test="/shop/select_language/language/option[@selected = 'true']">
							<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/select_language/language/option[@selected = 'true']/@site"/></iaixsl:attribute>
						</iaixsl:if>
						<input type="hidden" name="redirection" value="redirected"/>
						<a class="select_language__submit --recommended btn --large --solid" href="#select_language">
							<iaixsl:attribute name="title">iai_i18n:[V3liaWVyeg==]</iaixsl:attribute>
							<iaixsl:choose>
							<iaixsl:when test="$is_recommended_country = 'true'">
								<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@site"/></iaixsl:attribute>
							</iaixsl:when>
							<iaixsl:otherwise>
								<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/@site"/></iaixsl:attribute>
							</iaixsl:otherwise>
						</iaixsl:choose>
            <span data-txt="Wybierz">iai_i18n:[V3liaWVyeg==]</span>
						</a>
          <a class="select_language__next btn --large --solid --outline" data-txt="Wybieram inny kraj" href="#select_language_open">
            <iaixsl:attribute name="title">iai_i18n:[V3liaWVyYW0gaW5ueSBrcmFq]</iaixsl:attribute>
            iai_i18n:[V3liaWVyYW0gaW5ueSBrcmFq]
						</a>
					</form>
				</div>
			</iaixsl:if>
		</div>
	</iaixsl:if>

	<div class="account_links">
		<a class="account_links__item">
			<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
			<iaixsl:choose>
				<iaixsl:when test="basket/@login and not(basket/@login = '')">
				  <iaixsl:attribute name="aria-label">iai_i18n:[VHdvamUga29udG8=]</iaixsl:attribute>
					<span class="account_links__text --logged-in">iai_i18n:[VHdvamUga29udG8=]</span>
				</iaixsl:when>
				<iaixsl:otherwise>
				  <iaixsl:attribute name="aria-label">iai_i18n:[WmFsb2d1aiBzacSZ]</iaixsl:attribute>
					<span class="account_links__text --logged-out">iai_i18n:[WmFsb2d1aiBzacSZ]</span>
				</iaixsl:otherwise>
			</iaixsl:choose>
		</a>
	</div>

	<div class="shopping_list_top hover__wrapper" data-empty="false">
		<iaixsl:if test="not(/shop/shopping_lists/list)">
		  <iaixsl:attribute name="class">shopping_list_top hover__wrapper</iaixsl:attribute>
			<iaixsl:attribute name="data-empty">true</iaixsl:attribute>
		</iaixsl:if>
		<a href="/shoppinglist.php" class="wishlist_link slt_link"><iaixsl:if test="not(/shop/shopping_lists/list)"><iaixsl:attribute name="class">wishlist_link slt_link --empty</iaixsl:attribute></iaixsl:if><iaixsl:if test="/shop/action/shoppinglist"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shoppinglist/@url"/></iaixsl:attribute></iaixsl:if><iaixsl:attribute name="aria-label">iai_i18n:[TGlzdHkgemFrdXBvd2U=]</iaixsl:attribute><span class="slt_link__text">iai_i18n:[TGlzdHkgemFrdXBvd2U=]</span></a>
		<div class="slt_lists hover__element">
			<ul class="slt_lists__nav">
				<li class="slt_lists__nav_item" data-list_skeleton="true" data-list_id="true" data-shared="true">
					<a href="#" class="slt_lists__nav_link" data-list_href="true">
						<span class="slt_lists__nav_name" data-list_name="true"/>
						<span class="slt_lists__count" data-list_count="true">0</span>
					</a>
				</li>
				<iaixsl:if test="not(/shop/shopping_lists/list)">
					<li class="slt_lists__nav_item --empty">
						<a class="slt_lists__nav_link --empty">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shoppinglist/@url"/></iaixsl:attribute>
							<span class="slt_lists__nav_name" data-list_name="true">iai_i18n:[TGlzdGEgemFrdXBvd2E=]</span>
							<span class="slt_lists__count" data-list_count="true">0</span>
						</a>
					</li>
				</iaixsl:if>
				<iaixsl:for-each select="/shop/shopping_lists/list">
					<li class="slt_lists__nav_item">
						<iaixsl:attribute name="data-list_id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
						<iaixsl:if test="@id = /shop/page/list/@id">
							<iaixsl:attribute name="data-current">true</iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:if test="@shared = 'true'">
							<iaixsl:attribute name="data-shared">true</iaixsl:attribute>
						</iaixsl:if>
						<a class="slt_lists__nav_link">
							<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
							<span class="slt_lists__nav_name" data-list_name="true"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
							<span class="slt_lists__count" data-list_count="true"><iaixsl:value-of select="@count"/></span>
						</a>
					</li>
				</iaixsl:for-each>
			</ul>
		</div>
	</div>

  <iaixsl:variable name="basket_title">iai_i18n:[UHJ6ZWpkxbogZG8ga29zenlrYQ==]</iaixsl:variable>
  
	<iaixsl:variable name="BasketPrice"><iaixsl:choose>
		<iaixsl:when test="/shop/page/@price_type = 'net'"><iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_net_formatted"/></iaixsl:when>
		<iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_formatted"/></iaixsl:otherwise>
	</iaixsl:choose></iaixsl:variable>

		
		<iaixsl:variable name="BasketPoints"><iaixsl:if test="@points_used &gt; 0">+ <iaixsl:value-of disable-output-escaping="yes" select="basket/@points_used"/>iai_i18n:[UEtU]</iaixsl:if></iaixsl:variable>

  <div id="menu_basket" class="top_basket hover__wrapper --mobile_hide">
    <iaixsl:if test="not(basket/@count &gt; 0)">
      <iaixsl:attribute name="class">top_basket hover__wrapper --hide --mobile_hide</iaixsl:attribute>
    </iaixsl:if>
    <iaixsl:if test="/shop/page/@cache_html = 'true' ">
      <iaixsl:attribute name="class">top_basket hover__wrapper --skeleton --mobile_hide</iaixsl:attribute>
    </iaixsl:if>
    <a class="top_basket__sub">
      <iaixsl:if test="$basket_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$basket_title"/></iaixsl:attribute></iaixsl:if>
      <iaixsl:attribute name="href"><iaixsl:value-of select="basket/@link"/></iaixsl:attribute>
      <iaixsl:attribute name="aria-label">iai_i18n:[V2FydG/Fm8SHIGtvc3p5a2E=]: <iaixsl:value-of select="$BasketPrice"/> <iaixsl:value-of select="$BasketPoints"/></iaixsl:attribute>

      <span class="badge badge-info"><iaixsl:if test="basket/@count &gt; 0"><iaixsl:value-of disable-output-escaping="yes" select="basket/@count"/></iaixsl:if></span>
      <strong class="top_basket__price">
        <iaixsl:value-of disable-output-escaping="yes" select="$BasketPrice"/>
        <iaixsl:if test="@points_used &gt; 0">
          <small><iaixsl:value-of disable-output-escaping="yes" select="$BasketPoints"/></small>
        </iaixsl:if>
      </strong>
    </a>

    <div class="top_basket__express_checkout_container">
      <express-checkout type="basket"/>
    </div>


    <iaixsl:if test="/shop/action/sites/@session_share_disabled">
      <script>
        app_shop.vars.session_share = &quot;<iaixsl:value-of select="/shop/action/sites/@session_share"/>&quot;;
        <iaixsl:if test="/shop/action/sites/site">
        app_shop.vars.sites = [<iaixsl:for-each select="/shop/action/sites/site"><iaixsl:if test="not(position()=1)">,</iaixsl:if>&quot;<iaixsl:value-of select="@url"/>&quot;</iaixsl:for-each>];
        </iaixsl:if>
      </script>
    </iaixsl:if>

    <iaixsl:if test="/shop/page/@cache_html = 'true' ">
      <script>
        app_shop.vars.cache_html = true;
      </script>
    </iaixsl:if>

    <iaixsl:if test="/shop/basket/product">
      <iaixsl:if test="/shop/page/@cache_basketwishes"> </iaixsl:if>
      <iaixsl:if test="/shop/page/@cache_basket"> </iaixsl:if>
    </iaixsl:if>

    <div class="top_basket__details hover__element --skeleton">
      <div class="top_basket__skeleton --name"/>
      <div class="top_basket__skeleton --product"/>
      <div class="top_basket__skeleton --product"/>
      <div class="top_basket__skeleton --product --last"/>
      <div class="top_basket__skeleton --sep"/>
      <div class="top_basket__skeleton --summary"/>
    </div>

  </div>
  <iaixsl:if test="wishes/@count"> </iaixsl:if>

  <template id="top_basket_product">
    <div class="top_basket__product">
      <a class="top_basket__img" title="">
        <picture>
          <source type="image/webp" srcset=""/>
          <img src="" alt=""/>
        </picture>
      </a>
      <a class="top_basket__link" title=""/>
      <div class="top_basket__prices">
        <span class="top_basket__price"/>
        <span class="top_basket__unit"/>
        <span class="top_basket__vat"/>
      </div>
    </div>
  </template>

  <template id="top_basket_summary">
    <div class="top_basket__summary_shipping_free">
      <span class="top_basket__summary_label --freeshipping_limit">iai_i18n:[RG8gZGFybW93ZWogZG9zdGF3eSBicmFrdWpl] <span class="top_basket__summary_value"/></span>
      <span class="progress_bar">
        <span class="progress_bar__value"/>
      </span>
    </div>
    <div class="top_basket__summary_item --worth">
      <span class="top_basket__summary_label">iai_i18n:[V2FydG/Fm8SHIHphbcOzd2llbmlh]:</span>
      <b class="top_basket__summary_value"/>
    </div>
    <div class="top_basket__summary_item --shipping">
      <span class="top_basket__summary_label">iai_i18n:[S29zenQgcHJ6ZXN5xYJraQ==]:</span>
      <b class="top_basket__summary_value"/>
    </div>
    <div class="top_basket__buttons">
      <a class="btn --solid --large" data-ec-class="btn --outline --large">
        <iaixsl:if test="$basket_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$basket_title"/></iaixsl:attribute></iaixsl:if>
        <iaixsl:attribute name="href"><iaixsl:value-of select="basket/@link"/></iaixsl:attribute>
        iai_i18n:[UHJ6ZWpkxbogZG8ga29zenlrYQ==]
      </a>
      
      <div id="top_basket__express_checkout_placeholder"/>
    </div>
  </template>

  <template id="top_basket_details">
    <div class="top_basket__details hover__element">
      <div class="top_basket__details_sub">
        <div class="headline">
          <span class="headline__name">iai_i18n:[VHfDs2oga29zenlr] (<span class="top_basket__count"/>)</span>
        </div>
        <div class="top_basket__products"/>
        <div class="top_basket__summary"/>
      </div>
    </div>
  </template>

</div>
<!-- (menu_categories, 614c5d2d149061.30454363.19)-->
	<iaixsl:variable name="dlmenu_showall">+ iai_i18n:[UG9rYcW8IHdzenlzdGtpZQ==]</iaixsl:variable>
	<iaixsl:variable name="dlmenu_extend">+ iai_i18n:[Um96d2nFhA==]</iaixsl:variable>
	<iaixsl:variable name="dlmenu_hide">- iai_i18n:[WndpxYQ=]</iaixsl:variable>
	<iaixsl:variable name="gfx_2lvl_show">1</iaixsl:variable>
	<iaixsl:variable name="gfx_3lvl_show">1</iaixsl:variable>
	<iaixsl:variable name="menu_categories_label"/>
	<iaixsl:variable name="dlmenu_showmore">1</iaixsl:variable>
	<iaixsl:variable name="dlmenu_shownumber">10</iaixsl:variable>
	<iaixsl:variable name="dlmenu_showall_count">0</iaixsl:variable>
	<iaixsl:variable name="current_item"><iaixsl:value-of select="/shop/navigation/current/@ni"/></iaixsl:variable>

	<nav id="menu_categories" class="wide">
	  <iaixsl:attribute name="aria-label">iai_i18n:[S2F0ZWdvcmllIGfFgsOzd25l]</iaixsl:attribute>
		<iaixsl:if test="$menu_categories_label and not($menu_categories_label = '')">
			<h2 class="big_label">
				<a href="/categories.php">
					<iaixsl:attribute name="title"/>
					<iaixsl:value-of select="$menu_categories_label"/>
				</a>
			</h2>
		</iaixsl:if>
		<button type="button" class="navbar-toggler">
		  <iaixsl:attribute name="aria-label">iai_i18n:[TWVudQ==]</iaixsl:attribute>
			<i class="icon-reorder"/>
		</button>
		<div class="navbar-collapse" id="menu_navbar">
			<ul class="navbar-nav mx-md-n2">
				<iaixsl:for-each select="navigation/item">
					<li class="nav-item">
						<iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
							<iaixsl:attribute name="class">nav-item nav-open</iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:variable name="navLink">
							<iaixsl:choose>
								<iaixsl:when test="@link and @link != '##'">
									<iaixsl:text disable-output-escaping="yes">&lt;a  href=&quot;</iaixsl:text>
									<iaixsl:value-of select="@link"/><iaixsl:text disable-output-escaping="yes">&quot; target=&quot;</iaixsl:text><iaixsl:value-of select="@target"/>
									<iaixsl:text disable-output-escaping="yes">&quot; title=&quot;</iaixsl:text><iaixsl:value-of select="@name"/>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:text disable-output-escaping="yes">&lt;span</iaixsl:text>
									<iaixsl:text disable-output-escaping="yes"> title=&quot;</iaixsl:text>
									<iaixsl:value-of select="@name"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
							<iaixsl:text disable-output-escaping="yes">&quot; class=&quot;nav-link --l1</iaixsl:text>
							<iaixsl:if test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
								<iaixsl:text disable-output-escaping="yes"> active</iaixsl:text>
							</iaixsl:if>
							<iaixsl:if test="@reload and @reload = 'y'">
								<iaixsl:text disable-output-escaping="yes"> noevent</iaixsl:text>
							</iaixsl:if>
							<iaixsl:if test="((@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))) or ((@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile)))">
								<iaixsl:text disable-output-escaping="yes"> nav-gfx</iaixsl:text>
								<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
									<iaixsl:text disable-output-escaping="yes"> nav-hover</iaixsl:text>
								</iaixsl:if>
							</iaixsl:if>
							<iaixsl:text disable-output-escaping="yes">&quot; &gt;</iaixsl:text>
							<iaixsl:choose>
								<iaixsl:when test="(@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))">
									<picture class="nav-picture --main --lvl1">
										<iaixsl:choose>
											<iaixsl:when test="@gfx_inactive_type = 'img_rwd'">
												<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_inactive_desktop}">
													<iaixsl:if test="@gfx_inactive_desktop_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_inactive_desktop_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_inactive_desktop_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_inactive_desktop_height"/></iaixsl:attribute></iaixsl:if>
												</source>
												<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_inactive_tablet}">
													<iaixsl:if test="@gfx_inactive_tablet_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_inactive_tablet_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_inactive_tablet_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_inactive_tablet_height"/></iaixsl:attribute></iaixsl:if>
												</source>
												<img alt="{@name}" title="{@name}" src="{@gfx_inactive_mobile}" loading="lazy">
													<iaixsl:if test="@gfx_inactive_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_inactive_mobile_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_inactive_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_inactive_mobile_height"/></iaixsl:attribute></iaixsl:if>
												</img>
											</iaixsl:when>
											<iaixsl:otherwise>
												<img alt="{@name}" title="{@name}" src="{@gfx}" loading="lazy">
													<iaixsl:if test="@gfx_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_height"/></iaixsl:attribute></iaixsl:if>
												</img>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</picture>
									<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
										<picture class="nav-picture --hover --lvl1">
											<iaixsl:choose>
												<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
													<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
													<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
													<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
														<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
														<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
													</img>
												</iaixsl:when>
												<iaixsl:otherwise>
													<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
														<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
														<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
													</img>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</picture>
									</iaixsl:if>
									<span class="gfx_lvl_1 d-none"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
								</iaixsl:when>
								<iaixsl:when test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
									<span class="gfx_lvl_1 --omo"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
									<picture class="nav-picture --hover --lvl1">
										<iaixsl:choose>
											<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
												<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
												<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
												<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
													<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
												</img>
											</iaixsl:when>
											<iaixsl:otherwise>
												<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
													<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
												</img>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</picture>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
							<iaixsl:choose>
								<iaixsl:when test="@link and @link != '##'">
									<iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:variable>
						<span class="nav-link-wrapper">
							<iaixsl:copy-of select="$navLink"/>
							<iaixsl:if test="item">
								<button class="nav-link-expand" type="button">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of disable-output-escaping="yes" select="@name"/>, iai_i18n:[TWVudQ==]</iaixsl:attribute>
								</button>
							</iaixsl:if>
						</span>
						<iaixsl:if test="item">
							<ul class="navbar-subnav">
								<li class="nav-header">
									<a href="#backLink" class="nav-header__backLink"><i class="icon-angle-left"/></a>
									<iaixsl:copy-of select="$navLink"/>
								</li>
								<iaixsl:for-each select="item">
									<li class="nav-item">
										<iaixsl:if test="((count(item) = 0) and $dlmenu_showmore)">
											<iaixsl:attribute name="class">nav-item empty</iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
											<iaixsl:attribute name="class">nav-item nav-open</iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) ) and ((count(item) = 0) and $dlmenu_showmore)">
											<iaixsl:attribute name="class">nav-item nav-open empty</iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:variable name="navLinkSub">
											<iaixsl:choose>
												<iaixsl:when test="@link and @link != '##'">
													<iaixsl:text disable-output-escaping="yes">&lt;a  href=&quot;</iaixsl:text>
													<iaixsl:value-of select="@link"/><iaixsl:text disable-output-escaping="yes">&quot; target=&quot;</iaixsl:text><iaixsl:value-of select="@target"/>
													<iaixsl:text disable-output-escaping="yes">&quot; title=&quot;</iaixsl:text><iaixsl:value-of select="@name"/>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:text disable-output-escaping="yes">&lt;span</iaixsl:text>
													<iaixsl:text disable-output-escaping="yes"> title=&quot;</iaixsl:text>
													<iaixsl:value-of select="@name"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
											<iaixsl:text disable-output-escaping="yes">&quot; class=&quot;nav-link --l2</iaixsl:text>
											<iaixsl:if test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
												<iaixsl:text disable-output-escaping="yes"> active</iaixsl:text>
											</iaixsl:if>
											<iaixsl:if test="(((@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))) or ((@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile)))) and $gfx_2lvl_show">
												<iaixsl:text disable-output-escaping="yes"> nav-gfx</iaixsl:text>
												<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
													<iaixsl:text disable-output-escaping="yes"> nav-hover</iaixsl:text>
												</iaixsl:if>
											</iaixsl:if>

											<iaixsl:text disable-output-escaping="yes">&quot; &gt;</iaixsl:text>

											<iaixsl:choose>
												<iaixsl:when test="((@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))) and $gfx_2lvl_show">
													<picture class="nav-picture --main --lvl2">
														<iaixsl:choose>
															<iaixsl:when test="@gfx_inactive_type = 'img_rwd'">
																<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_inactive_desktop}"/>
																<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_inactive_tablet}"/>
																<img alt="{@name}" title="{@name}" src="{@gfx_inactive_mobile}" loading="lazy">
																	<iaixsl:if test="@gfx_inactive_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_inactive_mobile_width"/></iaixsl:attribute></iaixsl:if>
																	<iaixsl:if test="@gfx_inactive_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_inactive_mobile_height"/></iaixsl:attribute></iaixsl:if>
																</img>
															</iaixsl:when>
															<iaixsl:otherwise>
																<img alt="{@name}" title="{@name}" src="{@gfx}" loading="lazy">
																	<iaixsl:if test="@gfx_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_width"/></iaixsl:attribute></iaixsl:if>
																	<iaixsl:if test="@gfx_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_height"/></iaixsl:attribute></iaixsl:if>
																</img>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</picture>
													<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
														<picture class="nav-picture --hover --lvl2">
															<iaixsl:choose>
																<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
																	<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
																	<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
																	<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
																		<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
																		<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
																	</img>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
																		<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
																		<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
																	</img>
																</iaixsl:otherwise>
															</iaixsl:choose>
														</picture>
													</iaixsl:if>
													<span class="gfx_lvl_2 d-none"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
												</iaixsl:when>
												<iaixsl:when test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
													<span class="gfx_lvl_2 --omo"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
													<picture class="nav-picture --hover --lvl2">
														<iaixsl:choose>
															<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
																<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
																<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
																<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
																	<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
																	<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
																</img>
															</iaixsl:when>
															<iaixsl:otherwise>
																<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
																	<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
																	<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
																</img>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</picture>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
											<iaixsl:choose>
												<iaixsl:when test="@link and @link != '##'">
													<iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</iaixsl:variable>
										<iaixsl:copy-of select="$navLinkSub"/>
										<iaixsl:if test="item">
											<ul class="navbar-subsubnav">
												<iaixsl:if test="((count(item) &gt; $dlmenu_shownumber) and $dlmenu_showmore)">
													<iaixsl:attribute name="class">navbar-subsubnav more</iaixsl:attribute>
												</iaixsl:if>
												<li class="nav-header">
													<a href="#backLink" class="nav-header__backLink"><i class="icon-angle-left"/></a>
													<iaixsl:copy-of select="$navLinkSub"/>
												</li>
												<iaixsl:for-each select="item">
													<li class="nav-item">
														<iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
															<iaixsl:attribute name="class">nav-item nav-open</iaixsl:attribute>
														</iaixsl:if>
														<iaixsl:choose>
															<iaixsl:when test="@link and @link != '##'">
																<iaixsl:text disable-output-escaping="yes">&lt;a  href=&quot;</iaixsl:text>
																<iaixsl:value-of select="@link"/><iaixsl:text disable-output-escaping="yes">&quot; target=&quot;</iaixsl:text><iaixsl:value-of select="@target"/>
																<iaixsl:text disable-output-escaping="yes">&quot; title=&quot;</iaixsl:text><iaixsl:value-of select="@name"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:text disable-output-escaping="yes">&lt;span</iaixsl:text>
																<iaixsl:text disable-output-escaping="yes"> title=&quot;</iaixsl:text>
																<iaixsl:value-of select="@name"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
														<iaixsl:text disable-output-escaping="yes">&quot; class=&quot;nav-link --l3</iaixsl:text>
														<iaixsl:if test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
															<iaixsl:text disable-output-escaping="yes"> active</iaixsl:text>
														</iaixsl:if>
														<iaixsl:if test="(((@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))) or ((@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile)))) and $gfx_3lvl_show">
															<iaixsl:text disable-output-escaping="yes"> nav-gfx</iaixsl:text>
															<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
																<iaixsl:text disable-output-escaping="yes"> nav-hover</iaixsl:text>
															</iaixsl:if>
														</iaixsl:if>

														<iaixsl:text disable-output-escaping="yes">&quot; &gt;</iaixsl:text>

														<iaixsl:choose>
															<iaixsl:when test="((@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))) and $gfx_3lvl_show">
																<picture class="nav-picture --main --lvl3">
																	<iaixsl:choose>
																		<iaixsl:when test="@gfx_inactive_type = 'img_rwd'">
																			<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_inactive_desktop}"/>
																			<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_inactive_tablet}"/>
																			<img alt="{@name}" title="{@name}" src="{@gfx_inactive_mobile}" loading="lazy">
																				<iaixsl:if test="@gfx_inactive_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_inactive_mobile_width"/></iaixsl:attribute></iaixsl:if>
																				<iaixsl:if test="@gfx_inactive_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_inactive_mobile_height"/></iaixsl:attribute></iaixsl:if>
																			</img>
																		</iaixsl:when>
																		<iaixsl:otherwise>
																			<img alt="{@name}" title="{@name}" src="{@gfx}" loading="lazy">
																				<iaixsl:if test="@gfx_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_width"/></iaixsl:attribute></iaixsl:if>
																				<iaixsl:if test="@gfx_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_height"/></iaixsl:attribute></iaixsl:if>
																			</img>
																		</iaixsl:otherwise>
																	</iaixsl:choose>
																</picture>
																<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
																	<picture class="nav-picture --hover --lvl3">
																		<iaixsl:choose>
																			<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
																				<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
																				<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
																				<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
																					<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
																					<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
																				</img>
																			</iaixsl:when>
																			<iaixsl:otherwise>
																				<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
																					<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
																					<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
																				</img>
																			</iaixsl:otherwise>
																		</iaixsl:choose>
																	</picture>
																</iaixsl:if>
																<span class="gfx_lvl_3 d-none"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
															</iaixsl:when>
															<iaixsl:when test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
																<span class="gfx_lvl_3 --omo"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
																<picture class="nav-picture --hover --lvl3">
																	<iaixsl:choose>
																		<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
																			<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
																			<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
																			<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
																				<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
																				<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
																			</img>
																		</iaixsl:when>
																		<iaixsl:otherwise>
																			<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
																				<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
																				<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
																			</img>
																		</iaixsl:otherwise>
																	</iaixsl:choose>
																</picture>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													<iaixsl:choose>
														<iaixsl:when test="@link and @link != '##'">
															<iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
														</iaixsl:otherwise>
													</iaixsl:choose>
													</li>
												</iaixsl:for-each>
												<iaixsl:if test="(count(item) &gt; $dlmenu_showall_count) and @link and @display_all = 'y' and $dlmenu_showall">
													<li class="nav-item --all">
														<a class="nav-link --l3">
															<iaixsl:attribute name="href">
																<iaixsl:choose>
																	<iaixsl:when test="@display_all_link">
																		<iaixsl:value-of select="@display_all_link"/>
																	</iaixsl:when>
																	<iaixsl:otherwise>
																		<iaixsl:value-of select="@link"/>
																	</iaixsl:otherwise>
																</iaixsl:choose>
															</iaixsl:attribute>
															<iaixsl:value-of select="$dlmenu_showall"/>
														</a>
													</li>
												</iaixsl:if>
												<iaixsl:if test="(count(item) &gt; $dlmenu_shownumber) and $dlmenu_showmore">
													<li class="nav-item --extend">
														<a href="" class="nav-link --l3">
															<iaixsl:attribute name="txt_alt"><iaixsl:value-of select="$dlmenu_hide"/></iaixsl:attribute>
															<iaixsl:value-of select="$dlmenu_extend"/>
														</a>
													</li>
												</iaixsl:if>
											</ul>
										</iaixsl:if>
									</li>
								</iaixsl:for-each>
								<iaixsl:if test="(count(item) &gt; $dlmenu_showall_count) and @link and @display_all = 'y' and $dlmenu_showall">
									<li class="nav-item --all empty">
										<a class="nav-link --l2">
											<iaixsl:attribute name="href">
												<iaixsl:choose>
													<iaixsl:when test="@display_all_link">
														<iaixsl:value-of select="@display_all_link"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="@link"/>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</iaixsl:attribute>
											<iaixsl:value-of select="$dlmenu_showall"/>
										</a>
									</li>
								</iaixsl:if>
							</ul>
						</iaixsl:if>
					</li>
				</iaixsl:for-each>
			</ul>
		</div>
	</nav>
	<iaixsl:if test="/shop/page/navigation/item/@gfx_active_desktop"> </iaixsl:if>
<!-- (projector_stepper, 60dd8ed08958b2.10218397.11)-->
  <iaixsl:variable name="searchResults_title"/>
  <iaixsl:variable name="breadcrumbs_label">iai_i18n:[SmVzdGXFmyB0dXRhag==]:  </iaixsl:variable>
  <div id="breadcrumbs" class="breadcrumbs">
    <div class="back_button">
      <iaixsl:attribute name="class">back_button</iaixsl:attribute>
      <button id="back_button"/>
    </div>
    <nav class="list_wrapper">
			<iaixsl:attribute name="aria-label">iai_i18n:[TmF3aWdhY2phIG9rcnVzemtvd2E=]</iaixsl:attribute>
      <ol>
        <iaixsl:if test="$breadcrumbs_label">
          <li>
            <span><iaixsl:value-of select="$breadcrumbs_label"/></span>
          </li>
        </iaixsl:if>
        <li class="bc-main">
          <span><a href="/">iai_i18n:[U3Ryb25hIGfFgsOzd25h]</a></span>
        </li>
        <iaixsl:choose>
          <iaixsl:when test="page/@type = 'main'">
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'wishesedit' or page/@type = 'shoppinglist'">
            <li>
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[TGlzdHkgemFrdXBvd2U=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'basketedit'">
            <li>
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[S29zenlr]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'product-stocks'">
            <li>
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[RG9zdMSZcG5vxZvEhyBwcm9kdWt0dSB3IHNrbGVwYWNo]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'blog-list'">
            <iaixsl:choose>
              <iaixsl:when test="page/navigation/bycategories/item[@current='active']">
                <li>
                  <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <a href="/blog-list.php">
                    <iaixsl:if test="/shop/action/blogList/@url">
                      <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/blogList/@url"/></iaixsl:attribute>
                    </iaixsl:if>
                    Blog
                  </a>
                </li>
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span><iaixsl:value-of select="page/navigation/bycategories/item[@current='active']/@value"/></span>
                </li>
              </iaixsl:when>
              <iaixsl:otherwise>
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span>Blog</span>
                </li>
              </iaixsl:otherwise>
            </iaixsl:choose>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'blog-item'">
            <li>
              <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <a href="/blog-list.php">
                <iaixsl:if test="/shop/action/blogList/@url">
                  <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/blogList/@url"/></iaixsl:attribute>
                </iaixsl:if>
                Blog
              </a>
            </li>
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span><iaixsl:value-of select="page/blogitem/title/text()"/></span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'opinions-photos'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[T3Bpbmll]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'opinions-shop'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[T3BpbmllIG8gc2tsZXBpZQ==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'categories-list'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[TGlzdGEga2F0ZWdvcmlp]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order-payment'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[UMWCYXRub8WbY2k=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order-newpayment'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[UMWCYXRub8WbY2k=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order-wrappers'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[V3liaWVyeiBvcGFrb3dhbmll]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'news'">
            <iaixsl:choose>
              <iaixsl:when test="/shop/page/news/title">
                <li>
                  <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <a>
                    <iaixsl:attribute name="href">/news.php</iaixsl:attribute>
                    iai_i18n:[QWt0dWFsbm/Fm2Np]
                  </a>
                </li>
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/news/title"/></span>
                </li>
              </iaixsl:when>
              <iaixsl:otherwise>
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span>iai_i18n:[QWt0dWFsbm/Fm2Np]</span>
                </li>
              </iaixsl:otherwise>
            </iaixsl:choose>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'client-rebates'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[VHdvamUgcmFiYXR5]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'sitemap'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[TWFwYSBzdHJvbnk=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'client-save'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[TG9nb3dhbmll]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="((page/@type = 'client-new') and not(page/client-data/@register='true') and not(page/client-data/@edit='true'))">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[UmVqZXN0cmFjamE=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@register='true'))">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[UmVqZXN0cmFjamE=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@edit='true'))">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[RWR5Y2phIGRhbnljaA==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order-nonstandardized'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[WmFtw7N3aWVuaWUgbmllc3RhbmRhcmRvd2U=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'pickup-sites'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[V3liaWVyeiBwdW5rdCBvZGJpb3J1]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'contact'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[S29udGFrdA==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'links'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[TGlua2k=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'login'">
            <iaixsl:if test="page/login/response/@type = 'give login'">
              <li aria-current="page">
                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                <span>iai_i18n:[UHJ6eXBvbW5paiBoYXPFgm8=]</span>
              </li>
            </iaixsl:if>
            <iaixsl:if test="not(page/login/response/@type = 'give login')">
              <iaixsl:choose>
                <iaixsl:when test="/shop/basket/@login">
                  <li aria-current="page">
                    <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                    <span>iai_i18n:[VHdvamUga29udG8=]</span>
                  </li>
                </iaixsl:when>
                <iaixsl:when test="page/login/response/@type = 'no login'">
                  <li aria-current="page">
                    <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                    <span>iai_i18n:[TG9nb3dhbmll]</span>
                  </li>
                </iaixsl:when>
              </iaixsl:choose>
            </iaixsl:if>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'rma-add'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[RG9kYWogcmVrbGFtYWNqxJk=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'rma_products'">
            <iaixsl:choose>
              <iaixsl:when test="page/@display = 'confirmation'">
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span/>
                </li>
              </iaixsl:when>
              <iaixsl:when test="page/@display = 'details'">
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span/>
                </li>
              </iaixsl:when>
              <iaixsl:when test="page/@display = 'add'">
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span/>
                </li>
              </iaixsl:when>
              <iaixsl:when test="page/@display = 'stock'">
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span/>
                </li>
              </iaixsl:when>
            </iaixsl:choose>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'rma-list'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[TGlzdGEgcmVrbGFtYWNqaQ==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'stock'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[UHVua3Qgb2RiaW9ydQ==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order1'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[RG9zdGF3YSBpIHDFgmF0bm/Fm2Np]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order2'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[UG90d2llcmR6ZW5pZSBkYW55Y2g=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'prepaid'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[UG9kc3Vtb3dhbmllIHphbcOzd2llbmlh]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'producers-list'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[TWFya2k=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'searching'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[U3p1a2Fq]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'text'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span><iaixsl:value-of select="page/text/@name"/></span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'return'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[VXdhZ2E=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'client-orders'">
            <li>
              <iaixsl:attribute name="class">bc-active bc-login</iaixsl:attribute>
              <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>iai_i18n:[VHdvamUga29udG8=]</a>
            </li>
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[VHdvamUgemFtw7N3aWVuaWE=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order-open'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[U3RhdHVzIHphbcOzd2llbmlh]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'product-compare'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[UG9yw7N3bnl3YXJrYQ==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'products-bought'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[TGlzdGEgemFrdXBpb255Y2ggcHJvZHVrdMOzdw==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'return_products'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[Wndyb3QgemFtw7N3aWVuaWE=]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'client-cards'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[S2FydHkgc3RhxYJlZ28ga2xpZW50YQ==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'navigation' or page/@type = 'search'">
            <iaixsl:choose>
              <iaixsl:when test="bc/item">
                <iaixsl:for-each select="bc/item">
                  <iaixsl:variable name="current_ni"><iaixsl:value-of select="@ni"/></iaixsl:variable>
                  
                    <iaixsl:variable name="current_navi">
                      <iaixsl:choose>
                        <iaixsl:when test="( count(/shop/navigation//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation</iaixsl:when>
                        <iaixsl:when test="( count(/shop/navigation2//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation2</iaixsl:when>
                        <iaixsl:when test="( count(/shop/navigation3//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation3</iaixsl:when>
                        <iaixsl:when test="( count(/shop/navigation4//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation4</iaixsl:when>
                        <iaixsl:when test="( count(/shop/navigation5//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation5</iaixsl:when>
                        <iaixsl:otherwise>0</iaixsl:otherwise>
                      </iaixsl:choose>
                    </iaixsl:variable>
                  <li>
                    <iaixsl:attribute name="class">bc-item-<iaixsl:value-of select="position()"/><iaixsl:if test="position() = last()"> bc-active</iaixsl:if><iaixsl:if test="count(/shop/*[name()=$current_navi]//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last())"> --more</iaixsl:if></iaixsl:attribute>
										<iaixsl:if test="position() = last()">
											<iaixsl:attribute name="aria-current">page</iaixsl:attribute>
										</iaixsl:if>
                    <iaixsl:choose>
                      <iaixsl:when test="not(position() = last()) and /shop/navigation//item[@ni = $current_ni]/@link">
                        <a>
                          <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                          <iaixsl:value-of disable-output-escaping="yes" select="@title"/>
                        </a>
                      </iaixsl:when>
                      <iaixsl:otherwise>
                        <span>
                          <iaixsl:value-of disable-output-escaping="yes" select="@title"/>
                        </span>
                      </iaixsl:otherwise>
                    </iaixsl:choose>

                    
                    <iaixsl:if test="$current_navi != 0">
                      <ul class="breadcrumbs__sub">
                        <iaixsl:for-each select="/shop/*[name()=$current_navi]//item[@ni = $current_ni]/item">
                          <li class="breadcrumbs__item">
                            <iaixsl:choose>
                              <iaixsl:when test="@link and @link != '##'">
                                <a class="breadcrumbs__link --link">
                                  <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                  <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                </a>
                              </iaixsl:when>
                              <iaixsl:otherwise>
                                <span class="breadcrumbs__link"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                              </iaixsl:otherwise>
                            </iaixsl:choose>
                          </li>
                        </iaixsl:for-each>
                      </ul>
                    </iaixsl:if>
                  </li>
                </iaixsl:for-each>
              </iaixsl:when>
              <iaixsl:otherwise>
                <iaixsl:if test="$searchResults_title">
                  <li>
                    <span>
                      <iaixsl:value-of select="$searchResults_title"/>
                      <iaixsl:if test="page/search_params/text/@value and not(page/search_params/text/@value='')">
                        <iaixsl:value-of select="page/search_params/text/@value"/>
                      </iaixsl:if>
                    </span>
                  </li>
                </iaixsl:if>
              </iaixsl:otherwise>
            </iaixsl:choose>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'projector'">
            <iaixsl:for-each select="bc/item">
              <iaixsl:variable name="current_ni"><iaixsl:value-of select="@ni"/></iaixsl:variable>
              
              <iaixsl:variable name="current_navi">
                <iaixsl:choose>
                  <iaixsl:when test="( count(/shop/navigation//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation</iaixsl:when>
                  <iaixsl:when test="( count(/shop/navigation2//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation2</iaixsl:when>
                  <iaixsl:when test="( count(/shop/navigation3//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation3</iaixsl:when>
                  <iaixsl:when test="( count(/shop/navigation4//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation4</iaixsl:when>
                  <iaixsl:when test="( count(/shop/navigation5//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation5</iaixsl:when>
                  <iaixsl:otherwise>0</iaixsl:otherwise>
                </iaixsl:choose>
              </iaixsl:variable>
              <li>
                <iaixsl:attribute name="class">category bc-item-<iaixsl:value-of select="position()"/><iaixsl:if test="position() = last()"> bc-active</iaixsl:if><iaixsl:if test="count(/shop/*[name()=$current_navi]//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last())"> --more</iaixsl:if></iaixsl:attribute>
								<iaixsl:if test="position() = last()">
									<iaixsl:attribute name="aria-current">page</iaixsl:attribute>
								</iaixsl:if>
                <iaixsl:choose>
                  <iaixsl:when test="/shop/navigation//item[@ni = $current_ni]/@link">
                    <a>
                      <iaixsl:attribute name="class">category</iaixsl:attribute>
                      <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                      <iaixsl:value-of disable-output-escaping="yes" select="@title"/>
                    </a>
                  </iaixsl:when>
                  <iaixsl:otherwise>
                    <span>
                      <iaixsl:attribute name="class">category</iaixsl:attribute>
                      <iaixsl:value-of disable-output-escaping="yes" select="@title"/>
                    </span>
                  </iaixsl:otherwise>
                </iaixsl:choose>

                <iaixsl:if test="$current_navi != 0">
                  <ul class="breadcrumbs__sub">
                    <iaixsl:for-each select="/shop/*[name()=$current_navi]//item[@ni = $current_ni]/item">
                      <li class="breadcrumbs__item">
                        <iaixsl:choose>
                          <iaixsl:when test="@link and @link != '##'">
                            <a class="breadcrumbs__link --link">
                              <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                              <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                            </a>
                          </iaixsl:when>
                          <iaixsl:otherwise>
                            <span class="breadcrumbs__link"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                          </iaixsl:otherwise>
                        </iaixsl:choose>
                      </li>
                    </iaixsl:for-each>
                  </ul>
                </iaixsl:if>
              </li>
            </iaixsl:for-each>
            <li class="bc-active bc-product-name" aria-current="page">
              <span><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/name"/></span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'place-order'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[SmVkbm9rcm9rb3d5IHByb2NlcyB6YWt1cG93eQ==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'rma-open'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[UmVrbGFtYWNqYSBiZXogbG9nb3dhbmlh]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'returns-open'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[Wndyb3QgYmV6IGxvZ293YW5pYQ==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'opinions-add'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[RG9kYXdhbmllIG9waW5paQ==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'noproduct'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[QnJhayBwcm9kdWt0dQ==]</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'subscriptions'">
            <li>
              <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>iai_i18n:[VHdvamUga29udG8=]</a>
            </li>
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span><iaixsl:choose><iaixsl:when test="/shop/page/subscriptions/@display = 'active'">iai_i18n:[TGlzdGEgYWt0eXdueWNoIHN1YnNrcnlwY2pp]</iaixsl:when><iaixsl:otherwise>iai_i18n:[TGlzdGEgemFrb8WEY3pvbnljaCBzdWJza3J5cGNqaQ==]</iaixsl:otherwise></iaixsl:choose></span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'subscription'">
            <li>
              <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>iai_i18n:[VHdvamUga29udG8=]</a>
            </li>
            <li>
              <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <a><iaixsl:choose><iaixsl:when test="/shop/page/subscription/@status != 'finished'"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/subscriptions_active/@url"/></iaixsl:attribute>iai_i18n:[TGlzdGEgYWt0eXdueWNoIHN1YnNrcnlwY2pp]</iaixsl:when><iaixsl:otherwise><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/subscriptions_terminated/@url"/></iaixsl:attribute>iai_i18n:[TGlzdGEgemFrb8WEY3pvbnljaCBzdWJza3J5cGNqaQ==]</iaixsl:otherwise></iaixsl:choose></a>
            </li>
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>iai_i18n:[U3Vic2tyeXBjamEgbnI=]<iaixsl:text> </iaixsl:text><iaixsl:value-of select="/shop/page/subscription/@id"/></span>
            </li>
          </iaixsl:when>
          
          <iaixsl:otherwise>
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span><iaixsl:value-of select="page/@type"/></span>
            </li>
          </iaixsl:otherwise>
        </iaixsl:choose>
      </ol>
    </nav>
  </div>
<!-- (menu_security_policy_top, 648ca66b2a3810.48166522.9)-->
	<div class="order_process_security show_tip">
		<iaixsl:choose>
			<iaixsl:when test="/shop/@trust_level = '1'">
				<iaixsl:attribute name="class">order_process_security show_tip --super</iaixsl:attribute>
				<iaixsl:attribute name="title"><p>iai_i18n:[U3Rvc3VqZW15IHN5c3RlbSBJZG9TZWxsIGRhasSFY3kga2xpZW50b20ga29udHJvbMSZIG5hZCB6YW3Ds3dpZW5pZW0gaSBwcm9jZXNlbSByZWFsaXphY2ppIHphbcOzd2llbmlh]. <b>iai_i18n:[RGJhbXkgdGXFvCBvIFR3b2plIHByYXdh]</b> iai_i18n:[aSB3eWdvZMSZLiBJQUkgUy5BLiByZWd1bGFybmllIHdlcnlmaWt1amUgbmFzeiBza2xlcCBpIHBvdHdpZXJkemEsIMW8ZSB3eXN5xYJhbXkgcHJ6ZXN5xYJraSB3IGRla2xhcm93YW55Y2ggdGVybWluYWNoIG9yYXogc3Rvc3VqZW15IHJvendpxIV6YW5pYSBtb8W8bGl3aWUgdcWCYXR3aWFqxIVjZSB6YWt1cHkgaSB6d2nEmWtzemFqxIVjZSBiZXpwaWVjemXFhHN0d28ga2xpZW50w7N3].</p></iaixsl:attribute>
			</iaixsl:when>
			<iaixsl:otherwise>
				<iaixsl:attribute name="title"><p>iai_i18n:[U3Rvc3VqZW15IHN5c3RlbQ==] <b>iai_i18n:[SWRvU2VsbA==]</b> iai_i18n:[ZGFqxIVjeSBrbGllbnRvbSBrb250cm9sxJkgbmFkIHphbcOzd2llbmllbSBpIHByb2Nlc2VtIHJlYWxpemFjamkgemFtw7N3aWVuaWE=]. <b>iai_i18n:[RGJhbXkgdGXFvCBvIFR3b2plIHByYXdh]</b>.</p></iaixsl:attribute>
			</iaixsl:otherwise>
		</iaixsl:choose>
		<h5 class="order_process_security__label">
			<iaixsl:choose>
				<iaixsl:when test="/shop/@trust_level = '1'">
					iai_i18n:[U3VwZXJCZXpwaWVjem5l]<sup>iai_i18n:[VE0=]</sup> iai_i18n:[emFrdXB5]
				</iaixsl:when>
				<iaixsl:otherwise>
					iai_i18n:[QmV6cGllY3puZSB6YWt1cHk=]
				</iaixsl:otherwise>
			</iaixsl:choose>
		</h5>
		<div class="order_process_security__img">
			<iaixsl:choose>
				<iaixsl:when test="/shop/@trust_level = '1'">
					<img src="/gfx/standards/superfair_light.svg?r=1765442497" alt="SuperFair.Shop badge"/>
				</iaixsl:when>
				<iaixsl:otherwise>
					<img src="/gfx/standards/safe_light.svg?r=1765442497" alt="Idosell security badge"/>
				</iaixsl:otherwise>
			</iaixsl:choose>
		</div>
	</div>

			</header>
		</iaixsl:if>
		<div id="layout">
			<iaixsl:attribute name="class">row clearfix</iaixsl:attribute>
			<iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'aside')">
				<aside class="span3">
					<iaixsl:choose>
						<iaixsl:when test="page/@type = 'projector'">
							<iaixsl:attribute name="class">col-3</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'search'">
							<iaixsl:attribute name="class">col-3 col-xl-2</iaixsl:attribute>
							<iaixsl:attribute name="aria-label">iai_i18n:[S2F0ZWdvcmllIGkgZmlsdHJ5]</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'main'">
							<iaixsl:attribute name="class">col-3</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'blog-item'">
							<iaixsl:attribute name="class">col-3 col-xl-2</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'blog-list'">
							<iaixsl:attribute name="class">col-3 col-xl-2</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:attribute name="class">col-3</iaixsl:attribute>
						</iaixsl:otherwise>
					</iaixsl:choose>
					<!-- (menu_wishlist, 60dd8ecf0ff704.93839526.7)-->
	<section class="shopping_list_menu">
		<div class="shopping_list_menu__block --lists slm_lists" data-empty="false">
			<iaixsl:if test="not(/shop/shopping_lists/list)">
				<iaixsl:attribute name="data-empty">true</iaixsl:attribute>
			</iaixsl:if>
			<a href="#showShoppingLists" class="slm_lists__label">iai_i18n:[TGlzdHkgemFrdXBvd2U=]</a>
			<ul class="slm_lists__nav">
				<li class="slm_lists__nav_item" data-list_skeleton="true" data-list_id="true" data-shared="true">
					<a href="#" class="slm_lists__nav_link" data-list_href="true">
						<span class="slm_lists__nav_name" data-list_name="true"/>
						<span class="slm_lists__count" data-list_count="true">0</span>
					</a>
				</li>
				<li class="slm_lists__nav_header">
					<a href="#hidehoppingLists" class="slm_lists__label"><span class="sr-only">iai_i18n:[V3LDs8SH]</span>iai_i18n:[TGlzdHkgemFrdXBvd2U=]</a>
				</li>
				<iaixsl:if test="not(/shop/shopping_lists/list)">
					<li class="slm_lists__nav_item --empty">
						<a class="slm_lists__nav_link --empty">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shoppinglist/@url"/></iaixsl:attribute>
							<span class="slm_lists__nav_name" data-list_name="true">iai_i18n:[TGlzdGEgemFrdXBvd2E=]</span>
							<span class="sr-only">iai_i18n:[aWxvxZvEhyBwcm9kdWt0w7N3]: </span>
							<span class="slm_lists__count" data-list_count="true">0</span>
						</a>
					</li>
				</iaixsl:if>
				<iaixsl:for-each select="/shop/shopping_lists/list">
					<li class="slm_lists__nav_item">
						<iaixsl:attribute name="data-list_id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
						<iaixsl:if test="@id = /shop/page/list/@id">
							<iaixsl:attribute name="data-current">true</iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:if test="@shared = 'true'">
							<iaixsl:attribute name="data-shared">true</iaixsl:attribute>
						</iaixsl:if>
						<a class="slm_lists__nav_link">
							<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
							<span class="slm_lists__nav_name" data-list_name="true"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
							<span class="sr-only">iai_i18n:[aWxvxZvEhyBwcm9kdWt0w7N3]: </span>
							<span class="slm_lists__count" data-list_count="true"><iaixsl:value-of select="@count"/></span>
							<iaixsl:if test="@shared = 'true'">
								<span class="sr-only">iai_i18n:[dWRvc3TEmXBuaW9uYQ==]</span>
							</iaixsl:if>
						</a>
					</li>
				</iaixsl:for-each>
			</ul>
			<a href="#manage" class="slm_lists__manage d-none align-items-center d-md-flex">iai_i18n:[WmFyesSFZHphaiBsaXN0YW1p]</a>
		</div>
		<div class="shopping_list_menu__block --bought slm_bought">
			<a class="slm_bought__link d-flex">
				<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/productsBought/@url"/></iaixsl:attribute>
				iai_i18n:[TGlzdGEgZG90eWNoY3phcyB6YW3Ds3dpb255Y2ggcHJvZHVrdMOzdw==]
			</a>
		</div>
		<div class="shopping_list_menu__block --info slm_info">
			<strong class="slm_info__label d-block mb-3">iai_i18n:[SmFrIGR6aWHFgmEgbGlzdGEgemFrdXBvd2E/]</strong>
			<ul class="slm_info__list">
				<li class="slm_info__list_item d-flex mb-3">
					iai_i18n:[UG8gemFsb2dvd2FuaXUgbW/FvGVzeiB1bWllxZtjacSHIGkgcHJ6ZWNob3d5d2HEhyBuYSBsacWbY2llIHpha3Vwb3dlaiBkb3dvbG7EhSBsaWN6YsSZIHByb2R1a3TDs3cgbmllc2tvxYRjemVuaWUgZMWCdWdv].
				</li>
				<li class="slm_info__list_item d-flex mb-3">
					iai_i18n:[RG9kYW5pZSBwcm9kdWt0dSBkbyBsaXN0eSB6YWt1cG93ZWogbmllIG96bmFjemEgYXV0b21hdHljem5pZSBqZWdvIHJlemVyd2Fjamk=].
				</li>
				<li class="slm_info__list_item d-flex mb-3">
					iai_i18n:[RGxhIG5pZXphbG9nb3dhbnljaCBrbGllbnTDs3cgbGlzdGEgemFrdXBvd2EgcHJ6ZWNob3d5d2FuYSBqZXN0IGRvIG1vbWVudHUgd3lnYcWbbmnEmWNpYSBzZXNqaSAob2tvxYJvIDI0aCk=].
				</li>
			</ul>
		</div>
	</section>
<!-- (menu_additional1, 614c5d2d239131.78356405.8)-->
            <iaixsl:variable name="SET_filters"/>
            <iaixsl:variable name="SET_categories">1</iaixsl:variable>
            <iaixsl:if test="$SET_categories and not($SET_categories = '')">
                <div id="mobileCategories" class="mobileCategories">
                    <div class="mobileCategories__item --menu">
                        <button type="button" class="mobileCategories__link --active">
                            <iaixsl:attribute name="data-ids">#menu_search,.shopping_list_menu,#menu_search,#menu_navbar,#menu_navbar3, #menu_blog</iaixsl:attribute>
                            iai_i18n:[TWVudQ==]
                        </button>
                    </div>
                    <div class="mobileCategories__item --account">
                        <button type="button" class="mobileCategories__link">
                            <iaixsl:attribute name="data-ids">#menu_contact,#login_menu_block</iaixsl:attribute>
                            iai_i18n:[S29udG8=]
                        </button>
                    </div>
                    <iaixsl:if test="((count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)) and not(/shop/select_language/@country_first = 'true')">
                        <div class="mobileCategories__item --settings">
                            <button type="button" class="mobileCategories__link">
                                <iaixsl:attribute name="data-ids">#menu_settings</iaixsl:attribute>
                                iai_i18n:[VXN0YXdpZW5pYQ==]
                            </button>
                        </div>
                    </iaixsl:if>
                    <iaixsl:if test="count(/shop/select_language/language/option) &gt; 1 and /shop/select_language/@country_first = 'true'">
                      <div class="mobileCategories__item --settings --select_language">
                          <button type="button" class="mobileCategories__link">
                              <iaixsl:attribute name="data-ids">#menu_settings</iaixsl:attribute>
                              <iaixsl:value-of select="/shop/select_language/language/option[@selected = 'true']/text()"/>
                          </button>
                      </div>
                    </iaixsl:if>
                </div>
            </iaixsl:if>
            <div class="setMobileGrid" data-item="#menu_navbar"/>
            <div class="setMobileGrid" data-item="#menu_navbar3">
				<iaixsl:if test="navigation/item">
					<iaixsl:attribute name="data-ismenu1">true</iaixsl:attribute>
				</iaixsl:if>
			</div>
            <div class="setMobileGrid" data-item="#menu_blog"/>
            <div class="login_menu_block d-lg-none" id="login_menu_block">
                <iaixsl:choose>
                    <iaixsl:when test="basket/@login">
                        <a class="your_account_link" href="/login.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-cog"/>  <span>iai_i18n:[VHdvamUga29udG8=]</span>
                            
                        </a>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-globe"/>  <span>iai_i18n:[U3ByYXdkxbogc3RhdHVzIHphbcOzd2llbmlh]</span>
                            
                        </a>
                        <iaixsl:if test="(/shop/basket/@client_id_upc != '') ">
                            <a class="client_card_link" href="##">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/login/@url"/>
                                </iaixsl:attribute>
                                 <i class="icon-barcode"/>  <span>iai_i18n:[SWRlbnR5ZmlrYXRvciBzdGHFgmVnbyBrbGllbnRh]</span>
                            </a>
                        </iaixsl:if>
                        <a class="rabates_link" href="/client-rebate.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <span class="font_icon">%</span> <span>iai_i18n:[TW9qZSByYWJhdHk=]</span>
                            
                        </a>
                        <a class="logout_link" href="/login.php?operation=logout">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-off" style="color: #CC0000;"/>  <span>iai_i18n:[V3lsb2d1aiBzacSZ]</span>
                            
                        </a>
                        <iaixsl:if test="action/personalized_recommendations/@url">
                            <a class="recommendation_link">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/personalized_recommendations/@url"/>
                                </iaixsl:attribute>

                                <i class="icon-thumbs-up" style="color: #0099D0;"/> <span>iai_i18n:[UmVrb21lbmRvd2FuZSBkbGEgQ2llYmll]</span>
                                
                            </a>
                        </iaixsl:if>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <a class="sign_in_link" href="/login.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-user"/>  <span>iai_i18n:[WmFsb2d1aiBzacSZ]</span>
                            
                        </a>
                        <a class="registration_link">
                            <iaixsl:choose>
              								<iaixsl:when test="count(/shop/action/registration_options/*) = 1">
              									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/registration_options/*/@registration_url"/></iaixsl:attribute>
              								</iaixsl:when>
              								<iaixsl:otherwise>
              									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/registration_options/retail/@registration_url"/></iaixsl:attribute>
              								</iaixsl:otherwise>
              							</iaixsl:choose>
                            <i class="icon-lock"/>  <span>iai_i18n:[WmFyZWplc3RydWogc2nEmQ==]</span>
                            
                        </a>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-globe"/>  <span>iai_i18n:[U3ByYXdkxbogc3RhdHVzIHphbcOzd2llbmlh]</span>
                            
                        </a>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </div>
            <div class="setMobileGrid" data-item="#menu_contact"/>
            <div class="setMobileGrid" data-item="#menu_settings"/>
            <iaixsl:if test="$SET_filters and not($SET_filters = '')">
                <div class="setMobileGrid">
                  <iaixsl:attribute name="data-item"><iaixsl:value-of select="$SET_filters"/></iaixsl:attribute>
                </div>
            </iaixsl:if>
        
				</aside>
			</iaixsl:if>
			

			
			<iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'content')">
				<main id="content" class="span9">
					<iaixsl:choose>
						<iaixsl:when test="page/@type = 'projector'">
							<iaixsl:attribute name="class">col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'search'">
							<iaixsl:attribute name="class">col-xl-10 col-md-9 col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'main'">
							<iaixsl:attribute name="class">col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'navigation'">
							<iaixsl:attribute name="class">col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'blog-list'">
							<iaixsl:attribute name="class">col-xl-10 col-md-9 col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'blog-item'">
							<iaixsl:attribute name="class">col-xl-10 col-md-9 col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:attribute name="class">col-12</iaixsl:attribute>
						</iaixsl:otherwise>
					</iaixsl:choose>

					<!-- (menu_messages, 60dd8e79b18501.50382803.13)-->

        <iaixsl:variable name="rebates_code_used">iai_i18n:[UG9kYW55IGtvZCByYWJhdG93eSB6b3N0YcWCIGp1xbwgd3lrb3J6eXN0YW55].</iaixsl:variable>

        <iaixsl:variable name="change_success">iai_i18n:[Wm1pYW55IHpvc3RhxYJ5IHphcGlzYW5l].</iaixsl:variable>

        <iaixsl:variable name="change_success_despite_no_change">iai_i18n:[Rm9ybXVsYXJ6IHpvc3RhxYIgemFwaXNhbnksIGFsZSDFvGFkbmUgZGFuZSBuaWUgem9zdGHFgnkgcHJ6ZXogQ2llYmllIHptaWVuaW9uZQ==]. </iaixsl:variable>


        <iaixsl:if test="count(/shop/page/communicates/warning)">

            <div class="menu_messages_warning" id="menu_messages_warning">


            <iaixsl:choose>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'message'">
                    <iaixsl:attribute name="class">menu_messages_message</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'warning'">
                    <iaixsl:attribute name="class">menu_messages_warning</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'error'">
                    <iaixsl:attribute name="class">menu_messages_error</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'success'">
                    <iaixsl:attribute name="class">menu_messages_success
                      <iaixsl:if test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                        returnDetails__message
                      </iaixsl:if>
                    </iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:otherwise/>
            </iaixsl:choose>


                <div class="menu_messages_warning_sub">
                    <iaixsl:for-each select="/shop/page/communicates/warning">
                        <p><iaixsl:choose>


                                <iaixsl:when test="@type='file_upload_invalid_type'">iai_i18n:[TmllIG1vxbxuYSB3Z3JhxIcgcGxpa3U=] <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>, iai_i18n:[cG9uaWV3YcW8IHphxYLEhWN6YW5pZSBwbGlrw7N3IHRlZ28gdHlwdSBqZXN0IG5pZWRvendvbG9uZQ==].</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_invalid_extension'">iai_i18n:[TmllIG1vxbxuYSB3Z3JhxIcgcGxpa3U=] <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>, iai_i18n:[cG9uaWV3YcW8IHphxYLEhWN6YW5pZSBwbGlrw7N3IHRlZ28gdHlwdSBqZXN0IG5pZWRvendvbG9uZQ==].</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_size_exceeded'">iai_i18n:[TmllIG1vxbxuYSB3Z3JhxIcgcGxpa3U=] <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>, iai_i18n:[cG9uaWV3YcW8IHByemVrcmFjemEgbWFrc3ltYWxueSBkb3p3b2xvbnkgcm96bWlhciAxMCBNQg==].</iaixsl:when>
                                <iaixsl:when test="@type='file_uploaded_remove_fail'">iai_i18n:[V3lzdMSFcGnFgiBixYJhZCBwb2RjemFzIHdncnl3YW5pYSBwbGlrdQ==] <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>.</iaixsl:when>


                                <iaixsl:when test="@type='rebates_code_expired'">iai_i18n:[VGVybWluIHdhxbxub8WbY2kgcG9kYW5lZ28ga29kdSByYWJhdG93ZWdvIGp1xbwgdXDFgnluxIXFgiBpIGplc3Qgb24gbmllYWt0eXdueQ==].</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_notbegun'">iai_i18n:[UG9kYW55IGtvZCByYWJhdG93eSBuaWUgamVzdCBqZXN6Y3plIGFrdHl3bnkuIFRhIHByb21vY2phIGplc3pjemUgc2nEmSBuaWUgcm96cG9jesSZxYJh].</iaixsl:when>

                               <iaixsl:when test="@type='order_minimal_wholesale_blocked'">iai_i18n:[TWluaW1hbG5hIHdhcnRvxZvEhyB6YWt1cMOzdyBodXJ0b3d5Y2ggd3lub3Np]: <iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>
                                </iaixsl:when>

                            <iaixsl:when test="@type='order_minimal_wholesale_changed'">iai_i18n:[TWltbywgxbxlIGplc3RlxZsgaHVydG93bmlraWVtLCB3aWR6aXN6IHcgcG9kc3Vtb3dhbml1IHphbcOzd2llbmlhIGNlbnkgZGV0YWxpY3puZS4gV3luaWthIHRvIHogdGVnbywgxbxlIG1pbmltYWxuYSB3YXJ0b8WbxIcgZGxhIHphbcOzd2llbmlhIGh1cnRvd2VnbyBuaWUgem9zdGHFgmEgb3NpxIVnbmnEmXRhLiBTa8WCYWRhasSFYyB6YW3Ds3dpZW5pZSB3IG9wYXJjaXUgbyBha3R1YWxueSBrb3N6eWsgesWCb8W8eXN6IHphbcOzd2llbmllIGRldGFsaWN6bmU=].</iaixsl:when>




                                <iaixsl:when test="@type='openid_invalid_authorization'">iai_i18n:[QsWCxIVkIGF1dG9yeXphY2pp].</iaixsl:when>
                                <iaixsl:when test="@type='suggest_sent'">iai_i18n:[WmFwcm9zemVuaWUgZG8gb2R3aWVkemVuaWEgc2tsZXB1IHpvc3RhxYJvIHd5c8WCYW5lIGRv] <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='search_to_many_products'">iai_i18n:[Wm5hbGV6aW9ubyB6Ynl0IHdpZWxlIHByb2R1a3TDs3cuIFNrb3J6eXN0YWogeiB3eXN6dWtpd2Fya2kgYWJ5IHphd8SZemnEhyB3eW5pa2kgd3lzenVraXdhbmlh].</iaixsl:when>
                                <iaixsl:when test="@type='search_products_not_found'">iai_i18n:[U3p1a2FueSBwcm9kdWt0IG5pZSB6b3N0YcWCIHpuYWxlemlvbnkuIFNrb3J6eXN0YWogeg==] <a href="/searching.php" title="Kliknij, aby przejść do wyszukiwarki zaawansowanej">iai_i18n:[d3lzenVraXdhcmtp]</a>.</iaixsl:when>
                                <iaixsl:when test="@type='search_text_to_short'">iai_i18n:[UG9kYW55IHRla3N0IGplc3QgemJ5dCBrcsOzdGtpLiBTcHLDs2J1aiBwb2RhxIcgZMWCdcW8c3p5IHRla3N0IGx1YiBza29yenlzdGFqIHogd3lzenVraXdhcmtp].</iaixsl:when>
                                <iaixsl:when test="@type='login taken'">iai_i18n:[UG9kYW55IGxvZ2luIHpvc3RhxYIganXFvCB6YXJlamVzdHJvd2FueSBwcnpleiBpbm5lZ28ga2xpZW50YS4gV3liaWVyeiBwcm9zesSZIGlubsSFIG5henfEmSBsdWIgem1vZHlmaWt1aiB0xIUgZG9kYWrEhWMgbnAuIGN5ZnJ5].</iaixsl:when>
                                <iaixsl:when test="@type='account_not_added'">iai_i18n:[V3lzdMSFcGnFgnkgYsWCxJlkeSBpIGtvbnRvIGtsaWVudGEgbmllIHpvc3RhxYJvIGRvZGFuZSAtIHNwcsOzYnVqIHBvbm93bmllIHDDs8W6bmllag==]</iaixsl:when>
                                <iaixsl:when test="@type='exists such account'">iai_i18n:[S29udG8gbyBwb2RvYm55Y2ggZGFueWNoIGp1xbwgaXN0bmllamUgdyBuYXN6eW0gc2tsZXBpZS4gSmXFvGVsaSB6YWvFgmFkYcWCZcWbIHdjemXFm25pZWoga29udG8gdyBuYXN6eW0gc2tsZXBpZSBhIG5pZSBwYW1pxJl0YXN6IGhhc8WCYSwgc2tvcnp5c3RhaiB6] <a href="/password-recover.php">iai_i18n:[cHJ6eXBvbWluYW5pYSBoYXPFgmE=]</a></iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_deleted'">iai_i18n:[V3NrYXphbnkgYWRyZXMgZG9zdGF3eSBuaWUgbW/FvGUgYnnEhyB1c3VuaWV0eQ==].</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_selected'">iai_i18n:[V3NrYXphbnkgYWRyZXMgZG9zdGF3eSBuaWUgbW/FvGUgem9zdGHEhyBhZHJlc2VtIGRvbXnFm2xueW0=].</iaixsl:when>
                                <iaixsl:when test="@type='no login'">iai_i18n:[TmllIHBvZGHFgmXFmyBsb2dpbnU=].</iaixsl:when>
                                <iaixsl:when test="@type='incorect login'">iai_i18n:[V3licmFueSBsb2dpbiBqZXN0IG5pZXBvcHJhd255LiBMb2dpbiBtdXNpIG1pZcSHIG1pbmltdW0gMywgYSBtYWtzaW11bSA0MCB6bmFrw7N3ICh0eWxrbyBsaXRlcnkgbHViIGN5ZnJ5KQ==].</iaixsl:when>
                                <iaixsl:when test="@type='no password'">iai_i18n:[TmllIHBvZGHFgmXFmyBoYXPFgmE=].</iaixsl:when>
                                <iaixsl:when test="@type='password to short'">iai_i18n:[UG9wcmF3bmUgaGFzxYJvIG11c2kgc2vFgmFkYcSHIHNpxJkgcHJ6eW5ham1uaWVqIHogNiB6bmFrw7N3IGkgbmllIHdpxJljZWogbmnFvCAxNSB6bmFrw7N3].</iaixsl:when>


                                <iaixsl:when test="@type='password_to_long'">iai_i18n:[UG9wcmF3bmUgaGFzxYJvIG11c2kgc2vFgmFkYcSHIHNpxJkgcHJ6eW5ham1uaWVqIHogNiB6bmFrw7N3IGkgbmllIHdpxJljZWogbmnFvCAxNSB6bmFrw7N3].</iaixsl:when>


                                <iaixsl:when test="@type='login equals password'">iai_i18n:[UG9wcmF3bmUgaGFzxYJvIG11c2kgYnnEhyByw7PFvG5lIG9kIGxvZ2ludQ==].</iaixsl:when>
                                <iaixsl:when test="@type='not equal passwords'">iai_i18n:[SGFzxYJvIGkgcG90d2llcmR6ZW5pZSBoYXPFgmEgc8SFIHLDs8W8bmU=].</iaixsl:when>
                                <iaixsl:when test="@type='no firstname'">iai_i18n:[UG9kYW5lIGltacSZIGplc3QgemEga3LDs3RraWU=].</iaixsl:when>
                                <iaixsl:when test="@type='no name'">iai_i18n:[QnJha3VqZSBpbWllbmlhIGx1YiBuYXp3aXNrYQ==].</iaixsl:when>
                                <iaixsl:when test="@type='birth_date'">iai_i18n:[RGF0YSB1cm9kemVuaWEgemF3aWVyYSBuaWVwcmF3aWTFgm93ZSB3YXJ0b8WbY2kgbHViIHphcGlzYW5hIGplc3QgdyBuaWVwcmF3aWTFgm93eW0gZm9ybWFjaWU=].</iaixsl:when>
                                <iaixsl:when test="@type='incorect email'">iai_i18n:[QWRyZXMgZS1tYWlsIGplc3QgYsWCxJlkbnk=].</iaixsl:when>
                                <iaixsl:when test="@type='incorect nip'">iai_i18n:[V3Bpc3VqxIVjIE5JUCB1cGV3bmlqIHNpxJksIMW8ZSB1xbx5d2FzeiBvZHBvd2llZG5pZWdvIGZvcm1hdHUgZGxhIHd5YnJhbmVnbyBrcmFqdSwgbnAuIFhYWFhYWFhYWFggZGxhIE5JUCBwb2xza2llZ28gbHViIFBMWFhYWFhYWFhYWCBkbGEgTklQIEVV].</iaixsl:when>

                                <iaixsl:when test="@type='no firmname'">iai_i18n:[TmF6d2EgZmlybXkgbmllIHpvc3RhxYJhIHBvZGFuYSBwcmF3aWTFgm93bw==].</iaixsl:when>

                                <iaixsl:when test="@type='incorrect region'">iai_i18n:[UG9kYW55IHJlZ2lvbiBqZXN0IGLFgsSZZG55].</iaixsl:when>
                                <iaixsl:when test="@type='no city'">iai_i18n:[UG9kYW5lIG1pYXN0byBqZXN0IGLFgsSZZG5l].</iaixsl:when>
                                <iaixsl:when test="@type='no street'">iai_i18n:[UG9kYW55IGFkcmVzIGplc3QgYsWCxJlkbnk=].</iaixsl:when>

                               <iaixsl:when test="@type='no_street_number'">iai_i18n:[UG9kYW55IGFkcmVzIGplc3QgYsWCxJlkbnk=].</iaixsl:when>


                                <iaixsl:when test="@type='incorect phone'">iai_i18n:[UG9kYW55IHRlbGVmb24gamVzdCBixYLEmWRueQ==].</iaixsl:when>
                                <iaixsl:when test="@type='incorect spare phone'">iai_i18n:[UG9kYW55IHRlbGVmb24gemFwYXNvd3kgamVzdCBixYLEmWRueQ==].</iaixsl:when>
                                <iaixsl:when test="@type='incorect zipcode'">iai_i18n:[TmllcG9wcmF3bnkga29kIHBvY3p0b3d5].</iaixsl:when>
                                <iaixsl:when test="@type='double_address_error'">iai_i18n:[SmXFvGVsaSBhZHJlcyBkb3N0YXd5IG1hIGJ5xIcgdGFraSBzYW0gamFrIGFkcmVzIGt1cHVqxIVjZWdvIHphem5hY3ogb2Rwb3dpZWRuacSFIG9wY2rEmQ==].</iaixsl:when>
                                <iaixsl:when test="@type='no delivery firstname'">iai_i18n:[UG9kYW5lIGltacSZIG9kYmlvcmN5IGplc3QgemEga3LDs3RraWU=].</iaixsl:when>
                                <iaixsl:when test="@type='no delivery lastname'">iai_i18n:[UG9kYW5lIG5hendpc2tvIG9kYmlvcmN5IGplc3QgemEga3LDs3RraWU=].</iaixsl:when>
                                <iaixsl:when test="@type='no delivery city'">iai_i18n:[UG9kYW5lIG1pYXN0byBvZGJpb3JjeSBqZXN0IGLFgsSZZG5l].</iaixsl:when>
                                <iaixsl:when test="@type='no delivery street'">iai_i18n:[UG9kYW55IGFkcmVzIG9kYmlvcmN5IGplc3QgYsWCxJlkbnk=].</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery region'">iai_i18n:[UG9kYW55IHJlZ2lvbiBvZGJpb3JjeSBqZXN0IGLFgsSZZG55].</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery zipcode'">iai_i18n:[TmllcG9wcmF3bnkga29kIHBvY3p0b3d5IG9kYmlvcmN5].</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_hhtransfer_error'">iai_i18n:[V3lzdMSFcGnFgnkgYsWCxJlkeSBwxYJhdG5vxZtjaSBwdW5rdGFtaQ==].</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_voucher_error'">iai_i18n:[V3lzdMSFcGnFgnkgYsWCxJlkeSBwxYJhdG5vxZtjaSBib25lbQ==].
                                    <iaixsl:if test="@value='v1'">iai_i18n:[VyB0eW0gc2tsZXBpZSwgdGVuIGJvbiBqZXN0IG5pZXdhxbxueQ==].</iaixsl:if>
                                    <iaixsl:if test="@value='v2'">iai_i18n:[TnVtZXIgYm9udSBqZXN0IG5pZXBvcHJhd255LiBOaWUgaXN0bmllamUgYm9uIG8gdGFraW0gaWRlbnR5ZmlrYXRvcnplLiBTcHLDs2J1aiB3cGlzYcSHIGlkZW50eWZpa2F0b3IgcG9ub3duaWUsIHVwZXduaWFqxIVjIHNpxJksIMW8ZSBqZXN0IG9uIHBvcHJhd255].</iaixsl:if>
                                    <iaixsl:if test="@value='v3'">iai_i18n:[VGVuIGJvbiBqZXN0IHphYmxva293YW55].</iaixsl:if>
                                    <iaixsl:if test="@value='v4'">iai_i18n:[VGVuIGJvbiB6b3N0YcWCIGp1xbwgd3lrb3J6eXN0YW55].</iaixsl:if>
                                    <iaixsl:if test="@value='v5'">iai_i18n:[VGVuIGJvbiBqZXN0IGp1xbwgbmlld2HFvG55IC0gdGVybWluIHdhxbxub8WbY2kgbWluxIXFgg==].</iaixsl:if>
                                    <iaixsl:if test="@value='v7'">iai_i18n:[Qm9uIG8gcG9kYW55bSBpZGVudHlmaWthdG9yemUgbmllIGlzdG5pZWplLiBTcHLDs2J1aiB3cGlzYcSHIGlkZW50eWZpa2F0b3IgcG9ub3duaWU=].</iaixsl:if>
                                    <iaixsl:if test="@value='v8'">iai_i18n:[TmllIHBvZGFubyBpZGVudHlmaWthdG9yYSBib251].</iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_incorrect_paymentid'">iai_i18n:[V3lzdMSFcGnFgnkgYsWCxJlkeSAtIHd5YmllcnogaW5uxIUgZm9ybcSZIHDFgmF0bm/Fm2Np].</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_error'">iai_i18n:[V3lzdMSFcGnFgnkgYsWCxJlkeSBwxYJhdG5vxZtjaS4gU3Byw7NidWogcG9ub3duaWUgb3DFgmFjacSHIHphbcOzd2VuaWUgemEgY2h3aWzEmQ==].</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_points_error'">iai_i18n:[TmllIG1hc3ogd3lzdGFyY3phasSFY2VqIGlsb8WbY2kgcHVua3TDs3cgbG9qYWxub8WbY2lvd3ljaCBhYnkgb3DFgmFjacSHIHRvIHphbcOzd2llbmllLSB3eWJpZXJ6IGlubsSFIGZvcm3EmSBwxYJhdG5vxZtjaQ==].</iaixsl:when>

                                <iaixsl:when test="@type='filter_products_not_found'">iai_i18n:[TmllIHpuYWxlemlvbm8gcHJvZHVrdMOzdyBvIHphZGFueWNoIGtyeXRlcmlhY2ggZmlsdHJvd2FuaWEuIFptaWXFhCBwYXJhbWV0cnkgZmlsdHLDs3c=].</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_error'">iai_i18n:[V3lzdMSFcGnFgiBuaWV6bmFueSBixYLEhWQuIEFua2lldGEgbmllIHpvc3RhxYJhIHd5c8WCYW5h].</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_sent'">iai_i18n:[QW5raWV0YSB6b3N0YcWCYSB3eXPFgmFuYS4gRHppxJlrdWplbXkh]</iaixsl:when>

                                <iaixsl:when test="@type='orderopen_not_found'">iai_i18n:[UG9kYW5lIHByemV6IENpZWJpZSBkYW5lIHPEhSBuaWVwcmF3aWTFgm93ZS4gUG9zdGFyYWogc2nEmSBvZHN6dWthxIcgdGVsZWZvbiBsdWIgZS1tYWlsIGt0w7NyeSBwb2RhxYJlxZsgcHJ6eSBza8WCYWRhbml1IHphbcOzd2llbmlhIGx1YiBzcHJhd2TFuiBjenkgcG9kYXdhbnkgaWRlbnR5ZmlrYXRvciB6YW3Ds3dpZW5pYSBqZXN0IHBvcHJhd255LiBKZcW8ZWxpIG1pbW8ga2lsa3UgcHLDs2IgbmllIG1vxbxlc3ogb3R3b3J6ecSHIHphbcOzd2llbmlhIHBvcHJ6ZXogdMSFIHN0cm9uxJksIHByb3NpbXkgbw==] <a href="/contact.php">iai_i18n:[a29udGFrdA==]</a>.</iaixsl:when>

                                <iaixsl:when test="@type='order_nonstandard_inactive'">iai_i18n:[UHJ6ZXByYXN6YW15LCBhbGUgbmllIHByemV3aWR6aWVsacWbbXkga29zenTDs3cgZG9zdGF3eSBkbGEgVHdvamVnbyB6YW3Ds3dpZW5pYS4gQ2hjaWVsaWJ5xZtteSBqZSBqZWRuYWsgcHJ6eWrEhcSHLiBEbGF0ZWdvIHByb3NpbXkgQ2llYmllIG8ga29udGFrdCB6] <a href="/contact.php">iai_i18n:[b2JzxYJ1Z8SFIG5hc3plZ28gc2tsZXB1]</a> iai_i18n:[dyBjZWx1IHVzdGFsZW5pYSBtb8W8bGl3b8WbY2kgcHJ6eWrEmWNpYSBpIHJlYWxpemFjamkgemFtw7N3aWVuaWE=].</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_worth'">iai_i18n:[UHJ6ZXByYXN6YW15LCBhbGUgbmllIHByemV3aWR6aWVsacWbbXkgbW/FvGxpd2/Fm2NpIHNrxYJhZGFuaWEgemFtw7N3aWVuaWEgeiB0YWvEhSB3YXJ0b8WbY2nEhSB6YW3Ds3dpZW5pYS4gQ2hjaWVsaWJ5xZtteSBqZSBqZWRuYWsgcHJ6eWrEhcSHLiBEbGF0ZWdvIHByb3NpbXkgQ2llYmllIG8ga29udGFrdCB6] <a href="/contact.php">iai_i18n:[b2JzxYJ1Z8SFIG5hc3plZ28gc2tsZXB1]</a> iai_i18n:[dyBjZWx1IHVzdGFsZW5pYSBtb8W8bGl3b8WbY2kgcHJ6eWrEmWNpYSBpIHJlYWxpemFjamkgemFtw7N3aWVuaWE=].</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_weight'">iai_i18n:[UHJ6ZXByYXN6YW15LCBhbGUgbmllIHByemV3aWR6aWVsacWbbXkgbW/FvGxpd2/Fm2NpIHNrxYJhZGFuaWEgemFtw7N3aWVuaWEgeiB0YWvEhSB3YWfEhSB6YW3Ds3dpZW5pYS4gQ2hjaWVsaWJ5xZtteSBqZSBqZWRuYWsgcHJ6eWrEhcSHLiBEbGF0ZWdvIHByb3NpbXkgQ2llYmllIG8ga29udGFrdCB6] <a href="/contact.php">iai_i18n:[b2JzxYJ1Z8SFIG5hc3plZ28gc2tsZXB1]</a> iai_i18n:[dyBjZWx1IHVzdGFsZW5pYSBtb8W8bGl3b8WbY2kgcHJ6eWrEmWNpYSBpIHJlYWxpemFjamkgemFtw7N3aWVuaWE=].</iaixsl:when>
                                

                                <iaixsl:when test="@type='no-auction-info'">
                                    iai_i18n:[QnJhayBpbmZvcm1hY2ppIG8gYXVrY2pp].
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-auction-account'">
                                    iai_i18n:[QnJhayBpbmZvcm1hY2ppIG8ga29uY2ll].
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-allegro-item'">
                                    iai_i18n:[QnJhayBpbmZvcm1hY2ppIG8gcHJ6ZWRtaW9jaWUgYXVrY2pp].
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-buyer-info'">
                                    iai_i18n:[QnJhayBpbmZvcm1hY2ppIG8ga3VwdWrEhWN5bQ==].
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-seller-info'">
                                    iai_i18n:[QnJhayBpbmZvcm1hY2ppIG8gc3ByemVkYWrEhWN5bQ==].
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-shipping'">
                                    iai_i18n:[QnJhayBpbmZvcm1hY2ppIG8gZG9zdMSZcG55Y2ggcHJ6ZXN5xYJrYWNo].
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-order'">
                                    iai_i18n:[QnJhayBpbmZvcm1hY2ppIG8gemFtw7N3aWVuaXU=].
                                </iaixsl:when>
                                <iaixsl:when test="@type='less_del'">
                                    iai_i18n:[VXN1bmnEmWNpZSB3c3p5c3RraWNoIHN6dHVrIG5pZSBqZXN0IG1vxbxsaXdlLiBaYW3Ds3dpZW5pZSBtdXNpIHphd2llcmHEhyBtaW5pbXVtIHR5bGUgc3p0dWsgcHJvZHVrdMOzdyBpbGUgemFrdXBpxYJlxZsgbmEgYXVrY2pp]. 
                                </iaixsl:when>
                                <iaixsl:when test="@type='cant_del'">
                                    iai_i18n:[TmllIG1vxbxuYSB1c3VuxIXEhyBwcm9kdWt0w7N3IHogemFtw7N3aWVuaWEsIGdkecW8IGljaCBpbG/Fm8SHIGplc3QgcsOzd25hIHd5bGljeXRvd2FuZWo=].
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">
                                    iai_i18n:[UG9kYW5vIHBvcHJhd255IGtvZCByYWJhdG93eQ==].
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_undefined'">
                                    iai_i18n:[UG9kYW55IGtvZCByYWJhdG93eSAvIG51bWVyIGthcnR5IHJhYmF0b3dlaiBuaWUgaXN0bmllamU=].
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_deleted'">
                                    iai_i18n:[VXN1bmnEmXRvIGtvZCByYWJhdG93eSB6IGtvc3p5a2E=].
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_used' and $rebates_code_used">
                                     <iaixsl:value-of select="$rebates_code_used"/>
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_begins'">
                                    iai_i18n:[UHJvbW9jamEgZGxhIHRlZ28ga29kdSByYWJhdG93ZWdvIGplc3pjemUgc2nEmSBuaWUgcm96cG9jemXFgmE=].
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_expires'">
                                    iai_i18n:[UHJvbW9jamEgZGxhIHRlZ28ga29kdSByYWJhdG93ZWdvIGp1xbwgc2nEmSBza2/FhGN6ecWCYQ==].
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_undefined'">
                                    iai_i18n:[UG9kYW55IG51bWVyIGthcnR5IGplc3QgbmllcHJhd2lkxYJvd3kuIFNwcsOzYnVqIHBvbm93bmllIGx1Yg==] <a href="/contact.php">iai_i18n:[c2tvbnRha3R1aiBzacSZIHogb2JzxYJ1Z8SFIHNrbGVwdQ==]</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_expires'">
                                    iai_i18n:[VGVybWluIHdhxbxub8WbY2kga2FydHkgdXDFgnluxIXFgg==].
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_blocked'">
                                    iai_i18n:[VGEga2FydGEgem9zdGHFgmEgemFibG9rb3dhbmE=]. <a href="/contact.php">iai_i18n:[U2tvbnRha3R1aiBzacSZIHogb2JzxYJ1Z8SFIHNrbGVwdQ==]</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_ok'">
                                    iai_i18n:[S2FydGEgem9zdGHFgmEgYWt0eXdvd2FuYQ==].
                                </iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_error'">
                                    iai_i18n:[V3lzdMSFcGnFgiBixYLEhWQgcHJ6eSBwcsOzYmllIHJlamVzdHJhY2ppIHpnxYJvc3plbmlh].
                                </iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_registered'">
                                    iai_i18n:[VHdvamUga29udG8gem9zdGHFgm8gemFyZWplc3Ryb3dhbmUgamFrbyBodXJ0b3dlLiBOaWUgbW/FvGVzeiB6xYJvxbx5xIcga29sZWpuZWdvIHpnxYJvc3plbmlh].
                                </iaixsl:when>
                                <iaixsl:when test="@type='ordered_empty'">
                                    iai_i18n:[VHdvamEgbGlzdGEgemFrdXBpb255Y2ggcHJvZHVrdMOzdyBqZXN0IHB1c3Rh].
                                </iaixsl:when>

                                <iaixsl:when test="@type='shipping_error'">
                                    iai_i18n:[TmllIHd5c3nFgmFteSBkbyB0d29qZWdvIGtyYWp1].
                                </iaixsl:when>
                                <iaixsl:when test="@type='basket_empty'">
                                    iai_i18n:[VHfDs2oga29zenlrIGplc3QgcHVzdHk=].
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_minimum'">
                                    iai_i18n:[WmEgbWHFgmEgd2FydG/Fm8SHIHphbcOzd2llbmlh].
                                    <iaixsl:if test="@value&gt;0">
                                        iai_i18n:[TWluaW1hbG5hIHdhcnRvxZvEhyB6YW3Ds3dpZW5pYSB0bw==] 
                                        <iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>

                                        
                                    </iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_tomuch'">
                                    iai_i18n:[V2FydG/Fm8SHIHphbcOzd2llbmlhIGplc3QgemJ5dCBkdcW8YQ==].
                                    <iaixsl:if test="@value&gt;0">
                                        iai_i18n:[TWFrc3ltYWxuYSB3YXJ0b8WbxIcgemFtw7N3aWVuaWEgdG8=]                <iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>
                                    </iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='requiredPhoneAndEmail'">
                                    iai_i18n:[V3licmFuYSBvcGNqYSBkb3N0YXd5IHd5bWFnYSBwb2RhbmlhIG51bWVydSB0ZWxlZm9udSBvcmF6IGFkcmVzdSBlLW1haWwuIEFieSB1enVwZcWCbmnEhyB0ZSBpbmZvcm1hY2plIHNrb3J6eXN0YWogeg==] 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">iai_i18n:[S2xpa25paiwgYWJ5IHByemVqxZvEhyBkbyBlZHljamkgZGFueWNoIGkgdXp1cGXFgm5pxIcgbmllemLEmWRuZSBpbmZvcm1hY2pl].</iaixsl:attribute>
                                        iai_i18n:[Zm9ybXVsYXJ6YSBlZHljamkgZGFueWNoIGtsaWVudGE=]
                                    </a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupSites'">
                                    iai_i18n:[VGVuIHJvZHphaiBkb3N0YXd5IG5pZSBqZXN0IGFrdHVhbG5pZSBkb3N0xJlwbnkuIFByb3NpbXkgbw==] 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">iai_i18n:[S2xpa25paiwgYWJ5IHdyw7NjacSHIGRvIHd5Ym9ydSBmb3JteSBkb3N0YXd5].</iaixsl:attribute>
                                        iai_i18n:[d3licmFuaWUgaW5uZWogZm9ybXkgZG9zdGF3eSBsdWIgc3Bvc29idSBwxYJhdG5vxZtjaQ==].
                                    </a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupStocks'">
                                    iai_i18n:[T2RiacOzciBvc29iaXN0eSB6YW3Ds3dpZW5pYSBqZXN0IHcgdGVqIGNod2lsaSBuaWVtb8W8bGl3eS4gUHJvc2lteSBv] 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">iai_i18n:[S2xpa25paiwgYWJ5IHdyw7NjacSHIGRvIHd5Ym9ydSBmb3JteSBkb3N0YXd5].</iaixsl:attribute>
                                        iai_i18n:[d3licmFuaWUgaW5uZWogZm9ybXkgZG9zdGF3eSBsdWIgc3Bvc29idSBwxYJhdG5vxZtjaQ==].
                                    </a>
                                    .
                                </iaixsl:when>

                                <iaixsl:when test="@type='rma_edit_error'">iai_i18n:[V3lzdMSFcGnFgiBixYLEhWQgcG9kY3phcyBlZHljamkgcmVrbGFtYWNqaQ==].</iaixsl:when>

                                <iaixsl:when test="@type='onlyHttps'">iai_i18n:[RG9rb25hxIcgcMWCYXRub8WbY2kga2FydMSFIGtyZWR5dG93xIUgbW/FvG5hIHR5bGtvIHByenkgdcW8eWNpdSBzenlmcm93YW5lZ28gcG/FgsSFY3plbmlhLiBTcHJhd2TFuiBjenkgYWRyZXMgc2tsZXB1IHBvcHJ6ZWR6b255IGplc3QgcHJvdG9rb8WCZW0gSFRUUFMgbHViIHNrb250YWt0dWogc2nEmSB6IG9ic8WCdWfEhSBza2xlcHU=].</iaixsl:when>

                                <iaixsl:when test="@type='login_unavailable'">iai_i18n:[TmllIG1vxbxuYSBwb8WCxIVjennEhyB6IHBvZGFueW0ga29udGVtIHogaW5uZWdvIHNlcndpc3UsIHBvbmlld2HFvCBwb2RhbmUga29udG8gamVzdCBqdcW8IHBvxYLEhWN6b25lIHogaW5ueW0ga29udGVtIGtsaWVudGEgdyBuYXN6eW0gc2tsZXBpZS4gTW/FvGVzeiB3eWxvZ293YcSHIHNpxJkgeiB0ZWdvIGtvbnRhIGtsaWVudGEgaSB6YWxvZ293YcSHIHBvbm93bmllIGRhbnltaSB6IHNlcndpc3UgemV3bsSZdHJ6bmVnbw==]<iaixsl:value-of select="@value"/>.</iaixsl:when>

                                <iaixsl:when test="@type='token_expired'">iai_i18n:[TGluayBkb3N0xJlwdSBkbyBUd29pY2ggZGFueWNoIHN0cmFjacWCIGp1xbwgd2HFvG5vxZvEhy4gTW/FvGVzeiB6YWxvZ293YcSHIHNpxJkgbmEgaW5uZSBrb250byBsdWIgd3lnZW5lcm93YcSHIG5vd3kgbGluayBrb3J6eXN0YWrEhWMgeiBvcGNqaQ==] <a class="password_reminder_signin" href="#signin-form_radio2">iai_i18n:[TmllIHBhbWnEmXRhbSBsb2dpbnUgbHViIGhhc8WCYQ==].</a></iaixsl:when>

                                <iaixsl:otherwise>
                                    <iaixsl:value-of disable-output-escaping="yes" select="description"/>
                                </iaixsl:otherwise>

                        </iaixsl:choose></p>
                    </iaixsl:for-each>
                    <iaixsl:if test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                      <span>iai_i18n:[TnIgendyb3R1]: <iaixsl:value-of select="/shop/page/details/@id"/></span>
                    </iaixsl:if>
            </div></div>
        </iaixsl:if>


        <iaixsl:if test="(count(/shop/page/communicates/message) and not(/shop/page/communicates/message/@type = 'login_connect')) or (/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3))">
            <div class="menu_messages_message" id="menu_messages_warning">


            <iaixsl:choose>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'message'">
                    <iaixsl:attribute name="class">menu_messages_message</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'warning'">
                    <iaixsl:attribute name="class">menu_messages_warning</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'error'">
                    <iaixsl:attribute name="class">menu_messages_error</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'success'">
                    <iaixsl:attribute name="class">menu_messages_success
                      <iaixsl:if test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                        returnDetails__message
                      </iaixsl:if>
                    </iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                  <iaixsl:attribute name="class">
                    <iaixsl:choose><iaixsl:when test="page/details/@status=1">menu_messages_message</iaixsl:when><iaixsl:when test="page/details/@status=2">menu_messages_success</iaixsl:when><iaixsl:when test="page/details/@status=3">menu_messages_error</iaixsl:when><iaixsl:when test="page/details/@status=13">menu_messages_error</iaixsl:when><iaixsl:when test="page/details/@status=14">menu_messages_error</iaixsl:when><iaixsl:when test="page/details/@status=15">menu_messages_message</iaixsl:when><iaixsl:when test="page/details/@status=16">menu_messages_error</iaixsl:when><iaixsl:when test="page/details/@status=17">menu_messages_success</iaixsl:when><iaixsl:when test="page/details/@status=18">menu_messages_success</iaixsl:when></iaixsl:choose>
                    returnDetails__message
                    </iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:otherwise/>
            </iaixsl:choose>


                <div class="menu_messages_message_sub">
                    <iaixsl:for-each select="/shop/page/communicates/message">
                        <p><iaixsl:choose>
                                <iaixsl:when test="@type='change_success' and $change_success">
                                     <iaixsl:value-of select="$change_success"/>
                                </iaixsl:when>
                                <iaixsl:when test="@type='change_success_despite_no_change' and $change_success_despite_no_change">
                                     <iaixsl:value-of select="$change_success_despite_no_change"/>
                                </iaixsl:when>

                                <iaixsl:when test="@type='affiliate_not_active'">iai_i18n:[TmllIGplc3RlxZsgemFsb2dvd2FueSBsdWIgc2tsZXAgbmllIHBvc2lhZGEgYWt0eXduZWdvIHByb2dyYW11IHBhcnRuZXJza2llZ28=].</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_deleted'">iai_i18n:[V3NrYXphbnkgYWRyZXMgZG9zdGF3eSB6b3N0YcWCIHVzdW5pxJl0eQ==].</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_off'">iai_i18n:[TmllIG1hc3ogYWt0eXdvd2FuZWdvIHByb2dyYW11IHBhcnRuZXJza2llZ28uIEplxbxlbGkgY2hjZXN6IGFrdHl3b3dhxIcgdGFrxIUgbW/FvGxpd2/Fm8SHIG11c2lzeiBza29udGFrdG93YcSHIHNpxJkgeiBvYnPFgnVnxIUgc2tsZXB1].</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_blocked'">iai_i18n:[VHfDs2ogcHJvZ3JhbSBwYXJ0bmVyc2tpIHpvc3RhxYIgemFibG9rb3dhbnk=].</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_selected'">iai_i18n:[V3NrYXphbnkgYWRyZXMgZG9zdGF3eSB6b3N0YcWCIHVzdGF3aW9ueSBqYWtvIGRvbXnFm2xueQ==].</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">iai_i18n:[UG9kYW5vIHBvcHJhd255IGtvZCByYWJhdG93eQ==].</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_added'">iai_i18n:[WmfFgm9zemVuaWUgem9zdGHFgm8gemFyZWplc3Ryb3dhbmU=].</iaixsl:when>
                                <iaixsl:when test="@type='login_connected'">iai_i18n:[UG9tecWbbG5pZSBwb8WCxIVjem9ubyBrb250byB3IHNrbGVwaWUgeiBrb250ZW0gdyBzZXJ3aXNpZQ==] <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='login_disconnected'">iai_i18n:[S29udG8gem9zdGHFgm8gcm96xYLEhWN6b25lIHo=] <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='login_unavailable'">iai_i18n:[TmllIG1vxbxuYSBwb8WCxIVjennEhyB6IHBvZGFueW0ga29udGVtIHogaW5uZWdvIHNlcndpc3UsIHBvbmlld2HFvCBwb2RhbmUga29udG8gamVzdCBqdcW8IHBvxYLEhWN6b25lIHogaW5ueW0ga29udGVtIGtsaWVudGEgdyBuYXN6eW0gc2tsZXBpZS4gTW/FvGVzeiB3eWxvZ293YcSHIHNpxJkgeiB0ZWdvIGtvbnRhIGtsaWVudGEgaSB6YWxvZ293YcSHIHBvbm93bmllIGRhbnltaSB6IHNlcndpc3UgemV3bsSZdHJ6bmVnbw==]<iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='openid_login_canceled'">iai_i18n:[TG9nb3dhbmllIGFudWxvd2FuZQ==].</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_changed'">iai_i18n:[WmfFgm9zemVuaWUgem9zdGHFgm8gem1pZW5pb25l].</iaixsl:when>
                                <iaixsl:when test="@type='wisheslist_empty'">iai_i18n:[VHdvamEgbGlzdGEgemFrdXBvd2EgamVzdCBwdXN0YQ==].</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_empty'">iai_i18n:[VHdvamEgbGlzdGEgcG9zenVraXdhbnljaCBwcm9kdWt0w7N3IGplc3QgcHVzdGE=].</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_added'">iai_i18n:[WmfFgm9zemVuaWUgcG9zenVraXdhbmVnbyBwcm9kdWt0dSB6b3N0YcWCbyB6YXJlamVzdHJvd2FuZS4gT3RyenltYXN6IG9kcG93aWVkxbogZS1tYWlsZW0gY3p5IGplc3QgbW/FvGxpd2UgcG9zemVyemVuaWUgb2ZlcnR5IG8gdGVuIHByb2R1a3Q=].</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_removed'">iai_i18n:[WmfFgm9zemVuaWUgcG9zenVraXdhbmVnbyBwcm9kdWt0dSB6b3N0YcWCbyB1c3VuacSZdGU=].</iaixsl:when>
                                <iaixsl:when test="@type='rma_add'">iai_i18n:[UmVrbGFtYWNqYSB6b3N0YcWCYSBkb2RhbmE=].</iaixsl:when>
                                <iaixsl:when test="@type='return_add'"><iaixsl:choose>
                                  <iaixsl:when test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                                    iai_i18n:[V3lnZW5lcm93YcWCZcWbIHp3cm90IC0gd3nFm2xpaiBnbyBzYW1vZHppZWxuaWU=]
                                  </iaixsl:when>
                                  <iaixsl:otherwise>
                                    iai_i18n:[WmfFgm9zemVuaWUgendyb3R1IHpvc3RhxYJvIGRvZGFuZQ==].
                                  </iaixsl:otherwise>
                                </iaixsl:choose></iaixsl:when>
                                <iaixsl:when test="@type='return_edit'">iai_i18n:[Wm1pYW55IHcgendyb2NpZSB6b3N0YcWCeSB6YXBpc2FuZQ==]</iaixsl:when>
                                <iaixsl:when test="@type='rma_edit'">iai_i18n:[Wm1pYW55IHcgcmVrbGFtYWNqaSB6b3N0YcWCeSB6YXBpc2FuZQ==].</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_deleted'">iai_i18n:[VXN1bmnEmXRvIGtvZCByYWJhdG93eSB6IGtvc3p5a2E=].</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason'">iai_i18n:[UHJ6ZXByYXN6YW15LCBhbGUgbmllIHpkZWZpbmlvd2FsacWbbXkgc3RhbmRhcmRvd2VnbyBrb3N6dHUgZG9zdGF3eSBkbGEgVHdvamVnbyB6YW3Ds3dpZW5pYS4gTW/FvGVzeiBrb250eW51b3dhxIcgc2vFgmFkYW5pZSB6YW3Ds3dpZW5pYSwgamVkbmFrIG5pZSB6b3N0YW5pZSB3IHRlaiBjaHdpbGkgcG9kYW55IHdpxIXFvMSFY3kgbmFzIGtvc3p0IGRvc3Rhd3kuIFpvc3RhbmllIG9uIHVzdGFsb255IGluZHl3aWR1YWxuaWUgcHJ6ZXogbmFzesSFIG9ic8WCdWfEmSBwbyBwcnp5asSZY2l1IHphbcOzd2llbmlhLCBwbyBjenltIHNrb250YWt0dWplbXkgc2nEmSB6IFRvYsSFIHcgY2VsdSBqZWdvIHBvdHdpZXJkemVuaWEuIEplxbxlbGkgdGFraWUgcm96d2nEhXphbmllIG5pZSBvZHBvd2lhZGEgQ2k=], <a href="/contact.php">iai_i18n:[c2tvbnRha3R1aiBzacSZIHogbmFtaQ==]</a> iai_i18n:[dyBjZWx1IHV6eXNrYW5pYSBiYXJkemllaiBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaSBuYSB0ZW1hdCBrb3N6dHUgZG9zdGF3eSBsdWIgbW/FvGxpd2/Fm2NpIHrFgm/FvGVuaWEgemFtw7N3aWVuaWEgaW5keXdpZHVhbG5pZQ==].</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_worth'">iai_i18n:[UHJ6ZXByYXN6YW15LCBhbGUgbmllIHpkZWZpbmlvd2FsacWbbXkgc3RhbmRhcmRvd2VnbyBrb3N6dHUgZG9zdGF3eSBkbGEgdGFraWVqIHdhcnRvxZtjaSB6YW3Ds3dpZW5pYS4gTW/FvGVzeiBrb250eW51b3dhxIcgc2vFgmFkYW5pZSB6YW3Ds3dpZW5pYSwgamVkbmFrIG5pZSB6b3N0YW5pZSB3IHRlaiBjaHdpbGkgcG9kYW55IHdpxIXFvMSFY3kgbmFzIGtvc3p0IGRvc3Rhd3kuIFpvc3RhbmllIG9uIHVzdGFsb255IGluZHl3aWR1YWxuaWUgcHJ6ZXogbmFzesSFIG9ic8WCdWfEmSBwbyBwcnp5asSZY2l1IHphbcOzd2llbmlhLCBwbyBjenltIHNrb250YWt0dWplbXkgc2nEmSB6IFRvYsSFIHcgY2VsdSBqZWdvIHBvdHdpZXJkemVuaWEuIEplxbxlbGkgdGFraWUgcm96d2nEhXphbmllIG5pZSBvZHBvd2lhZGEgQ2k=], <a href="/contact.php">iai_i18n:[c2tvbnRha3R1aiBzacSZIHogbmFtaQ==]</a> iai_i18n:[dyBjZWx1IHV6eXNrYW5pYSBiYXJkemllaiBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaSBuYSB0ZW1hdCBrb3N6dHUgZG9zdGF3eSBsdWIgbW/FvGxpd2/Fm2NpIHrFgm/FvGVuaWEgemFtw7N3aWVuaWEgaW5keXdpZHVhbG5pZQ==].</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_weight'">iai_i18n:[UHJ6ZXByYXN6YW15LCBhbGUgbmllIHpkZWZpbmlvd2FsacWbbXkgc3RhbmRhcmRvd2VnbyBrb3N6dHUgZG9zdGF3eSBkbGEgdGFraWVqIHdhZ2kgemFtw7N3aWVuaWEuIE1vxbxlc3oga29udHludW93YcSHIHNrxYJhZGFuaWUgemFtw7N3aWVuaWEsIGplZG5hayBuaWUgem9zdGFuaWUgdyB0ZWogY2h3aWxpIHBvZGFueSB3acSFxbzEhWN5IG5hcyBrb3N6dCBkb3N0YXd5LiBab3N0YW5pZSBvbiB1c3RhbG9ueSBpbmR5d2lkdWFsbmllIHByemV6IG5hc3rEhSBvYnPFgnVnxJkgcG8gcHJ6eWrEmWNpdSB6YW3Ds3dpZW5pYSwgcG8gY3p5bSBza29udGFrdHVqZW15IHNpxJkgeiBUb2LEhSB3IGNlbHUgamVnbyBwb3R3aWVyZHplbmlhLiBKZcW8ZWxpIHRha2llIHJvendpxIV6YW5pZSBuaWUgb2Rwb3dpYWRhIENp], <a href="/contact.php">iai_i18n:[c2tvbnRha3R1aiBzacSZIHogbmFtaQ==]</a> iai_i18n:[dyBjZWx1IHV6eXNrYW5pYSBiYXJkemllaiBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaSBuYSB0ZW1hdCBrb3N6dHUgZG9zdGF3eSBsdWIgbW/FvGxpd2/Fm2NpIHrFgm/FvGVuaWEgemFtw7N3aWVuaWEgaW5keXdpZHVhbG5pZQ==].</iaixsl:when>
                                <iaixsl:when test="@type='mailing_addsuccess'">iai_i18n:[QWRyZXMgZS1tYWlsIHpvc3RhxYIgZG9kYW55IGRvIGxpc3R5IG1haWxpbmdvd2Vq].</iaixsl:when>
                                <iaixsl:when test="@type='mailing_removesuccess'">iai_i18n:[QWRyZXMgZS1tYWlsIHpvc3RhxYIgdXN1bmnEmXR5IHogbGlzdHkgbWFpbGluZ293ZWo=].</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_nosuchemail'">iai_i18n:[TmllIHpuYWxlxbpsacWbbXkgcG9kYW5lZ28gcHJ6ZXogQ2llYmllIGFkcmVzdSBlLW1haWwgdyBuYXN6ZWogYmF6aWUgbWFpbGluZ293ZWo=].</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_sendingconfirm'">iai_i18n:[TmEgcG9kYW55IGFkcmVzIGUtbWFpbCB3eXPFgmFueSB6b3N0YcWCIGxpc3QgeiBwb3R3aWVyZHplbmllbSB6bWlhbiB3IG5hc3plaiBsacWbY2llIG1haWxpbmdvd2VqLiBPZGJpZXJ6IHBvY3p0xJkgaSBwb2TEhcW8YWogemEgd3NrYXrDs3drYW1pIHphd2FydHltaSB3IHdpYWRvbW/Fm2Np].</iaixsl:when>
                                <iaixsl:otherwise>
                                        <iaixsl:value-of disable-output-escaping="yes" select="description"/>
                                </iaixsl:otherwise>
                        </iaixsl:choose></p>
                    </iaixsl:for-each>

                    <iaixsl:if test="not(count(/shop/page/communicates/message))">
                      <p>
                        <iaixsl:choose>
													<iaixsl:when test="page/details/@status_name != ''">
														<iaixsl:value-of disable-output-escaping="yes" select="page/details/@status_name"/>
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=1">
														iai_i18n:[Wndyb3Qgbmllb2JzxYJ1xbxvbnk=]
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=2">
														iai_i18n:[Wndyb3Qgcm96cGF0cnpvbnkgcG96eXR5d25pZQ==]
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=3">
														iai_i18n:[Wndyb3Qgcm96cGF0cnpvbnkgbmVnYXR5d25pZQ==]
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=13">
														iai_i18n:[Wndyb3Qgcm96cGF0cnpvbnkgcG96eXR5d25pZSAtIFd5bWlhbmEgcHJvZHVrdHUgbmEgaW5ueQ==]
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=14">
														iai_i18n:[Wndyb3QgbmllIGRvdGFyxYI=]
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=15">
														iai_i18n:[Wndyb3Qgd3lnZW5lcm93YW55]
													</iaixsl:when>
													
													<iaixsl:when test="page/details/@status=16">
														iai_i18n:[WmFuaWVjaGFuaWUgcG9ub3duZWogd3lzecWCa2kgemFtw7N3aWVuaWE=]
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=17">
														iai_i18n:[Wndyb3Qgd3lnZW5lcm93YW55]
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=18">
														iai_i18n:[Wndyb3Qgd3lnZW5lcm93YW55]
													</iaixsl:when>
												</iaixsl:choose>
											</p>
										</iaixsl:if>
                    <iaixsl:if test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                      <span>iai_i18n:[TnIgendyb3R1]: <iaixsl:value-of select="/shop/page/details/@id"/></span>
                    </iaixsl:if>
            </div></div>
        </iaixsl:if>


        <iaixsl:if test="/shop/order_edit/@order_number">
            <div class="menu_messages_message" id="menu_messages_warning">
                <div class="menu_messages_message_sub">
                    <p>
                        iai_i18n:[RWR5dHVqZXN6IHphbcOzd2llbmllIG51bWVy] <iaixsl:value-of select="/shop/order_edit/@order_number"/>. iai_i18n:[RG9rb25haiB6bWlhbiB3IHphbcOzd2llbml1IGLEhWTFug==] 
                        <a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/order_edit/@cancel_lik"/></iaixsl:attribute>
                            iai_i18n:[d3LDs8SHIGRvIHN6Y3plZ8OzxYLDs3cgemFtw7N3aWVuaWE=]</a>.
                    </p>
                </div>
            </div>
        </iaixsl:if>


         <iaixsl:if test="/shop/return_edit/@return_id">
            <div class="menu_messages_message" id="menu_messages_warning">
                <div class="menu_messages_message_sub">
                    <p>
                        iai_i18n:[RWR5dHVqZXN6IHp3cm90IG51bWVy] <iaixsl:value-of select="/shop/return_edit/@return_id"/>. iai_i18n:[RG9rb25haiB6bWlhbiB3IHp3cm9jaWUgYsSFZMW6IHdyw7PEhyBkbw==] 
                        <a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/return_edit/@cancel_link"/></iaixsl:attribute>
                             iai_i18n:[c3pjemVnw7PFgsOzdyB6d3JvdHU=]</a>.
                    </p>
                </div>
            </div>
        </iaixsl:if>

        <!-- (orderdetails_cms, 60dd8e76997c49.64388418.9)-->
<iaixsl:if test="page/prepaid/text/body != ''">

    <div class="orderdetails_cms">
      <iaixsl:attribute name="class">orderdetails_cms cm</iaixsl:attribute>
        <div class="orderdetails_cms_sub"><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/text/body"/></div>
    </div>
</iaixsl:if>
    <!-- (orderdetails_info, 60dd8e88a6b737.83403411.3)-->
			<iaixsl:if test="/shop/page/prepaid/opinions_forms/trusted_shops"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/editlink/@active='y'"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/cancellink/@active='y'"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/confirmlink/@link"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/cancellink/@link"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/cancellink/@link"> </iaixsl:if>
		<!-- (orderdetails_payments, 61f913c6775e93.34542107.22)-->
	<iaixsl:variable name="idoPay">1</iaixsl:variable>

	<div class="orderdetails_summary">

		<iaixsl:variable name="ExpressCheckoutInstantiateFirstPayment"><iaixsl:choose>
			<iaixsl:when test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and page/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid/order/@payment_remain &gt; 0">true</iaixsl:when>
			<iaixsl:otherwise>false</iaixsl:otherwise>
		</iaixsl:choose></iaixsl:variable>

		<iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true'">
			<iaixsl:attribute name="class">orderdetails_summary<iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@express_pay = 'true'"> --express</iaixsl:if><iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link"> --pay_overlay</iaixsl:if></iaixsl:attribute>
		</iaixsl:if>

		<iaixsl:attribute name="data-is-express-checkout"><iaixsl:value-of select="/shop/page/prepaid/details/@checkout_type = 'idosell'"/></iaixsl:attribute>

		<iaixsl:if test="(/shop/page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id = '210' and not(page/prepaid/details/@wykonane = 's' or page/prepaid/details/@wykonane = 'k' or /shop/page/prepaid/prepaid_history/item[position() = last()][@payment_form_id = '210']/@status = 'c')) and /shop/page/prepaid/prepaid_history/item[position() = last()][@payment_form_id = '210']/@payment">
			<iaixsl:attribute name="data-pay-later-id"><iaixsl:value-of select="/shop/page/prepaid/prepaid_history/item[position() = last()][@payment_form_id = '210']/@payment"/></iaixsl:attribute>
			<iaixsl:attribute name="data-pay-later-order-number"><iaixsl:value-of select="/shop/page/prepaid/details/@orderid"/></iaixsl:attribute>
		</iaixsl:if>

		<iaixsl:if test="(/shop/page/prepaid/details/@checkout_type = 'idosell')">
			
			<iaixsl:attribute name="data-express-retry-modal-active"><iaixsl:choose>
				<iaixsl:when test="page/prepaid/details/@paymentstatus != 'g' and /shop/page/prepaid_methods/item and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true') and not(/shop/page/prepaid/details/@prepaidstatus = 'y') and not((/shop/page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id = '2') or (/shop/page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id = '153') or (/shop/page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id = '110') or (/shop/page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id = '190')) and not(page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and page/prepaid/prepaid_history/item[position()=last()]/@pay_link) and (/shop/page/prepaid/order/@payment_remain &gt; 0)">true</iaixsl:when>
				<iaixsl:otherwise>false</iaixsl:otherwise>
			</iaixsl:choose></iaixsl:attribute>

			<iaixsl:if test="/shop/client_data/checkup/@url and not(/shop/page/prepaid/expressCheckoutIdentifier = '')">
				<iaixsl:attribute name="data-express-checkup-url"><iaixsl:value-of select="/shop/client_data/checkup/@url"/>&amp;expressCheckoutLogin=<iaixsl:value-of select="/shop/page/prepaid/expressCheckoutIdentifier"/></iaixsl:attribute>
			</iaixsl:if>
		</iaixsl:if>

		<div class="row align-items-start pt-2 py-md-5">
			<div class="col-12 col-md-4 mb-4 mb-md-0">
				<iaixsl:variable name="orderdetails_status_text"><iaixsl:choose>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'n')">iai_i18n:[WmFtw7N3aWVuaWUgcHJ6eWrEmXRl]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 't')"><iaixsl:choose><iaixsl:when test="(page/prepaid/details/@personal_collection = 'yes')">iai_i18n:[WmFtw7N3aWVuaWUgb2RlYnJhbmU=]</iaixsl:when><iaixsl:otherwise>iai_i18n:[WmFtw7N3aWVuaWUgd3lzxYJhbmU=]</iaixsl:otherwise></iaixsl:choose></iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'i')">iai_i18n:[WmFtw7N3aWVuaWUgb2RyenVjb25l]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 's')">iai_i18n:[WmFtw7N3aWVuaWUgYW51bG93YW5l]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'o')">iai_i18n:[WmFtw7N3aWVuaWUgcmVhbGl6b3dhbmU=]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'p') and (page/prepaid/details/@deliveryid = '0')">iai_i18n:[WmFtw7N3aWVuaWUgZ290b3dlIGRvIG9kYmlvcnU=]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'p')">iai_i18n:[WmFtw7N3aWVuaWUgZ290b3dlIGRvIHd5c8WCYW5pYQ==]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'h')">iai_i18n:[WmFtw7N3aWVuaWUgd3N0cnp5bWFuZQ==]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'w')">iai_i18n:[T2N6ZWt1amVteSBuYSB3cMWCYXTEmQ==]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'd')">iai_i18n:[T2N6ZWt1amVteSBuYSBkb3N0YXfEmQ==]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'z')">iai_i18n:[WmFtw7N3aWVuaWUgendyw7Njb25l]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'k')">iai_i18n:[WmFtw7N3aWVuaWUgYW51bG93YW5l]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'r')">iai_i18n:[WmFtw7N3aWVuaWUgemFyZWtsYW1vd2FuZQ==]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'j')">iai_i18n:[WmFtw7N3aWVuaWUgcG/FgsSFY3pvbmU=]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'l')">iai_i18n:[WmFtw7N3aWVuaWUgemd1YmlvbmU=]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'a')">iai_i18n:[WmFtw7N3aWVuaWUgcmVhbGl6b3dhbmU=]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'b' and page/prepaid/details/@statusCode = 'wd') or page/prepaid/details/@wykonane = 'wd'">iai_i18n:[T2N6ZWt1amUgbmEgdGVybWluIHd5c8WCYW5pYQ==]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'b') and (page/prepaid/details/@statusCode = 'br')">iai_i18n:[WmFtw7N3aWVuaWUgc3Bha293YW5l]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'b')">iai_i18n:[WmFtw7N3aWVuaWUgcGFrb3dhbmU=]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'wp')">iai_i18n:[T2N6ZWt1amUgbmEgdGVybWluIHBha293YW5pYQ==]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'wr')">iai_i18n:[T2N6ZWt1amUgbmEgdGVybWluIG9kYmlvcnU=]</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'u')">iai_i18n:[T2N6ZWt1amUgbmEgYWtjZXB0YWNqxJk=]</iaixsl:when>
				</iaixsl:choose></iaixsl:variable>
				<iaixsl:variable name="orderdetails_status_description_text"><iaixsl:choose>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'n')">iai_i18n:[VHdvamUgemFtw7N3aWVuaWUgem9zdGHFgm8gcHJ6eWrEmXRlIGkgb2N6ZWt1amUgbmEgcmVhbGl6YWNqxJk=].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 't')"><iaixsl:choose><iaixsl:when test="(page/prepaid/details/@personal_collection = 'yes')">iai_i18n:[VG8gemFtw7N3aWVuaWUgem9zdGHFgm8gcHJ6ZXogQ2llYmllIG9kZWJyYW5lLiBEemnEmWt1amVteSBpIHphY2jEmWNhbXkgZG8gcG9ub3dueWNoIHpha3Vww7N3IHcgbmFzenltIHNrbGVwaWU=].</iaixsl:when><iaixsl:otherwise>iai_i18n:[SW5mb3JtdWplbXksIMW8ZSBUd29qZSB6YW3Ds3dpZW5pZSB6b3N0YcWCbyBqdcW8IHd5c8WCYW5lLiBQcnplc3nFgmthIGRvdHJ6ZSBkbyBDaWViaWUgdyBjacSFZ3Uga2lsa3UgZG5pLCBjemFzIHRyYW5zcG9ydHUgemFsZcW8eSBvZCB3eWJyYW5laiBwcnpleiBDaWViaWUgZmlybXkgcHJ6ZXdvem93ZWo=].</iaixsl:otherwise></iaixsl:choose></iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'i')">iai_i18n:[WmFtw7N3aWVuaWUgem9zdGHFgm8gb2RyenVjb25lIGkgbmllIGLEmWR6aWUgcHJ6ZXogbmFzIHJlYWxpem93YW5lLiBOYWpjesSZc3RzesSFIHByenljenluxIUgb2RyenVjZW5pYSBwcnpleiBuYXMgemFtw7N3aWVuaWEgamVzdA==]:<br/>- iai_i18n:[cG9kYW5pZSBuaWVwcmF3ZHppd3ljaCBkYW55Y2ggcHJ6eSB6YW3Ds3dpZW5pdQ==],<br/>- iai_i18n:[YnJhayBtb8W8bGl3b8WbY2kgc2tvbnRha3Rvd2FuaWEgc2nEmSB6IFRvYsSFIHcgc3ByYXdpZSB6YW3Ds3dpZW5pYSBwcnpleiBkxYJ1xbxzenkgY3phcw==],<br/>- iai_i18n:[YnJhayBwb3R3aWVyZHplbmlhIHphbcOzd2llbmlhIHphIHBvYnJhbmllbSB3IHd5bWFnYW55bSBwcnpleiBuYXMgY3phc2ll],<br/>- iai_i18n:[bmllIG9kZWJyYW5pZSBwYWN6a2kgaSBicmFrIHJlYWtjamkgcHJ6ZXogZMWCdcW8c3p5IGN6YXM=].<br/><br/>iai_i18n:[SmXFvGVsaSBuYWRhbCBjaGNlc3ogemFrdXBpxIcgd3licmFuZSBwcm9kdWt0eSwgesWCw7PFvCBwb25vd25pZSB6YW3Ds3dpZW5pZSwgdW5pa2FqxIVjIHBvcGXFgm5pb255Y2ggd2N6ZcWbbmllaiBixYLEmWTDs3c=].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 's')">iai_i18n:[WiBwcnp5a3JvxZtjacSFIGluZm9ybXVqZW15LCDFvGUgbmllIGplc3RlxZtteSB3IHN0YW5pZSB6cmVhbGl6b3dhxIcgdGVnbyB6YW3Ds3dpZW5pYS4gTmFqcHJhd2RvcG9kb2JuaWVqIGt0w7NyecWbIHogbmFzenljaCBwcmFjb3duaWvDs3cganXFvCBzacSZIHogVG9ixIUga29udGFrdG93YcWCIHcgdGVqIHNwcmF3aWUuIFphbcOzd2llbmllIG5pZSB6b3N0YW5pZSB6cmVhbGl6b3dhbmUsIHBvbmlld2HFvCBuaWUgbW/FvGVteSBnbyBza29tcGxldG93YcSHLiBQcnplcHJhc3phbXkgemEgcHJvYmxlbXkuIFcgcHJ6eXN6xYJvxZtjaSBixJlkemllbXkgbGVwaWVqIGtvbnRyb2xvd2HEhyBuYXN6xIUgb2ZlcnTEmS4gWmFwcmFzemFteSBkbyB6xYJvxbxlbmlhIGtvbGVqbmVnbyB6YW3Ds3dpZW5pYQ==].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'o')">iai_i18n:[VHdvamUgemFtw7N3aWVuaWUgamVzdCBvYmVjbmllIHJlYWxpem93YW5lLiBOYXN6YSBvYnPFgnVnYSBrb21wbGV0dWplIGplIGkgcHJ6eWdvdG93dWplIGRvIHd5c3nFgmtpIHcgZm9ybWllIHd5YnJhbmVqIHByemV6IENpZWJpZSwgamFrbyBzcG9zw7NiIGRvc3Rhd3k=].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'p') and page/prepaid/details/@deliveryid = '0'">iai_i18n:[SW5mb3JtdWplbXksIMW8ZSBUd29qZSB6YW3Ds3dpZW5pZSB6b3N0YcWCbyBza29tcGxldG93YW5lIGkgamVzdCBqdcW8IGdvdG93ZSBkbyBvZGJpb3J1LiBXIGNlbHUgdXN0YWxlbmlhIGRvZ29kbmVnbyBkbGEgQ2llYmllIHRlcm1pbnUgb2RiaW9ydSBza29udGFrdHVqIHNpxJkgeiBuYW1p].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'p')">iai_i18n:[TWFteSBkbGEgQ2llYmllIGRvYnLEhSB3aWFkb21vxZvEhy4gVHdvamUgemFtw7N3aWVuaWUgem9zdGHFgm8ganXFvCBza29tcGxldG93YW5lIGkgc3Bha293YW5lLiBPYmVjbmllIHBhY3prYSBvY3pla3VqZSBuYSB3eXPFgmFuaWU=].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'h')">iai_i18n:[WmFtw7N3aWVuaWUgem9zdGHFgm8gd3N0cnp5bWFuZS4gUG93b2RlbSB0ZWdvIG1vxbxlIGJ5xIcgamVkbmEgeiB3eW1pZW5pb255Y2ggc3l0dWFjamk=]:<br/>- iai_i18n:[YnJhayBtb8W8bGl3b8WbY2kgc2tvbnRha3Rvd2FuaWEgc2nEmSB6IFRvYsSFLCBicmFrIG9kcG93aWVkemkgbmEgbmFzemUgd2lhZG9tb8WbY2k=],<br/>- iai_i18n:[cG9kYW5pZSBwcnpleiBDaWViaWUgbmlla29tcGxldG55Y2ggbHViIGJ1ZHrEhWN5Y2ggd8SFdHBsaXdvxZtjaSBkYW55Y2g=],<br/>- iai_i18n:[ZG9rb25hbmllIHdwxYJhdHkgdyB3eXNva2/Fm2NpIGlubmVqIG5pxbwgd2FydG/Fm8SHIHphbcOzd2llbmlhIGx1YiBjYcWCa293aXR5IGplaiBicmFr].<br/><br/>iai_i18n:[UHJvc2lteSBvIHNrb250YWt0b3dhbmllIHNpxJkgeiBuYW1pIHcgc3ByYXdpZSB3eWphxZtuaWVuaWEgdGVqIHN5dHVhY2ppLiBCcmVhayByZWFrY2ppIHogVHdvamVqIHN0cm9ueSBtb8W8ZSBza3V0a293YcSHIG9kcnp1Y2VuaWVtIHRlZ28gemFtw7N3aWVuaWE=].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'w')">iai_i18n:[UmVhbGl6YWNqYSBUd29qZWdvIHphbcOzd2llbmlhIHpvc3RhxYJhIGNod2lsb3dvIHdzdHJ6eW1hbmEsIHBvbmlld2HFvCBUd29qYSB3cMWCYXRhIGplc3pjemUgZG8gbmFzIG5pZSBkb3RhcsWCYS4gV3pub3dpbXkgcmVhbGl6YWNqxJkgemFtw7N3aWVuaWEgbmF0eWNobWlhc3QgcG8gemFrc2nEmWdvd2FuaXUgd3DFgmF0eSBuYSBuYXN6eW0ga29uY2ll].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'd')">iai_i18n:[UmVhbGl6YWNqYSBUd29qZWdvIHphbcOzd2llbmlhIHpvc3RhxYJhIGNod2lsb3dvIHdzdHJ6eW1hbmEuIE5pZXN0ZXR5IG5pZSBtYW15IHcgbWFnYXp5bmllIHdzenlzdGtpY2ggcHJvZHVrdMOzdyBuaWV6YsSZZG55Y2ggZG8gc2tvbXBsZXRvd2FuaWEgemFtw7N3aWVuaWEuIFd6bm93aW15IHJlYWxpemFjasSZIHphbcOzd2llbmlhIG5hdHljaG1pYXN0IHBvIG90cnp5bWFuaXUgZG9zdGF3eQ==].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'z')">iai_i18n:[UGFjemthIHogemFtw7N3aWVuaWVtIG5hanByYXdkb3BvZG9ibmllaiBuaWUgem9zdGHFgmEgb2RlYnJhbmEgaSB3csOzY2nFgmEgZG8gbmFzLiBKZcW8ZWxpIHogamFraWNoa29sd2llayBwcnp5Y3p5biBwYWN6a2EgbmllIGRvdGFyxYJhIGRvIENpZWJpZSBsdWIgbmllIHpvc3RhxYJhIG9kZWJyYW5hIHcgdGVybWluaWUsIHByb3N6xJkgc2tvbnRha3R1aiBzacSZIHogbmFtaSwgdyBjZWx1IHd5amHFm25pZW5pYSB6YWlzdG5pYcWCZWogc3l0dWFjamkgaSBwb2RqxJljaWEgZGFsc3p5Y2ggZHppYcWCYcWE].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'k')">iai_i18n:[T3NvYmnFm2NpZSBhbnVsb3dhxYJlxZsgdG8gemFtw7N3aWVuaWUsIGNvIG96bmFjemEsIMW8ZSBuaWUgYsSZZHppZW15IGdvIHJlYWxpem93YWxpLiBKZcW8ZWxpIGFudWxvd2HFgmXFmyBzd29qZSB6YW3Ds3dpZW5pZSBwcnpleiBwb215xYJrxJksIHByb3NpbXkgbyBwb25vd25lIHrFgm/FvGVuaWUgemFtw7N3aWVuaWEuIELEmWR6aWUgb25vIHJlYWxpem93YW5lIHcgc3RhbmRhcmRvd3kgc3Bvc8OzYg==].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'r')">iai_i18n:[T3RyenltYWxpxZtteSBwcnplc3nFgmvEmSB6IHJla2xhbWFjasSFIHRlZ28gemFtw7N3aWVuaWEuIFBvIHJvenBhdHJ6ZW5pdSByZWtsYW1hY2ppIG9ic8WCdWdhIHNrbGVwdSBza29udGFrdHVqZSBzacSZIHogVG9ixIUgaSBwb2luZm9ybXVqZSBDacSZIG8gamVqIHJvenN0cnp5Z25pxJljaXUuIEplxbxlbGkgY2hjZXN6IHByemVrYXphxIcgZG9kYXRrb3dlIHN6Y3plZ8OzxYJ5IGRvdHljesSFY2UgcmVrbGFtYWNqaSBsdWIgd3ltaWFueSwgc2tvbnRha3R1aiBzacSZIHogbmFtaQ==].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'j')">iai_i18n:[VG8gemFtw7N3aWVuaWUgem9zdGHFgm8gcG/FgsSFY3pvbmUgeiBpbm55bSBUd29pbSB6YW3Ds3dpZW5pZW0uIFBvbmlld2HFvCB6xYJvxbx5xYJlxZsgd2nEmWNlaiBuacW8IGplZG5vIHphbcOzd2llbmllIG5hcmF6LCB6ZGVjeWRvd2FsacWbbXkgc2nEmSBqZSBwb8WCxIVjennEhy4gV3N6eXN0a2llIHRvd2FyeSB6IHRlZ28gemFtw7N3aWVuaWEgdHJhZmnFgnkgZG8gbm93c3plZ28gemFtw7N3aWVuaWEsIGt0w7NyZSBixJlkemllIHJlYWxpem93YW5lIHcgc3RhbmRhcmRvd3kgc3Bvc8OzYg==].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'l')">iai_i18n:[WiBwcnp5a3JvxZtjacSFIGluZm9ybXVqZW15LCDFvGUgbmllIGplc3RlxZtteSB3IHN0YW5pZSB6cmVhbGl6b3dhxIcgdGVnbyB6YW3Ds3dpZW5pYS4gTmFqcHJhd2RvcG9kb2JuaWVqIGt0w7NyecWbIHogbmFzenljaCBwcmFjb3duaWvDs3cganXFvCBzacSZIHogVG9ixIUga29udGFrdG93YcWCIHcgdGVqIHNwcmF3aWUuIFphbcOzd2llbmllIG5pZSB6b3N0YW5pZSB6cmVhbGl6b3dhbmUgeiBwcnp5Y3p5biBsb3Nvd3ljaC4gUHJ6ZXByYXN6YW15IHphIHByb2JsZW15LiBXIHByenlzesWCb8WbY2kgZG/Fgm/FvHlteSB3c3plbGtpY2ggc3RhcmHFhCwgYWJ5IHBvZG9ibmEgc3l0dWFjamEgc2nEmSBuaWUgcG93dMOzcnp5xYJhLiBaYXByYXN6YW15IGRvIHrFgm/FvGVuaWEga29sZWpuZWdvIHphbcOzd2llbmlh].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'a')">iai_i18n:[VHdvamUgemFtw7N3aWVuaWUgamVzdCBvYmVjbmllIHJlYWxpem93YW5lLiBOYXN6YSBvYnPFgnVnYSBrb21wbGV0dWplIGplIGkgcHJ6eWdvdG93dWplIGRvIHd5c3nFgmtpIHcgZm9ybWllIHd5YnJhbmVqIHByemV6IENpZWJpZSwgamFrbyBzcG9zw7NiIGRvc3Rhd3k=].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'b' and page/prepaid/details/@statusCode = 'wd') or page/prepaid/details/@wykonane = 'wd'">iai_i18n:[VHdvamUgemFtw7N3aWVuaWUgamVzdCBnb3Rvd2UsIGFsZSBjemVrYW15IHogamVnbyB3eXPFgmFuaWVtIGRvIHVzdGFsb25lZ28gdGVybWludS4gUHJ6ZXN5xYJrYSB6b3N0YW5pZSBuYWRhbmEgemdvZG5pZSB6IHd5YnJhbnltIHByemV6IENpZWJpZSBjemFzZW0gZG9zdGF3eQ==].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'b') and (page/prepaid/details/@statusCode = 'br')">iai_i18n:[VHdvamUgemFtw7N3aWVuaWUgem9zdGHFgm8gc3Bha293YW5lIGkgb2N6ZWt1amUgbmEgZGFsc3p5IGV0YXAgcmVhbGl6YWNqaS4gV2tyw7N0Y2UgcGFjemthIHpvc3RhbmllIHd5c8WCYW5hIGx1YiBwcnpla2F6YW5hIGRvIG9kYmlvcnUsIHcgemFsZcW8bm/Fm2NpIG9kIHd5YnJhbmVqIGZvcm15IGRvc3Rhd3k=].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'b')">iai_i18n:[VHdvamUgemFtw7N3aWVuaWUgamVzdCB3IHRyYWtjaWUgcGFrb3dhbmlhLiBOYXN6IHplc3DDs8WCIHfFgmHFm25pZSBrb21wbGV0dWplIGkgemFiZXpwaWVjemEgcHJvZHVrdHksIGFieSBwcnp5Z290b3dhxIcgamUgZG8gd3lzecWCa2k=].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'wp')">iai_i18n:[VHdvamUgemFtw7N3aWVuaWUgem9zdGHFgm8ganXFvCBza29tcGxldG93YW5lIGkgY3pla2EgdyBrb2xlamNlIGRvIHphcGFrb3dhbmlhLiBXa3LDs3RjZSB6YWptaWVteSBzacSZIGplZ28gcHJ6eWdvdG93YW5pZW0gZG8gd3lzecWCa2k=].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'wr')">iai_i18n:[WmFtw7N3aWVuaWUgem9zdGHFgm8gcHJ6eWdvdG93YW5lLCBhbGUgY3pla2FteSBqZXN6Y3plIG5hIHVzdGFsZW5pZSBkb2dvZG5lZ28gZGxhIENpZWJpZSB0ZXJtaW51IG9kYmlvcnUuIFNrb250YWt0dWogc2nEmSB6IG5hbWksIGFieSB1emdvZG5pxIcgc3pjemVnw7PFgnk=].</iaixsl:when>
					<iaixsl:when test="(page/prepaid/details/@wykonane = 'u')">iai_i18n:[WmFtw7N3aWVuaWUgb2N6ZWt1amUgbmEgYWtjZXB0YWNqxJkgcHJ6ZXogdXByYXduaW9uxIUgb3NvYsSZIHcgVHdvamVqIG9yZ2FuaXphY2pp].</iaixsl:when>
					<iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/status_explanation"/></iaixsl:otherwise>
				</iaixsl:choose></iaixsl:variable>
				<div id="orderdetails_info" class="orderdetails_info">
					<div class="orderdetails_info__icon">
						<iaixsl:attribute name="data-status"><iaixsl:value-of select="/shop/page/prepaid/details/@wykonane"/></iaixsl:attribute>
						<iaixsl:if test="page/prepaid/details/@wykonane = 't' and page/prepaid/details/@personal_collection = 'yes'">
							<iaixsl:attribute name="data-received">true</iaixsl:attribute>
						</iaixsl:if>
					</div>
					<div class="orderdetails_info__wrapper">
						<div class="orderdetails_info__label">
							<strong class="orderdetails_info__label_text"><iaixsl:value-of select="$orderdetails_status_text"/></strong>
							<iaixsl:if test="$orderdetails_status_description_text != ''">
								<div class="moreInfo orderdetails_info__more d-none d-md-flex">
									<a href="#showDescription" class="moreInfo__show" aria-hidden="true" tabindex="-1"><i class="icon-question"/></a>
									<span class="sr-only"><iaixsl:copy-of select="$orderdetails_status_description_text"/></span>
									<div style="display:none;" class="moreInfo__desc" aria-hidden="true"><iaixsl:copy-of select="$orderdetails_status_description_text"/></div>
								</div>
						</iaixsl:if>
						</div>
						<div class="orderdetails_info__dates">
							<span class="orderdetails_info__number">iai_i18n:[U3pjemVnw7PFgnkgemFtw7N3aWVuaWEgbnI=] <iaixsl:value-of select="page/prepaid/details/@orderid"/></span>
							<iaixsl:if test="$orderdetails_status_description_text != ''">
								<a href="#showDescription" class="moreInfo__show d-md-none" aria-hidden="true" tabindex="-1">iai_i18n:[V2nEmWNlag==]</a>
								<div class="moreInfo orderdetails_info__more d-md-none">
									<div style="display:none;" class="moreInfo__desc" aria-hidden="true"><iaixsl:copy-of select="$orderdetails_status_description_text"/></div>
								</div>
							</iaixsl:if>
						</div>
					</div>
				</div>
				<iaixsl:if test="/shop/page/delivery_history/package/item">
					<div class="orderdetails_history">
						<iaixsl:attribute name="data-status"><iaixsl:value-of select="/shop/page/delivery_history/package/item/@status"/></iaixsl:attribute>
						<div class="orderdetails_history__wrapper">
							<strong class="orderdetails_history__date"><iaixsl:value-of select="/shop/page/delivery_history/package/item/@date"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="substring(/shop/page/delivery_history/package/item/@time, 1, 5)"/></strong>
							<span class="orderdetails_history__info">
								<span class="orderdetails_history__info_text">iai_i18n:[UHJ6ZXN5xYJrYQ==]<iaixsl:text> </iaixsl:text></span>
								<iaixsl:if test="count(/shop/page/delivery_history/package) &gt; 1">
									<span class="orderdetails_history__info_id"><iaixsl:value-of select="/shop/page/delivery_history/package/@dispatch_number"/><iaixsl:text> </iaixsl:text></span>
								</iaixsl:if>
								<span class="orderdetails_history__info_description"><iaixsl:choose>
									<iaixsl:when test="/shop/page/delivery_history/package/item/@status = 'DELIVERED'">iai_i18n:[T2RlYnJhbmE=]</iaixsl:when>
									<iaixsl:when test="/shop/page/delivery_history/package/item/@status = 'UNREALIZED'">iai_i18n:[TmllenJlYWxpem93YW5h]</iaixsl:when>
									<iaixsl:when test="/shop/page/delivery_history/package/item/@status = 'PREPARED'">iai_i18n:[UHJ6eWdvdG93YW5hIHByemV6IG5hZGF3Y8SZ]</iaixsl:when>
									<iaixsl:when test="/shop/page/delivery_history/package/item/@status = 'PICKED_UP'">iai_i18n:[T2RlYnJhbmEgcHJ6ZXoga3VyaWVyYQ==]</iaixsl:when>
									<iaixsl:when test="/shop/page/delivery_history/package/item/@status = 'IN_DELIVERY'">iai_i18n:[VyBkb3LEmWN6ZW5pdQ==]</iaixsl:when>
									<iaixsl:when test="/shop/page/delivery_history/package/item/@status = 'WAITING_FOR_PICKUP'">iai_i18n:[Q3pla2EgbmEgb2RiacOzcg==]</iaixsl:when>
									<iaixsl:when test="/shop/page/delivery_history/package/item/@status = 'UNDELIVERED'">iai_i18n:[TmllZG9yxJljem9uYQ==]</iaixsl:when>
									<iaixsl:when test="/shop/page/delivery_history/package/item/@status = 'RETURN_IN_REALIZATION'">iai_i18n:[VyB0cmFrY2llIHp3cm90dQ==]</iaixsl:when>
									<iaixsl:when test="/shop/page/delivery_history/package/item/@status = 'RETURN_DELIVERED'">iai_i18n:[endyb3RuYSBkb3N0YXJjem9uYSBkbyBza2xlcHU=]</iaixsl:when>
								</iaixsl:choose></span>
							</span>
						</div>
						<a href="#showMoreDeliveryHistory" class="orderdetails_history__more">iai_i18n:[V2nEmWNlag==]</a>
					</div>
					<template id="orderdetails_history_details_template">
						<div class="orderdetails_history_details">
							<iaixsl:if test="count(/shop/page/delivery_history/package) = 1">
								<iaixsl:attribute name="class">orderdetails_history_details --only-one</iaixsl:attribute>
							</iaixsl:if>
							<div class="orderdetails_history_details__label">
								<div class="orderdetails_history_details__icon">
									<iaixsl:attribute name="data-status"><iaixsl:value-of select="/shop/page/prepaid/details/@wykonane"/></iaixsl:attribute>
									<iaixsl:if test="page/prepaid/details/@wykonane = 't' and page/prepaid/details/@personal_collection = 'yes'">
										<iaixsl:attribute name="data-received">true</iaixsl:attribute>
									</iaixsl:if>
								</div>
								<div class="orderdetails_history_details__status">
									<strong class="orderdetails_history_details__status_text">iai_i18n:[SGlzdG9yaWEgcHJ6ZXN5xYJraQ==]</strong>
									<span class="orderdetails_history_details__order_id">iai_i18n:[WmFtw7N3aWVuaWUgbnI=]<iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/prepaid/details/@orderid"/></span>
								</div>
							</div>
							<div class="orderdetails_history_details__tabs">
								<iaixsl:for-each select="/shop/page/delivery_history/package">
									<div class="orderdetails_history_details__tab">
										<a href="#showTab" class="orderdetails_history_details__tab_label" aria-expanded="true">
											<iaixsl:if test="position() &gt; 1">
												<iaixsl:attribute name="aria-expanded">false</iaixsl:attribute>
											</iaixsl:if>
											<iaixsl:choose>
												<iaixsl:when test="position() = 1">
													<iaixsl:attribute name="aria-expanded">true</iaixsl:attribute>
												</iaixsl:when>
												<iaixsl:otherwise>
												</iaixsl:otherwise>
											</iaixsl:choose>
											iai_i18n:[UHJ6ZXN5xYJrYQ==]<iaixsl:text> </iaixsl:text><iaixsl:value-of select="@dispatch_number"/>
										</a>
										<div class="orderdetails_history_details__items" aria-hidden="false">
											<iaixsl:if test="position() &gt; 1">
												<iaixsl:attribute name="aria-hidden">true</iaixsl:attribute>
											</iaixsl:if>
											<iaixsl:for-each select="item">
												
												<div class="orderdetails_history_details__item">
													<strong class="orderdetails_history_details__date"><iaixsl:value-of select="@date"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="substring(@time, 1, 5)"/></strong>
													<span class="orderdetails_history_details__info"><iaixsl:choose>
														<iaixsl:when test="@status = 'DELIVERED'">iai_i18n:[T2RlYnJhbmE=]</iaixsl:when>
														<iaixsl:when test="@status = 'UNREALIZED'">iai_i18n:[TmllenJlYWxpem93YW5h]</iaixsl:when>
														<iaixsl:when test="@status = 'PREPARED'">iai_i18n:[UHJ6eWdvdG93YW5hIHByemV6IG5hZGF3Y8SZ]</iaixsl:when>
														<iaixsl:when test="@status = 'PICKED_UP'">iai_i18n:[T2RlYnJhbmEgcHJ6ZXoga3VyaWVyYQ==]</iaixsl:when>
														<iaixsl:when test="@status = 'IN_DELIVERY'">iai_i18n:[VyBkb3LEmWN6ZW5pdQ==]</iaixsl:when>
														<iaixsl:when test="@status = 'WAITING_FOR_PICKUP'">iai_i18n:[Q3pla2EgbmEgb2RiacOzcg==]</iaixsl:when>
														<iaixsl:when test="@status = 'UNDELIVERED'">iai_i18n:[TmllZG9yxJljem9uYQ==]</iaixsl:when>
														<iaixsl:when test="@status = 'RETURN_IN_REALIZATION'">iai_i18n:[VyB0cmFrY2llIHp3cm90dQ==]</iaixsl:when>
														<iaixsl:when test="@status = 'RETURN_DELIVERED'">iai_i18n:[Wndyb3QgZG9zdGFyY3pvbnkgZG8gc2tsZXB1]</iaixsl:when>
													</iaixsl:choose></span>
												</div>
											</iaixsl:for-each>
										</div>
									</div>
								</iaixsl:for-each>
							</div>
						</div>
					</template>
				</iaixsl:if>
			</div>
			<div class="col-12 col-md-8">
				<iaixsl:if test="page/prepaid/details/@wykonane = 'u' and /shop/client_data/association/@permsPayment = 'n'">
					<span class="orderdetails_assoc_payments">
						iai_i18n:[UMWCYXRub8WbxIcgeiBwb3ppb211IGtvbnRhIG9yZ2FuaXphY2ppIHogb2Rwb3dpZWRuaW1pIHVwcmF3bmllbmlhbWk=].
					</span>
				</iaixsl:if>
				
					<iaixsl:variable name="idoPay2">1</iaixsl:variable>
					<div id="orderdetails_payments" class="orderdetails_payments">
						<iaixsl:attribute name="data-cancel_link">
							<iaixsl:choose>
								<iaixsl:when test="page/prepaid/prepaid_history/item[position() = last()]/@cancel_link">
									<iaixsl:value-of select="page/prepaid/prepaid_history/item[position() = last()]/@cancel_link"/>
								</iaixsl:when>
								<iaixsl:otherwise>false</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:attribute>
						<iaixsl:attribute name="data-action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
						<iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
							<iaixsl:attribute name="data-action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
						</iaixsl:if>
						
						<div id="orderdetails_payments_content" class="orderdetails_payments__content d-md-block">
							<div class="orderdetails_payments__history">
								<iaixsl:for-each select="page/prepaid/prepaid_history/item[@status = 'y' and position() != last()]">
									<div class="orderdetails_payments__item">
										<div class="orderdetails_payments__wrapper">
											<strong class="orderdetails_payments__date">
												<iaixsl:choose>
													<iaixsl:when test="dates/date_cancelled/@date">
														<iaixsl:value-of select="dates/date_cancelled/@date"/>
													</iaixsl:when>
													<iaixsl:when test="dates/date_confirm/@date">
														<iaixsl:value-of select="dates/date_confirm/@date"/>
													</iaixsl:when>
													<iaixsl:when test="dates/date_add/@date">
														<iaixsl:value-of select="dates/date_add/@date"/>
													</iaixsl:when>
												</iaixsl:choose>
											</strong>
											<div class="orderdetails_payments__explanation">
												<iaixsl:choose>
													<iaixsl:when test="amount/@mark='negativ'">
														iai_i18n:[WmFwxYJhY29ubw==]
													</iaixsl:when>
													<iaixsl:otherwise>
														iai_i18n:[WmFwxYJhY2nFgmXFmw==]
													</iaixsl:otherwise>
												</iaixsl:choose>
												<iaixsl:value-of select="amount/client_currency/@value_formatted"/> iai_i18n:[cHJ6ZXo=]

												<iaixsl:choose>
													<iaixsl:when test="@payment_id='27'"> 
														iai_i18n:[c2FsZG8gKG5hZHDFgmF0YSBuYSBrb25jaWUga2xpZW50YSk=]
													</iaixsl:when>
													<iaixsl:when test="$idoPay2 and @payment_id = '29' and (@payment_form_id = '44' or @payment_form_id = '45') and count(/shop/page/prepaid_methods/item[@group='card'][not(@system_id='29')]) = 0">
                            iai_i18n:[a2FydMSZIHDFgmF0bmljesSF]
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="@payment_name"/>.
													</iaixsl:otherwise>
												</iaixsl:choose>

											</div>
										</div>
										
										<div class="orderdetails_payments__icon">
											<iaixsl:if test="@icon">
												<iaixsl:choose>
													<iaixsl:when test="$idoPay2 and @payment_id = '29' and (@payment_form_id = '44' or @payment_form_id = '45') and count(/shop/page/prepaid_methods/item[@group='card'][not(@system_id='29')]) = 0">
														<iaixsl:if test="/shop/page/prepaid_methods/item[@id='44']">
															<img>
																<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='44']/@icon"/></iaixsl:attribute>
																<iaixsl:attribute name="alt">iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='44']/@name"/></iaixsl:attribute>
															</img>
														</iaixsl:if>
														<iaixsl:if test="/shop/page/prepaid_methods/item[@id='45']">
															<img>
																<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='45']/@icon"/></iaixsl:attribute>
																<iaixsl:attribute name="alt">iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='45']/@name"/></iaixsl:attribute>
															</img>
														</iaixsl:if>
													</iaixsl:when>
													<iaixsl:when test="@payment_id = '38'">
														<img>
															<iaixsl:attribute name="src">data:image/svg+xml,%3Csvg xmlns=&apos;http://www.w3.org/2000/svg&apos; id=&apos;calendar&apos; width=&apos;26&apos; height=&apos;26&apos; fill=&apos;%23333&apos; viewBox=&apos;0 0 26 26&apos;%3E%3Cg id=&apos;Group_425&apos; data-name=&apos;Group 425&apos;%3E%3Cg id=&apos;Group_424&apos; data-name=&apos;Group 424&apos;%3E%3Cpath id=&apos;Path_75&apos; data-name=&apos;Path 75&apos; d=&apos;M22.512,1.992h-1.2V0H19.324V1.992H6.176V0H4.184V1.992h-1.2A2.992,2.992,0,0,0,0,4.98V22.512A2.992,2.992,0,0,0,2.988,25.5H22.512A2.992,2.992,0,0,0,25.5,22.512V4.98A2.992,2.992,0,0,0,22.512,1.992Zm1,20.52a1,1,0,0,1-1,1H2.988a1,1,0,0,1-1-1V9.363H23.508Zm0-15.141H1.992V4.98a1,1,0,0,1,1-1h1.2V5.977H6.176V3.984H19.324V5.977h1.992V3.984h1.2a1,1,0,0,1,1,1Z&apos;%3E%3C/path%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_427&apos; data-name=&apos;Group 427&apos; transform=&apos;translate(4.397 11.431)&apos;%3E%3Cg id=&apos;Group_426&apos; data-name=&apos;Group 426&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_196&apos; data-name=&apos;Rectangle 196&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_429&apos; data-name=&apos;Group 429&apos; transform=&apos;translate(7.914 11.431)&apos;%3E%3Cg id=&apos;Group_428&apos; data-name=&apos;Group 428&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_197&apos; data-name=&apos;Rectangle 197&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_431&apos; data-name=&apos;Group 431&apos; transform=&apos;translate(12.31 11.431)&apos;%3E%3Cg id=&apos;Group_430&apos; data-name=&apos;Group 430&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_198&apos; data-name=&apos;Rectangle 198&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_433&apos; data-name=&apos;Group 433&apos; transform=&apos;translate(14.948 11.431)&apos;%3E%3Cg id=&apos;Group_432&apos; data-name=&apos;Group 432&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_199&apos; data-name=&apos;Rectangle 199&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_435&apos; data-name=&apos;Group 435&apos; transform=&apos;translate(19.345 11.431)&apos;%3E%3Cg id=&apos;Group_434&apos; data-name=&apos;Group 434&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_200&apos; data-name=&apos;Rectangle 200&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.095 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_437&apos; data-name=&apos;Group 437&apos; transform=&apos;translate(4.397 14.948)&apos;%3E%3Cg id=&apos;Group_436&apos; data-name=&apos;Group 436&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_201&apos; data-name=&apos;Rectangle 201&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_439&apos; data-name=&apos;Group 439&apos; transform=&apos;translate(7.914 14.948)&apos;%3E%3Cg id=&apos;Group_438&apos; data-name=&apos;Group 438&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_202&apos; data-name=&apos;Rectangle 202&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_441&apos; data-name=&apos;Group 441&apos; transform=&apos;translate(12.31 14.948)&apos;%3E%3Cg id=&apos;Group_440&apos; data-name=&apos;Group 440&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_203&apos; data-name=&apos;Rectangle 203&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_443&apos; data-name=&apos;Group 443&apos; transform=&apos;translate(14.948 14.948)&apos;%3E%3Cg id=&apos;Group_442&apos; data-name=&apos;Group 442&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_204&apos; data-name=&apos;Rectangle 204&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_445&apos; data-name=&apos;Group 445&apos; transform=&apos;translate(4.397 19.345)&apos;%3E%3Cg id=&apos;Group_444&apos; data-name=&apos;Group 444&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_205&apos; data-name=&apos;Rectangle 205&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_447&apos; data-name=&apos;Group 447&apos; transform=&apos;translate(7.914 19.345)&apos;%3E%3Cg id=&apos;Group_446&apos; data-name=&apos;Group 446&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_206&apos; data-name=&apos;Rectangle 206&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_449&apos; data-name=&apos;Group 449&apos; transform=&apos;translate(12.31 19.345)&apos;%3E%3Cg id=&apos;Group_448&apos; data-name=&apos;Group 448&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_207&apos; data-name=&apos;Rectangle 207&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_451&apos; data-name=&apos;Group 451&apos; transform=&apos;translate(14.948 19.345)&apos;%3E%3Cg id=&apos;Group_450&apos; data-name=&apos;Group 450&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_208&apos; data-name=&apos;Rectangle 208&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_453&apos; data-name=&apos;Group 453&apos; transform=&apos;translate(19.345 14.948)&apos;%3E%3Cg id=&apos;Group_452&apos; data-name=&apos;Group 452&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_209&apos; data-name=&apos;Rectangle 209&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.095 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E</iaixsl:attribute>
															<iaixsl:attribute name="alt">iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
														</img>
													</iaixsl:when>
													<iaixsl:otherwise>
														<img>
															<iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
															<iaixsl:attribute name="alt">iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
														</img>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</iaixsl:if>
										</div>
									</div>
								</iaixsl:for-each>
								<iaixsl:for-each select="page/prepaid/prepaid_history/item[position() = last()]">
									<div class="orderdetails_payments__item">
										<div class="orderdetails_payments__wrapper">
											<strong class="orderdetails_payments__date">
												<iaixsl:choose>
													<iaixsl:when test="dates/date_cancelled/@date">
														<iaixsl:value-of select="dates/date_cancelled/@date"/>
													</iaixsl:when>
													<iaixsl:when test="dates/date_confirm/@date">
														<iaixsl:value-of select="dates/date_confirm/@date"/>
													</iaixsl:when>
													<iaixsl:when test="dates/date_add/@date">
														<iaixsl:value-of select="dates/date_add/@date"/>
													</iaixsl:when>
												</iaixsl:choose>
											</strong>
											<div class="orderdetails_payments__explanation">
												<iaixsl:choose>
													<iaixsl:when test="dates/date_canceled/@date">
														<iaixsl:choose>
															<iaixsl:when test="amount/@mark='negativ'">
																iai_i18n:[V3licmFubywgYWxlIHpyZXp5Z25vd2FubyB6ZSB6d3JvdHU=]
															</iaixsl:when>
															<iaixsl:otherwise>
																iai_i18n:[V3licmHFgmXFmywgYWxlIHpyZXp5Z25vd2HFgmXFmyB6IHDFgmF0bm/Fm2Np]
															</iaixsl:otherwise>
														</iaixsl:choose>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:choose>
															<iaixsl:when test="amount/@mark='negativ'">
																<iaixsl:choose>
																	<iaixsl:when test="@status = 'y'">iai_i18n:[WmFwxYJhY29ubw==] </iaixsl:when>
																	<iaixsl:otherwise>iai_i18n:[V3licmFubw==] </iaixsl:otherwise>
																</iaixsl:choose>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:choose>
																	<iaixsl:when test="@status = 'y'">iai_i18n:[WmFwxYJhY2nFgmXFmw==] </iaixsl:when>
																	<iaixsl:otherwise>iai_i18n:[V3licmHFgmXFmw==] </iaixsl:otherwise>
																</iaixsl:choose>
															</iaixsl:otherwise>
														</iaixsl:choose>
														<iaixsl:if test="@status = 'y'"><iaixsl:value-of select="amount/client_currency/@value_formatted"/> iai_i18n:[cHJ6ZXo=] </iaixsl:if>
													</iaixsl:otherwise>
												</iaixsl:choose>

												<iaixsl:choose>
													<iaixsl:when test="@payment_id='27'"> 
														iai_i18n:[c2FsZG8gKG5hZHDFgmF0YSBuYSBrb25jaWUga2xpZW50YSk=]
													</iaixsl:when>
													<iaixsl:when test="$idoPay2 and @payment_id = '29' and (@payment_form_id = '44' or @payment_form_id = '45') and count(/shop/page/prepaid_methods/item[@group='card'][not(@system_id='29')]) = 0">
                            iai_i18n:[a2FydMSZIHDFgmF0bmljesSF]
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="@payment_name"/>
													</iaixsl:otherwise>
												</iaixsl:choose>

												<iaixsl:if test="dates/date_canceled/@date">
													<iaixsl:choose>
														<iaixsl:when test="amount/@mark='negativ'">
																iai_i18n:[bmEga3dvdMSZ]
														</iaixsl:when>
														<iaixsl:otherwise>
																iai_i18n:[bmEga3dvdMSZ]
														</iaixsl:otherwise>
													</iaixsl:choose>
													<iaixsl:value-of select="amount/client_currency/@value_formatted"/>.
												</iaixsl:if>

												<iaixsl:if test="not(dates/date_canceled/@date)">
													<iaixsl:choose>
														<iaixsl:when test="amount/@mark='negativ'">
																iai_i18n:[amFrbyBmb3JtxJkgendyb3R1].
																iai_i18n:[S3dvdGEgZG8gendyb3R1IHRv]
																<iaixsl:value-of select="amount/client_currency/@value_formatted"/>.
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:choose>
																<iaixsl:when test="@status = 'y'">.</iaixsl:when>
																<iaixsl:otherwise> iai_i18n:[amFrbyBmb3JtxJkgcMWCYXRub8WbY2k=]. iai_i18n:[S3dvdGEgZG8gd3DFgmF0eSB0bw==] <iaixsl:value-of select="amount/client_currency/@value_formatted"/>.</iaixsl:otherwise>
																</iaixsl:choose>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</iaixsl:if>


												<iaixsl:if test="@status = 'n'">
													<iaixsl:if test="not(amount/@mark='negativ')">
														<iaixsl:if test="additional_info/data">
															<iaixsl:choose>
																<iaixsl:when test="@other_payments= 'true'">
																	<br/>iai_i18n:[RG9rb25haiB3cMWCYXR5IG5hIHBvbmnFvHN6ZSBkYW5lIGx1YiB3eWJpZXJ6IGlubnkgc3Bvc8OzYiB6YXDFgmF0eQ==].
																</iaixsl:when>
																<iaixsl:otherwise>
																	<br/>iai_i18n:[RG9rb25haiB3cMWCYXR5IG5hIHBvbmnFvHN6ZSBkYW5l].
																</iaixsl:otherwise>
															</iaixsl:choose>

															<div class="orderdetails_payments__transfer pt-2 pb-1">
																<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																	<span class="orderdetails_payments__transfer_name">iai_i18n:[TmF6d2Egb2RiaW9yY3k=]: </span>
																	<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@receiver"/></strong>
																</div>
																<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																	<span class="orderdetails_payments__transfer_name">iai_i18n:[TnVtZXIga29udGE=]: </span>
																	<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@account"/></strong>
																</div>
																<iaixsl:if test="additional_info/data/@bankname != ''">
																	<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																		<span class="orderdetails_payments__transfer_name">Bank:  </span>
																		<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@bankname"/></strong>
																	</div>
																</iaixsl:if>
																<iaixsl:if test="additional_info/data/@swift_bic != ''">
																	<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																		<span class="orderdetails_payments__transfer_name">iai_i18n:[U1dJRlQ=]: </span>
																		<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@swift_bic"/></strong>
																	</div>
																</iaixsl:if>
																<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																	<span class="orderdetails_payments__transfer_name">iai_i18n:[VHl0dcWCIHByemVsZXd1]: </span>
																	<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@title"/></strong>
																</div>
																<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																	<span class="orderdetails_payments__transfer_name">iai_i18n:[S3dvdGEgcHJ6ZWxld3U=]: </span>
																	<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="amount/client_currency/@value_formatted"/></strong>
																</div>
															</div>
														</iaixsl:if>
													</iaixsl:if>
												</iaixsl:if>
											</div>
										</div>
										
										<div class="orderdetails_payments__icon">
											<iaixsl:if test="@icon">
												<iaixsl:choose>
													<iaixsl:when test="$idoPay2 and @payment_id = '29' and (@payment_form_id = '44' or @payment_form_id = '45') and count(/shop/page/prepaid_methods/item[@group='card'][not(@system_id='29')]) = 0">
														<iaixsl:if test="/shop/page/prepaid_methods/item[@id='44']">
															<img>
																<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='44']/@icon"/></iaixsl:attribute>
																<iaixsl:attribute name="alt">iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='44']/@name"/></iaixsl:attribute>
															</img>
														</iaixsl:if>
														<iaixsl:if test="/shop/page/prepaid_methods/item[@id='45']">
															<img>
																<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='45']/@icon"/></iaixsl:attribute>
																<iaixsl:attribute name="alt">iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='45']/@name"/></iaixsl:attribute>
															</img>
														</iaixsl:if>
													</iaixsl:when>
													<iaixsl:when test="@payment_id = '38'">
														<img>
															<iaixsl:attribute name="src">data:image/svg+xml,%3Csvg xmlns=&apos;http://www.w3.org/2000/svg&apos; id=&apos;calendar&apos; width=&apos;26&apos; height=&apos;26&apos; fill=&apos;%23333&apos; viewBox=&apos;0 0 26 26&apos;%3E%3Cg id=&apos;Group_425&apos; data-name=&apos;Group 425&apos;%3E%3Cg id=&apos;Group_424&apos; data-name=&apos;Group 424&apos;%3E%3Cpath id=&apos;Path_75&apos; data-name=&apos;Path 75&apos; d=&apos;M22.512,1.992h-1.2V0H19.324V1.992H6.176V0H4.184V1.992h-1.2A2.992,2.992,0,0,0,0,4.98V22.512A2.992,2.992,0,0,0,2.988,25.5H22.512A2.992,2.992,0,0,0,25.5,22.512V4.98A2.992,2.992,0,0,0,22.512,1.992Zm1,20.52a1,1,0,0,1-1,1H2.988a1,1,0,0,1-1-1V9.363H23.508Zm0-15.141H1.992V4.98a1,1,0,0,1,1-1h1.2V5.977H6.176V3.984H19.324V5.977h1.992V3.984h1.2a1,1,0,0,1,1,1Z&apos;%3E%3C/path%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_427&apos; data-name=&apos;Group 427&apos; transform=&apos;translate(4.397 11.431)&apos;%3E%3Cg id=&apos;Group_426&apos; data-name=&apos;Group 426&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_196&apos; data-name=&apos;Rectangle 196&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_429&apos; data-name=&apos;Group 429&apos; transform=&apos;translate(7.914 11.431)&apos;%3E%3Cg id=&apos;Group_428&apos; data-name=&apos;Group 428&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_197&apos; data-name=&apos;Rectangle 197&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_431&apos; data-name=&apos;Group 431&apos; transform=&apos;translate(12.31 11.431)&apos;%3E%3Cg id=&apos;Group_430&apos; data-name=&apos;Group 430&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_198&apos; data-name=&apos;Rectangle 198&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_433&apos; data-name=&apos;Group 433&apos; transform=&apos;translate(14.948 11.431)&apos;%3E%3Cg id=&apos;Group_432&apos; data-name=&apos;Group 432&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_199&apos; data-name=&apos;Rectangle 199&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_435&apos; data-name=&apos;Group 435&apos; transform=&apos;translate(19.345 11.431)&apos;%3E%3Cg id=&apos;Group_434&apos; data-name=&apos;Group 434&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_200&apos; data-name=&apos;Rectangle 200&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.095 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_437&apos; data-name=&apos;Group 437&apos; transform=&apos;translate(4.397 14.948)&apos;%3E%3Cg id=&apos;Group_436&apos; data-name=&apos;Group 436&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_201&apos; data-name=&apos;Rectangle 201&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_439&apos; data-name=&apos;Group 439&apos; transform=&apos;translate(7.914 14.948)&apos;%3E%3Cg id=&apos;Group_438&apos; data-name=&apos;Group 438&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_202&apos; data-name=&apos;Rectangle 202&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_441&apos; data-name=&apos;Group 441&apos; transform=&apos;translate(12.31 14.948)&apos;%3E%3Cg id=&apos;Group_440&apos; data-name=&apos;Group 440&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_203&apos; data-name=&apos;Rectangle 203&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_443&apos; data-name=&apos;Group 443&apos; transform=&apos;translate(14.948 14.948)&apos;%3E%3Cg id=&apos;Group_442&apos; data-name=&apos;Group 442&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_204&apos; data-name=&apos;Rectangle 204&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_445&apos; data-name=&apos;Group 445&apos; transform=&apos;translate(4.397 19.345)&apos;%3E%3Cg id=&apos;Group_444&apos; data-name=&apos;Group 444&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_205&apos; data-name=&apos;Rectangle 205&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_447&apos; data-name=&apos;Group 447&apos; transform=&apos;translate(7.914 19.345)&apos;%3E%3Cg id=&apos;Group_446&apos; data-name=&apos;Group 446&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_206&apos; data-name=&apos;Rectangle 206&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_449&apos; data-name=&apos;Group 449&apos; transform=&apos;translate(12.31 19.345)&apos;%3E%3Cg id=&apos;Group_448&apos; data-name=&apos;Group 448&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_207&apos; data-name=&apos;Rectangle 207&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_451&apos; data-name=&apos;Group 451&apos; transform=&apos;translate(14.948 19.345)&apos;%3E%3Cg id=&apos;Group_450&apos; data-name=&apos;Group 450&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_208&apos; data-name=&apos;Rectangle 208&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_453&apos; data-name=&apos;Group 453&apos; transform=&apos;translate(19.345 14.948)&apos;%3E%3Cg id=&apos;Group_452&apos; data-name=&apos;Group 452&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_209&apos; data-name=&apos;Rectangle 209&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.095 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E</iaixsl:attribute>
															<iaixsl:attribute name="alt">iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
														</img>
													</iaixsl:when>
													<iaixsl:otherwise>
														<img>
															<iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
															<iaixsl:attribute name="alt">iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
														</img>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</iaixsl:if>
										</div>
									</div>
									
									
								</iaixsl:for-each>
								
								<iaixsl:if test="/shop/page/prepaid/points/@display">
									<div class="orderdetails_summary_debit">
										iai_i18n:[T2JlY25pZSBuYSBzd29pbSBrb25jaWUgbWFzeg==]
										<b><iaixsl:value-of select="/shop/page/prepaid/points/@client_points"/><span> iai_i18n:[cGt0].</span></b>

									</div>
								</iaixsl:if>
								
								<iaixsl:if test="page/prepaid/details/@paymentstatus != 'g' and /shop/page/prepaid_methods/item and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true')">
									<iaixsl:if test="page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id != 153">
										<span class="orderdetails_payments__unfinished">iai_i18n:[SmXFvGVsaSB6IGpha2llZ29rb2x3aWVrIHBvd29kdSBwcm9jZXMgcMWCYWNlbmlhIG5pZSB6b3N0YcWCIHVrb8WEY3pvbnksIGRva29uYWogd3DFgmF0eSBwb25vd25pZSBsdWIgd3liaWVyeiBpbm55IHNwb3PDs2IgemFwxYJhdHk=].</span>
									</iaixsl:if>
									<div class="orderdetails_retry align-items-center justify-content-center flex-column mb-3 flex-sm-row">
										<iaixsl:attribute name="data-payform_id"><iaixsl:value-of select="page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id"/></iaixsl:attribute>
										<iaixsl:attribute name="data-retry_payment"><iaixsl:value-of select="page/prepaid/prepaid_history/@retry_payment"/></iaixsl:attribute>
										<iaixsl:attribute name="data-pay_link"><iaixsl:value-of select="page/prepaid/prepaid_history/item[position()=last()]/@pay_link"/></iaixsl:attribute>
										<iaixsl:if test="page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id != '153' and page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id != '110' and /shop/page/prepaid/prepaid_history/item[position() = last()]/@status='n'">
											<iaixsl:choose>
												<iaixsl:when test="/shop/page/prepaid/order/@payment_remain &gt; 0">
													<iaixsl:choose>
														<iaixsl:when test="/shop/page/prepaid/details/@checkout_type = 'idosell' and /shop/page/prepaid/details/@orderid != ''">
															<express-checkout type="orderdetails" action="same-payment" instantiate-payment="{$ExpressCheckoutInstantiateFirstPayment}" installment-payment="{/shop/page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id='203'}" remaining-payment="{/shop/page/prepaid/order/@payment_remain_formatted}" order-number="{/shop/page/prepaid/details/@orderid}" for-points="{/shop/page/prepaid/points/@display}" remaining-points="{/shop/page/prepaid/points/@order_cost}"/>
														</iaixsl:when>
														<iaixsl:otherwise>
															<a href="#orderdetails_retry_same" class="orderdetails_retry__button --same btn --solid mr-md-3 mb-3 mb-md-0 --large">
															<iaixsl:choose>
																<iaixsl:when test="/shop/page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id='203'">
																	iai_i18n:[UHJ6ZWpkxbogZG8gcMWCYXRub8WbY2kgb2Ryb2N6b25lag==] (<iaixsl:value-of select="/shop/page/prepaid/order/@payment_remain_formatted"/>)
																</iaixsl:when>
																<iaixsl:otherwise>
																	iai_i18n:[WmFwxYJhxIc=] <iaixsl:value-of select="/shop/page/prepaid/order/@payment_remain_formatted"/>
																	(iai_i18n:[c3Byw7NidWogcG9ub3duaWU=])
																</iaixsl:otherwise>
															</iaixsl:choose>
																	<iaixsl:if test="/shop/page/prepaid/points/@display">
																			<span>
																						+
																					<iaixsl:value-of select="/shop/page/prepaid/points/@order_cost"/> iai_i18n:[UEtU].
																			</span>
																	</iaixsl:if>
															</a>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</iaixsl:when>
												<iaixsl:otherwise>
														<span>
																iai_i18n:[Wndyb3Q=]:
																<iaixsl:value-of select="/shop/page/prepaid/prepaid_history/item[position() = last()]/amount/order_currency/@value_formatted"/>
														</span>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</iaixsl:if>
										<iaixsl:if test="(/shop/page/prepaid/prepaid_history/item[position() = last()]/@status != 'n' and /shop/page/prepaid/prepaid_history/@currencysum * 100 &gt; 0) or (not(count(/shop/page/prepaid/prepaid_history/item) &gt; 0) and page/prepaid/prepaid_history/@show_payment_button = 'true')">
											<iaixsl:choose>
												<iaixsl:when test="/shop/page/prepaid/details/@checkout_type = 'idosell' and /shop/page/prepaid/details/@orderid != ''">
													<express-checkout type="orderdetails" action="retry-payment" instantiate-payment="{$ExpressCheckoutInstantiateFirstPayment}" order-number="{/shop/page/prepaid/details/@orderid}"/>
												</iaixsl:when>
												<iaixsl:otherwise>
													<a href="#orderdetails_retry_new_payment" class="orderdetails_retry__button --new --new_payment btn --solid --large">iai_i18n:[WmFwxYJhxIc=] <iaixsl:value-of select="/shop/page/prepaid/prepaid_history/@currencysum_formatted"/></a>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</iaixsl:if>
										<iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position() = last()]/@status='n' and /shop/page/prepaid/prepaid_history/@other_payments='true' and /shop/page/prepaid/order/@payment_remain &gt; 0">
											<iaixsl:choose>
												<iaixsl:when test="/shop/page/prepaid/details/@checkout_type = 'idosell' and /shop/page/prepaid/details/@orderid != ''">
													<express-checkout type="orderdetails" action="new-payment" order-number="{/shop/page/prepaid/details/@orderid}"/>
												</iaixsl:when>
												<iaixsl:otherwise>
													<a href="#orderdetails_retry_new" class="orderdetails_retry__button --new btn">iai_i18n:[V3liaWVyeiBpbm7EhSBmb3JtxJkgcMWCYXRub8WbY2k=]</a>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</iaixsl:if>
									</div>
								</iaixsl:if>

								<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes'">
									<div class="orderdetails_division">
										<strong>iai_i18n:[UG8gZG9rb25hbml1IHDFgmF0bm/Fm2NpLCB6YW3Ds3dpZW5pZSB6b3N0YW5pZSBwb2R6aWVsb25lIG5hIGR3YSBvZGR6aWVsbmU=].</strong>
									</div>
								</iaixsl:if>
							</div>
						</div>
						<script>
							app_shop.vars.leftToPay = &apos;<iaixsl:value-of select="/shop/page/prepaid/order/@payment_remain_formatted"/>&apos;;
						</script>
					</div>
				
			</div>
		</div>
	</div>

	<iaixsl:if test="page/prepaid/details/@paymentstatus != 'g' ">
		<div id="orderdetails_prepaid_methods" class="orderdetails_prepaid_methods" data-action="/order-newpayment.php" data-method="post">
			<div id="prepaid_pay_label">
				<span class="prepaid_pay_label">iai_i18n:[T3DFgmHEhyBwcnp5asSZdGUgemFtw7N3aWVuaWUgbnI=] <iaixsl:value-of select="page/prepaid/details/@orderid"/></span>
			</div>
			<script>
				
				const prepaid_data = {
					shopLogoSettings: { url: &quot;<iaixsl:if test="/shop/mask/top/link/image/@src"><iaixsl:value-of select="/shop/mask/top/link/image/@src"/></iaixsl:if>&quot;},
					cancel_link: <iaixsl:choose>
						<iaixsl:when test="page/prepaid/prepaid_history/item[position() = last()]/@cancel_link">
							&apos;<iaixsl:value-of select="page/prepaid/prepaid_history/item[position() = last()]/@cancel_link"/>&apos;,
						</iaixsl:when>
						<iaixsl:otherwise>false,</iaixsl:otherwise>
					</iaixsl:choose>
					refresh_link: `/orderdetails.php?order_number=<iaixsl:value-of select="/shop/page/prepaid/details/@orderid"/>`,
					views: {
						selectPaymentGroup: false,
						selectPaymentMethod: false,
						payWithSelectedPaymentMethod:<iaixsl:choose>
							<iaixsl:when test="not(/shop/page/prepaid/details/@checkout_type = 'idosell') and /shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and /shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and not(/shop/page/prepaid/prepaid_history/item[position()=last()]/@express_pay = 'true')">true</iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,
						paymentWarning: false,
						orderSummary: false,
						expressCheckout: <iaixsl:choose>
							<iaixsl:when test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and /shop/page/prepaid/prepaid_history/item[position()=last()]/@express_pay = 'true'">true</iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,
					},
					allowChoosePaymentType: &apos;<iaixsl:value-of select="/shop/page/prepaid/details/@allowChoosePaymentType"/>&apos;,
					literals: {
						paymentTitle: ``,
						paymentPay: `iai_i18n:[WmFwxYJhxIc=] `,
						paymentGoBack: `iai_i18n:[V3liaWVyeiBpbm7EhSBmb3JtxJkgcMWCYXRub8WbY2k=]`,
						reloadPrepaid: `iai_i18n:[UG93csOzdCBkbyB6YW3Ds3dpZW5pYQ==]`,
					},
					lastSelectedPaymentGroup:<iaixsl:choose>
						<iaixsl:when test="/shop/page/prepaid_methods/item[@id = /shop/page/prepaid/prepaid_history/item[position()=last()]/@payment_form_id]/@method_as_group = 'true'">`<iaixsl:value-of select="/shop/page/prepaid_methods/item[@id = /shop/page/prepaid/prepaid_history/item[position()=last()]/@payment_form_id]/@id"/>`</iaixsl:when>
						<iaixsl:when test="/shop/page/prepaid_methods/item[@id = /shop/page/prepaid/prepaid_history/item[position()=last()]/@payment_form_id]/@id = '153'">`<iaixsl:value-of select="/shop/page/prepaid_methods/item[@id = /shop/page/prepaid/prepaid_history/item[position()=last()]/@payment_form_id]/@id"/>`</iaixsl:when>
						<iaixsl:otherwise>`<iaixsl:value-of select="/shop/page/prepaid_methods/item[@id = /shop/page/prepaid/prepaid_history/item[position()=last()]/@payment_form_id]/@group"/>`</iaixsl:otherwise>
						</iaixsl:choose>,
					lastSelectedPaymentMethod: `<iaixsl:value-of select="/shop/page/prepaid/prepaid_history/item[position()=last()]/@payment_form_id"/>`,
					paymentHMTL: null,
					warning: false,
					paymentMethodData: null,
					paymentGroupsOrder: [<iaixsl:for-each select="/shop/page/prepaid_methods/item"><iaixsl:variable name="groupOrderID"><iaixsl:value-of select="@group"/></iaixsl:variable><iaixsl:if test="not($groupOrderID = preceding-sibling::item[not(@method_as_group = 'true')]/@group) or @method_as_group = 'true'">&apos;<iaixsl:choose><iaixsl:when test="@method_as_group = 'true' or not(/shop/page/groupList/item[@id = $groupOrderID])"><iaixsl:value-of select="@id"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$groupOrderID"/></iaixsl:otherwise></iaixsl:choose>&apos;,</iaixsl:if></iaixsl:for-each>],
					paymentGroups: {
						<iaixsl:for-each select="/shop/page/prepaid_methods/item">
							<iaixsl:variable name="groupID"><iaixsl:value-of select="@group"/></iaixsl:variable>
							<iaixsl:variable name="groupName"><iaixsl:value-of select="/shop/page/groupList/item[@id = $groupID]/@name"/></iaixsl:variable>
							<iaixsl:if test="not($groupID = preceding-sibling::item[not(@method_as_group = 'true')]/@group) or @method_as_group = 'true'">
								<iaixsl:choose>
									<iaixsl:when test="@method_as_group = 'true' or not(/shop/page/groupList/item[@id = $groupID])">
										<iaixsl:value-of select="@id"/>: {
										groupID: &apos;<iaixsl:value-of select="@id"/>&apos;,
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:value-of select="$groupID"/>: {
										groupID: &apos;<iaixsl:value-of select="$groupID"/>&apos;,
									</iaixsl:otherwise>
								</iaixsl:choose>
								open: <iaixsl:choose>
									<iaixsl:when test="(/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and /shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and @icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon) or (/shop/page/groupList/item[@id = $groupID]/@selected = 'true' and /shop/page/prepaid/prepaid_history/@show_selected_group = 'true' and not(@method_as_group='true')) or (@checked = 'true')">true</iaixsl:when>
									<iaixsl:otherwise>false</iaixsl:otherwise>
								</iaixsl:choose>,
								single_choice: <iaixsl:choose>
									<iaixsl:when test="@method_as_group = 'true' or not(/shop/page/groupList/item[@id = $groupID]) or not($groupID = following-sibling::item/@group) or /shop/page/groupList/item[@id = $groupID]/@single_form = 'true'">true</iaixsl:when>
									<iaixsl:otherwise>false</iaixsl:otherwise>
								</iaixsl:choose>,
								single_form: <iaixsl:choose>
									<iaixsl:when test="/shop/page/groupList/item[@id = $groupID]/@single_form = 'true'">true</iaixsl:when>
									<iaixsl:otherwise>false</iaixsl:otherwise>
								</iaixsl:choose>,
								name: <iaixsl:choose>
									<iaixsl:when test="@method_as_group = 'true' or (not(/shop/page/groupList/item[@id = $groupID]) and not(@id = '153'))">
										<iaixsl:choose>
											<iaixsl:when test="@id = '2'">
												`iai_i18n:[Qm9uIHRvd2Fyb3d5]`
											</iaixsl:when>
											<iaixsl:when test="@id = '190'">
												`iai_i18n:[S2FydGEgcG9kYXJ1bmtvd2E=]`
											</iaixsl:when>
											<iaixsl:otherwise>
												`<iaixsl:value-of disable-output-escaping="yes" select="@name"/>`
											</iaixsl:otherwise>
										</iaixsl:choose>
									</iaixsl:when>
									<iaixsl:when test="$groupID = 'simple_transfer'">
										`iai_i18n:[UHJ6ZWxldyB6d3lrxYJ5]`
									</iaixsl:when>
									<iaixsl:when test="$groupID = 'transfer'">
										`iai_i18n:[UHJ6ZWxldyBvbmxpbmU=]`
									</iaixsl:when>
									<iaixsl:when test="$groupID = 'card'">
										`iai_i18n:[S2FydGEgcMWCYXRuaWN6YQ==]`
									</iaixsl:when>
									<iaixsl:when test="$groupID = 'installment'">
										`iai_i18n:[UMWCYXRub8WbxIcgcmF0YWxuYQ==]`
									</iaixsl:when>
									<iaixsl:when test="$groupID = 'others'">
										`iai_i18n:[Qm9ueSwga2FydHkgcG9kYXJ1bmtvd2U=]`
									</iaixsl:when>
									<iaixsl:when test="@id = '153'">
										`iai_i18n:[RmFrdHVyYSBuYSB0ZXJtaW4=]`
									</iaixsl:when>
									<iaixsl:otherwise>
										`<iaixsl:value-of disable-output-escaping="yes" select="$groupName"/>`
									</iaixsl:otherwise>
								</iaixsl:choose>,
								icon: [
									<iaixsl:choose>
										<iaixsl:when test="@method_as_group = 'true' and (@icon != '' or @icon_svg != '')">
											{
												alt: `iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="@name"/>`,
												src: `<iaixsl:choose><iaixsl:when test="@icon_svg != ''"><iaixsl:value-of select="@icon_svg"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@icon"/></iaixsl:otherwise></iaixsl:choose>`,
											},
										</iaixsl:when>
										<iaixsl:when test="$groupID = 'card'">
											{
												alt: `iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="@name"/>`,
												src: `<iaixsl:choose><iaixsl:when test="@icon_svg != ''"><iaixsl:value-of select="@icon_svg"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@icon"/></iaixsl:otherwise></iaixsl:choose>`,
											},
											<iaixsl:if test="$groupID = following-sibling::item/@group">
												<iaixsl:for-each select="following-sibling::item[@group = $groupID][not(position() &gt; 5)][not(@method_as_group = 'true')]">
													{
														alt: `iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="@name"/>`,
														src: `<iaixsl:choose><iaixsl:when test="@icon_svg != ''"><iaixsl:value-of select="@icon_svg"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@icon"/></iaixsl:otherwise></iaixsl:choose>`,
													},
												</iaixsl:for-each>
											</iaixsl:if>
										</iaixsl:when>
										<iaixsl:when test="$groupID = 'transfer'">
											{
												alt: `<iaixsl:value-of select="$groupName"/>`,
												src: `data:image/svg+xml,%3Csvg xmlns=&apos;http://www.w3.org/2000/svg&apos; id=&apos;Component_1_1&apos; data-name=&apos;Component 1 – 1&apos; width=&apos;26&apos; height=&apos;34&apos; viewBox=&apos;0 0 26 34&apos;%3E%3Cpath id=&apos;Path_12&apos; data-name=&apos;Path 12&apos; d=&apos;M25.768,20.77V0H0V20.771H9.446v.85a2.35,2.35,0,0,1-2.36,2.334H5.764v1.5H19.969v-1.5H18.647a2.35,2.35,0,0,1-2.36-2.334v-.85h9.481ZM24.256,1.5V14.383H1.512V1.5ZM1.512,15.878H24.256v3.4H1.512ZM15.58,23.955H10.153a3.782,3.782,0,0,0,.806-2.334v-.85h3.816v.85a3.782,3.782,0,0,0,.806,2.334Zm0,0&apos; transform=&apos;translate(0 8.102)&apos; fill=&apos;%23333&apos;%3E%3C/path%3E%3Cg id=&apos;Rectangle_15&apos; data-name=&apos;Rectangle 15&apos; transform=&apos;translate(6.676)&apos; fill=&apos;%23fff&apos; stroke=&apos;%23333&apos; stroke-width=&apos;1.5&apos;%3E%3Crect width=&apos;12.991&apos; height=&apos;16.664&apos; rx=&apos;2&apos; stroke=&apos;none&apos;%3E%3C/rect%3E%3Crect x=&apos;0.75&apos; y=&apos;0.75&apos; width=&apos;11.491&apos; height=&apos;15.164&apos; rx=&apos;1.25&apos; fill=&apos;none&apos;%3E%3C/rect%3E%3C/g%3E%3Cline id=&apos;Line_3&apos; data-name=&apos;Line 3&apos; y2=&apos;15.787&apos; transform=&apos;translate(10.852 0.439)&apos; fill=&apos;none&apos; stroke=&apos;%23333&apos; stroke-width=&apos;1.5&apos;%3E%3C/line%3E%3Cline id=&apos;Line_4&apos; data-name=&apos;Line 4&apos; y2=&apos;14.91&apos; transform=&apos;translate(14.288 1.316)&apos; fill=&apos;none&apos; stroke=&apos;%23333&apos; stroke-width=&apos;1.5&apos;%3E%3C/line%3E%3Cline id=&apos;Line_10&apos; data-name=&apos;Line 10&apos; x2=&apos;17&apos; transform=&apos;translate(4.499 15.987)&apos; fill=&apos;none&apos; stroke=&apos;%23333&apos; stroke-width=&apos;1.4&apos;%3E%3C/line%3E%3C/svg%3E`,
											},
										</iaixsl:when>
										<iaixsl:when test="$groupID = 'installment'">
											{
												alt: `<iaixsl:value-of select="$groupName"/>`,
												src: `data:image/svg+xml,%3Csvg xmlns=&apos;http://www.w3.org/2000/svg&apos; width=&apos;25&apos; height=&apos;25&apos; viewBox=&apos;0 0 25 25&apos;%3E%3Cg id=&apos;calendar_1_&apos; transform=&apos;translate(0.25 0.25)&apos;%3E%3Cpath id=&apos;Path_23&apos; data-name=&apos;Path 23&apos; d=&apos;M22.842,2.336H19.467V.779a.779.779,0,0,0-1.557,0V2.336H13.238V.779a.779.779,0,0,0-1.557,0V2.336H7.008V.779a.779.779,0,0,0-1.557,0V2.336H2.077A2.076,2.076,0,0,0,0,4.412V22.841a2.077,2.077,0,0,0,2.077,2.077H22.842a2.076,2.076,0,0,0,2.076-2.077V4.412A2.075,2.075,0,0,0,22.842,2.336Zm.519,20.505a.52.52,0,0,1-.519.519H2.077a.52.52,0,0,1-.519-.519V4.412a.52.52,0,0,1,.519-.519H5.451V5.451a.779.779,0,0,0,1.557,0V3.893H11.68V5.451a.779.779,0,0,0,1.557,0V3.893H17.91V5.451a.779.779,0,0,0,1.557,0V3.893h3.375a.519.519,0,0,1,.519.519Z&apos; fill=&apos;%23333&apos; stroke=&apos;%23333&apos; stroke-width=&apos;0.5&apos;%3E%3C/path%3E%3Crect id=&apos;Rectangle_18&apos; data-name=&apos;Rectangle 18&apos; width=&apos;3.115&apos; height=&apos;2.336&apos; transform=&apos;translate(5.451 9.344)&apos; fill=&apos;%23333&apos; stroke=&apos;%23333&apos; stroke-width=&apos;0.5&apos;%3E%3C/rect%3E%3Crect id=&apos;Rectangle_19&apos; data-name=&apos;Rectangle 19&apos; width=&apos;3.115&apos; height=&apos;2.336&apos; transform=&apos;translate(5.451 13.238)&apos; fill=&apos;%23333&apos; stroke=&apos;%23333&apos; stroke-width=&apos;0.5&apos;%3E%3C/rect%3E%3Crect id=&apos;Rectangle_20&apos; data-name=&apos;Rectangle 20&apos; width=&apos;3.115&apos; height=&apos;2.336&apos; transform=&apos;translate(5.451 17.131)&apos; fill=&apos;%23333&apos; stroke=&apos;%23333&apos; stroke-width=&apos;0.5&apos;%3E%3C/rect%3E%3Crect id=&apos;Rectangle_21&apos; data-name=&apos;Rectangle 21&apos; width=&apos;3.115&apos; height=&apos;2.336&apos; transform=&apos;translate(10.902 17.131)&apos; fill=&apos;%23333&apos; stroke=&apos;%23333&apos; stroke-width=&apos;0.5&apos;%3E%3C/rect%3E%3Crect id=&apos;Rectangle_22&apos; data-name=&apos;Rectangle 22&apos; width=&apos;3.115&apos; height=&apos;2.336&apos; transform=&apos;translate(10.902 13.238)&apos; fill=&apos;%23333&apos; stroke=&apos;%23333&apos; stroke-width=&apos;0.5&apos;%3E%3C/rect%3E%3Crect id=&apos;Rectangle_23&apos; data-name=&apos;Rectangle 23&apos; width=&apos;3.115&apos; height=&apos;2.336&apos; transform=&apos;translate(10.902 9.344)&apos; fill=&apos;%23333&apos; stroke=&apos;%23333&apos; stroke-width=&apos;0.5&apos;%3E%3C/rect%3E%3Crect id=&apos;Rectangle_24&apos; data-name=&apos;Rectangle 24&apos; width=&apos;3.115&apos; height=&apos;2.336&apos; transform=&apos;translate(16.352 17.131)&apos; fill=&apos;%23333&apos; stroke=&apos;%23333&apos; stroke-width=&apos;0.5&apos;%3E%3C/rect%3E%3Crect id=&apos;Rectangle_25&apos; data-name=&apos;Rectangle 25&apos; width=&apos;3.115&apos; height=&apos;2.336&apos; transform=&apos;translate(16.352 13.238)&apos; fill=&apos;%23333&apos; stroke=&apos;%23333&apos; stroke-width=&apos;0.5&apos;%3E%3C/rect%3E%3Crect id=&apos;Rectangle_26&apos; data-name=&apos;Rectangle 26&apos; width=&apos;3.115&apos; height=&apos;2.336&apos; transform=&apos;translate(16.352 9.344)&apos; fill=&apos;%23333&apos; stroke=&apos;%23333&apos; stroke-width=&apos;0.5&apos;%3E%3C/rect%3E%3C/g%3E%3C/svg%3E`,
											},
										</iaixsl:when>
										<iaixsl:when test="@id = '153'">
											{
												alt: `<iaixsl:value-of select="@name"/>`,
												src: `data:image/svg+xml,%3Csvg xmlns=&apos;http://www.w3.org/2000/svg&apos; id=&apos;calendar&apos; width=&apos;26&apos; height=&apos;26&apos; fill=&apos;%23333&apos; viewBox=&apos;0 0 26 26&apos;%3E%3Cg id=&apos;Group_425&apos; data-name=&apos;Group 425&apos;%3E%3Cg id=&apos;Group_424&apos; data-name=&apos;Group 424&apos;%3E%3Cpath id=&apos;Path_75&apos; data-name=&apos;Path 75&apos; d=&apos;M22.512,1.992h-1.2V0H19.324V1.992H6.176V0H4.184V1.992h-1.2A2.992,2.992,0,0,0,0,4.98V22.512A2.992,2.992,0,0,0,2.988,25.5H22.512A2.992,2.992,0,0,0,25.5,22.512V4.98A2.992,2.992,0,0,0,22.512,1.992Zm1,20.52a1,1,0,0,1-1,1H2.988a1,1,0,0,1-1-1V9.363H23.508Zm0-15.141H1.992V4.98a1,1,0,0,1,1-1h1.2V5.977H6.176V3.984H19.324V5.977h1.992V3.984h1.2a1,1,0,0,1,1,1Z&apos;%3E%3C/path%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_427&apos; data-name=&apos;Group 427&apos; transform=&apos;translate(4.397 11.431)&apos;%3E%3Cg id=&apos;Group_426&apos; data-name=&apos;Group 426&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_196&apos; data-name=&apos;Rectangle 196&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_429&apos; data-name=&apos;Group 429&apos; transform=&apos;translate(7.914 11.431)&apos;%3E%3Cg id=&apos;Group_428&apos; data-name=&apos;Group 428&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_197&apos; data-name=&apos;Rectangle 197&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_431&apos; data-name=&apos;Group 431&apos; transform=&apos;translate(12.31 11.431)&apos;%3E%3Cg id=&apos;Group_430&apos; data-name=&apos;Group 430&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_198&apos; data-name=&apos;Rectangle 198&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_433&apos; data-name=&apos;Group 433&apos; transform=&apos;translate(14.948 11.431)&apos;%3E%3Cg id=&apos;Group_432&apos; data-name=&apos;Group 432&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_199&apos; data-name=&apos;Rectangle 199&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_435&apos; data-name=&apos;Group 435&apos; transform=&apos;translate(19.345 11.431)&apos;%3E%3Cg id=&apos;Group_434&apos; data-name=&apos;Group 434&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_200&apos; data-name=&apos;Rectangle 200&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.095 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_437&apos; data-name=&apos;Group 437&apos; transform=&apos;translate(4.397 14.948)&apos;%3E%3Cg id=&apos;Group_436&apos; data-name=&apos;Group 436&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_201&apos; data-name=&apos;Rectangle 201&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_439&apos; data-name=&apos;Group 439&apos; transform=&apos;translate(7.914 14.948)&apos;%3E%3Cg id=&apos;Group_438&apos; data-name=&apos;Group 438&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_202&apos; data-name=&apos;Rectangle 202&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_441&apos; data-name=&apos;Group 441&apos; transform=&apos;translate(12.31 14.948)&apos;%3E%3Cg id=&apos;Group_440&apos; data-name=&apos;Group 440&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_203&apos; data-name=&apos;Rectangle 203&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_443&apos; data-name=&apos;Group 443&apos; transform=&apos;translate(14.948 14.948)&apos;%3E%3Cg id=&apos;Group_442&apos; data-name=&apos;Group 442&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_204&apos; data-name=&apos;Rectangle 204&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_445&apos; data-name=&apos;Group 445&apos; transform=&apos;translate(4.397 19.345)&apos;%3E%3Cg id=&apos;Group_444&apos; data-name=&apos;Group 444&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_205&apos; data-name=&apos;Rectangle 205&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_447&apos; data-name=&apos;Group 447&apos; transform=&apos;translate(7.914 19.345)&apos;%3E%3Cg id=&apos;Group_446&apos; data-name=&apos;Group 446&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_206&apos; data-name=&apos;Rectangle 206&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_449&apos; data-name=&apos;Group 449&apos; transform=&apos;translate(12.31 19.345)&apos;%3E%3Cg id=&apos;Group_448&apos; data-name=&apos;Group 448&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_207&apos; data-name=&apos;Rectangle 207&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_451&apos; data-name=&apos;Group 451&apos; transform=&apos;translate(14.948 19.345)&apos;%3E%3Cg id=&apos;Group_450&apos; data-name=&apos;Group 450&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_208&apos; data-name=&apos;Rectangle 208&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_453&apos; data-name=&apos;Group 453&apos; transform=&apos;translate(19.345 14.948)&apos;%3E%3Cg id=&apos;Group_452&apos; data-name=&apos;Group 452&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_209&apos; data-name=&apos;Rectangle 209&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.095 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E`,
											},
										</iaixsl:when>
										<iaixsl:when test="$groupID = 'others'">
											{
												alt: `<iaixsl:value-of select="$groupName"/>`,
												src: `data:image/svg+xml,%3Csvg xmlns=&apos;http://www.w3.org/2000/svg&apos; width=&apos;38.44&apos; height=&apos;27.947&apos; viewBox=&apos;0 0 38.44 27.947&apos;%3E%3Cg id=&apos;Group_1616&apos; data-name=&apos;Group 1616&apos; transform=&apos;translate(-36 -220.526)&apos;%3E%3Cg id=&apos;gift-card&apos; transform=&apos;translate(36 145.193)&apos;%3E%3Cpath id=&apos;Path_525&apos; data-name=&apos;Path 525&apos; d=&apos;M238.505,148.8h-1.331a3.076,3.076,0,0,0-4.966-3.368,3.076,3.076,0,0,0-4.966,3.368h-1.33a.98.98,0,0,0-.98.98v4.2a.98.98,0,0,0,.98.98h.07v3.218a.98.98,0,0,0,.98.98h10.494a.98.98,0,0,0,.98-.98v-3.218h.07a.98.98,0,0,0,.98-.98v-4.2A.98.98,0,0,0,238.505,148.8Zm-7.276,8.395h-3.287v-2.238h3.287Zm0-4.2h-4.337v-2.238h4.337Zm0-4.2H230.11a1.119,1.119,0,1,1,1.119-1.119Zm1.959-1.119a1.119,1.119,0,1,1,1.119,1.119h-1.119Zm3.287,9.514h-3.287v-2.238h3.287Zm1.049-4.2h-4.337v-2.238h4.337Z&apos; transform=&apos;translate(-210.242 -60.069)&apos; fill=&apos;%23333&apos;/%3E%3Cpath id=&apos;Path_526&apos; data-name=&apos;Path 526&apos; d=&apos;M29.313,80.333H4.128A4.132,4.132,0,0,0,0,84.461V99.152a4.132,4.132,0,0,0,4.128,4.128H29.313a4.132,4.132,0,0,0,4.128-4.128V84.461A4.133,4.133,0,0,0,29.313,80.333Zm2.168,18.819a2.171,2.171,0,0,1-2.168,2.168H4.128a2.171,2.171,0,0,1-2.168-2.168V84.461a2.171,2.171,0,0,1,2.168-2.168H29.313a2.171,2.171,0,0,1,2.168,2.168Z&apos; transform=&apos;translate(0 0)&apos; fill=&apos;%23333&apos;/%3E%3Cpath id=&apos;Path_527&apos; data-name=&apos;Path 527&apos; d=&apos;M68.395,337.4H65.247a.98.98,0,1,0,0,1.959h3.148a.98.98,0,1,0,0-1.959Z&apos; transform=&apos;translate(-60.07 -240.277)&apos; fill=&apos;%23333&apos;/%3E%3Cpath id=&apos;Path_528&apos; data-name=&apos;Path 528&apos; d=&apos;M65.247,146.559h3.148a.98.98,0,1,0,0-1.959H65.247a.98.98,0,1,0,0,1.959Z&apos; transform=&apos;translate(-60.07 -60.07)&apos; fill=&apos;%23333&apos;/%3E%3Cpath id=&apos;Path_529&apos; data-name=&apos;Path 529&apos; d=&apos;M71.543,273.134h-6.3a.98.98,0,1,0,0,1.959h6.3a.98.98,0,1,0,0-1.959Z&apos; transform=&apos;translate(-60.07 -180.209)&apos; fill=&apos;%23333&apos;/%3E%3C/g%3E%3Cpath id=&apos;Subtraction_2&apos; data-name=&apos;Subtraction 2&apos; d=&apos;M-11327,8992.89h0v-2.014a2.165,2.165,0,0,0,1.481-2.055v-14.691a2.172,2.172,0,0,0-2.17-2.169h-25.186a2.164,2.164,0,0,0-2.067,1.513h-2.008a4.136,4.136,0,0,1,1.386-2.475,4.122,4.122,0,0,1,2.689-1h25.186a4.133,4.133,0,0,1,4.128,4.13v14.691a4.127,4.127,0,0,1-.989,2.677,4.145,4.145,0,0,1-2.449,1.393Z&apos; transform=&apos;translate(11398 -8749.473)&apos; fill=&apos;%23333&apos;/%3E%3C/g%3E%3C/svg%3E`,
											},
										</iaixsl:when>
										<iaixsl:otherwise>
											{
												alt: `iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="@name"/>`,
												src: `<iaixsl:choose><iaixsl:when test="@icon_svg != ''"><iaixsl:value-of select="@icon_svg"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@icon"/></iaixsl:otherwise></iaixsl:choose>`,
											},
										</iaixsl:otherwise>
									</iaixsl:choose>
								],
								idopay_card: <iaixsl:choose>
									<iaixsl:when test="(/shop/page/prepaid_methods/item[@id='44'][@system_id='29'] or /shop/page/prepaid_methods/item[@id='45'][@system_id='29']) and $idoPay != '' and @id = 'card' and count(/shop/page/prepaid_methods/item[@group='card'][not(@system_id='29')]) = 0">true</iaixsl:when>
									<iaixsl:otherwise>false</iaixsl:otherwise>
								</iaixsl:choose>,
								paymentMethods: [
									{
										id: <iaixsl:value-of select="@id"/>,
										selected: <iaixsl:choose>
											<iaixsl:when test="@checked = 'true'">true</iaixsl:when>
											<iaixsl:when test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and @icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon">true</iaixsl:when>
											<iaixsl:otherwise>false</iaixsl:otherwise>
										</iaixsl:choose>,
										name: <iaixsl:choose>
											<iaixsl:when test="@id = '2'">
												`iai_i18n:[Qm9uIHRvd2Fyb3d5]`
											</iaixsl:when>
											<iaixsl:when test="@id = '190'">
												`iai_i18n:[S2FydGEgcG9kYXJ1bmtvd2E=]`
											</iaixsl:when>
											<iaixsl:otherwise>
												`<iaixsl:value-of disable-output-escaping="yes" select="@name"/>`
											</iaixsl:otherwise>
										</iaixsl:choose>,
										payment_system_logo: `<iaixsl:value-of disable-output-escaping="yes" select="@payment_system_logo"/>`,
										icon: `<iaixsl:choose><iaixsl:when test="@icon_svg != ''"><iaixsl:value-of select="@icon_svg"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@icon"/></iaixsl:otherwise></iaixsl:choose>`,
										description: <iaixsl:choose>
											<iaixsl:when test="@description and not(@description = ' ')">`<iaixsl:value-of disable-output-escaping="yes" select="@description"/>`</iaixsl:when>
											<iaixsl:otherwise>false</iaixsl:otherwise>
										</iaixsl:choose>,
									},
									<iaixsl:if test="$groupID = following-sibling::item/@group">
										<iaixsl:for-each select="following-sibling::item[@group = $groupID][not(@method_as_group = 'true')]">
											{
												id: <iaixsl:value-of select="@id"/>,
												selected: <iaixsl:choose>
													<iaixsl:when test="@checked = 'true'">true</iaixsl:when>
													<iaixsl:when test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and @icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon">true</iaixsl:when>
													<iaixsl:otherwise>false</iaixsl:otherwise>
												</iaixsl:choose>,
												name: <iaixsl:choose>
													<iaixsl:when test="@id = '2'">
														`iai_i18n:[Qm9uIHRvd2Fyb3d5]`
													</iaixsl:when>
													<iaixsl:when test="@id = '190'">
														`iai_i18n:[S2FydGEgcG9kYXJ1bmtvd2E=]`
													</iaixsl:when>
													<iaixsl:otherwise>
														`<iaixsl:value-of disable-output-escaping="yes" select="@name"/>`
													</iaixsl:otherwise>
												</iaixsl:choose>,
												payment_system_logo: `<iaixsl:value-of disable-output-escaping="yes" select="@payment_system_logo"/>`,
												icon: `<iaixsl:choose><iaixsl:when test="@icon_svg != ''"><iaixsl:value-of select="@icon_svg"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@icon"/></iaixsl:otherwise></iaixsl:choose>`,
												description: <iaixsl:choose>
													<iaixsl:when test="@description and not(@description = ' ')">`<iaixsl:value-of disable-output-escaping="yes" select="@description"/>`</iaixsl:when>
													<iaixsl:otherwise>false</iaixsl:otherwise>
												</iaixsl:choose>,
											},
										</iaixsl:for-each>
									</iaixsl:if>
								],
								},
							</iaixsl:if>
						</iaixsl:for-each>
					},
				}
			</script>
			<div id="prepaid_app" class="prepaid_payitems_wrapper"/>
		</div>
	</iaixsl:if>

	<script>
	  var logoDesc = `<iaixsl:value-of disable-output-escaping="yes" select="/shop/mask/top/link/description"/>`;
		var orderID = &apos;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/details/@id"/>&apos;;
		var orderKey = &apos;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/payback/@key"/>&apos;;
		var orderFirstPay = &apos;&apos;;
		<iaixsl:if test="not(/shop/page/prepaid/details/@checkout_type = 'idosell') and /shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and page/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid/order/@payment_remain &gt; 0">
			orderFirstPay = &apos;<iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/prepaid_history/item[position()=last()]/@pay_link"/><iaixsl:text disable-output-escaping="yes">&amp;ajax=true</iaixsl:text>&apos;;
		</iaixsl:if>
	</script>
  
	  <div id="orderdetails_payments_static" style="display:none">
	  
		<iaixsl:for-each select="/shop/page/payments_static/*">
			<div data-altid="orderdetails_payments_payment_card">
				<iaixsl:attribute name="class">embeded_card_form_<iaixsl:value-of select="@id"/></iaixsl:attribute>
				<div class="payment_card_sub">
					<div class="payment_card_info_new" data-altid="payment_card_info_new">
						iai_i18n:[SmVzdGXFmyB3IGJlenBpZWN6bnltIHBvxYLEhWN6ZW5pdSBTU0wsIGt0w7NyZSB1bmllbW/FvGxpd2lhIHBvZGdsxIVkIHdwaXN5d2FueWNoIGRhbnljaCBwcnpleiBvc29ieSBuaWVwb3dvxYJhbmUuIERva29udWrEhWMgcMWCYXRub8WbY2kgbW/FvGVzeiB6ZGVjeWRvd2HEhyBjenkgY2hjZXN6LCBhYnkgZGFuZSBrYXJ0eSB6b3N0YcWCeSB6YXBpc2FuZSB3IG5hc3p5bSBzeXN0ZW1pZS4gV3lyYcW8YWrEhWMgemdvZMSZIG5pZSBixJlkemllc3ogbXVzaWHFgiBwb2Rhd2HEhyBkYW55Y2ggcG9ub3duaWUgdyBwcnp5c3rFgm/Fm2Np].
					</div>

					<iaixsl:if test="payform/headermessage or payform/headerlogo">
						<div class="payment_head_info" style="display: none;">
							<iaixsl:if test="payform/headermessage">
								<div class="payment_headermessage">
									<iaixsl:value-of disable-output-escaping="yes" select="payform/headermessage"/>
								</div>
							</iaixsl:if>
							<iaixsl:if test="payform/headerlogo">
								<div class="payment_headerlogo">
									<img>
										<iaixsl:attribute name="src"><iaixsl:value-of select="payform/headerlogo"/></iaixsl:attribute>
									</img>
								</div>
							</iaixsl:if>
						</div>
					</iaixsl:if>

					<form class="payment_card clearfix">
						<iaixsl:attribute name="action"><iaixsl:value-of select="payform/@action"/></iaixsl:attribute>
						<iaixsl:attribute name="method"><iaixsl:value-of select="payform/@method"/></iaixsl:attribute>
						<iaixsl:for-each select="payform/item">
							<iaixsl:choose>
								<iaixsl:when test="@name = 'creditCard[system]'">
									<div class="payment_card_formel cc_wrapper">
										<label for="credit_card_system" class="card_type_label">iai_i18n:[Um9kemFqZSBvYnPFgnVnaXdhbnljaCBrYXJ0]:</label>
										<div class="clear_data" data-altid="credit_card_system">
											<iaixsl:for-each select="option">
												<label class="card-icon">
													<iaixsl:attribute name="id">card_icon_<iaixsl:value-of select="@value"/></iaixsl:attribute>
													<input type="radio" class="validate required" data-serialize="#dialog_wrapper #credit_card_system input">
														<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
														<iaixsl:attribute name="name"><iaixsl:value-of select="../@name"/></iaixsl:attribute>
														<iaixsl:if test="@name != ''">
															<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
														</iaixsl:if>
														<iaixsl:if test="@altName != ''">
															<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
														</iaixsl:if>
													</input>
													<div>
														<img>
															<iaixsl:attribute name="src"><iaixsl:value-of select="@data-img"/></iaixsl:attribute>
															<iaixsl:attribute name="alt"><iaixsl:value-of select="@label"/></iaixsl:attribute>
														</img>
														<span><iaixsl:value-of select="@label"/></span>
													</div>
												</label>
											</iaixsl:for-each>
										</div>
										
									</div>
								</iaixsl:when>
								<iaixsl:when test="@name = 'creditCard[number]'">
									<div class="form-group row clearfix">
										<div class="col-12">
											<label for="credit_card_number" class="control-label">iai_i18n:[TnVtZXIga2FydHk=]:</label>
										</div>
										<div class="has-feedback col-12 has-required">
											<input type="text" data-altid="credit_card_number" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_number">
												<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
												<iaixsl:if test="@value != ''">
													<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
												</iaixsl:if>
												<iaixsl:if test="@name != ''">
													<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
												</iaixsl:if>
												<iaixsl:if test="@altName != ''">
													<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
												</iaixsl:if>
											</input>
											<span class="form-control-feedback"/>
										</div>
										
									</div>
								</iaixsl:when>
								<iaixsl:when test="@name = 'creditCard[endDateMonth]'">
									<iaixsl:text disable-output-escaping="yes">&lt;div  class=&quot;row&quot; &gt;</iaixsl:text>
									<div class="form-group date_select col-7 col-sm-8">
										<div class="row clearfix">
											<div class="col-12">
												<label for="credit_card_month" class="control-label">iai_i18n:[RGF0YSB3YcW8bm/Fm2Np]: </label>
											</div>
											<div class="col-12">
												<input type="text" data-altid="credit_card_month" class="form-control" data-serialize="#dialog_wrapper #credit_card_month, #dialog_wrapper #credit_card_year">
													<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
													<iaixsl:if test="@value != ''">
														<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
													</iaixsl:if>
													<iaixsl:if test="@name != ''">
														<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
													</iaixsl:if>
													<iaixsl:if test="@altName != ''">
														<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
													</iaixsl:if>
												</input>

												<iaixsl:if test="../item[@name = 'creditCard[endDateYear]']/@name">
													<span class="payment_card_expire"> / </span>
													<input type="text" data-altid="credit_card_year" class="form-control" data-serialize="#dialog_wrapper #credit_card_month, #dialog_wrapper #credit_card_year">
														<iaixsl:attribute name="name"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@name"/></iaixsl:attribute>
														<iaixsl:attribute name="value"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@value"/></iaixsl:attribute>
														<iaixsl:if test="@name != ''">
															<iaixsl:attribute name="data-name"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@name"/></iaixsl:attribute>
														</iaixsl:if>
														<iaixsl:if test="../item[@name = 'creditCard[endDateYear]']/@altName != ''">
															<iaixsl:attribute name="data-altName"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@altName"/></iaixsl:attribute>
														</iaixsl:if>
													</input>
												</iaixsl:if>
											</div>
										</div>
										
									</div>
								</iaixsl:when>
								<iaixsl:when test="@name = 'creditCard[securityCode]'">
									<div class="form-group security_code col-5 col-sm-4">
										<div class="row clearfix">
											<div class="col-12">
												<label for="credit_card_code" class="control-label">CVV2/CVC2:</label>
											</div>
											<div class="has-feedback col-12 has-required">
												<input type="text" data-altid="credit_card_code" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_code">
													<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
													<iaixsl:if test="@value != ''">
														<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
													</iaixsl:if>
													<iaixsl:if test="@name != ''">
														<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
													</iaixsl:if>
													<iaixsl:if test="@altName != ''">
														<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
													</iaixsl:if>
												</input>
												<span class="form-control-feedback"/>
											</div>
										</div>
									</div>
									<iaixsl:text disable-output-escaping="yes">&lt;/div&gt;</iaixsl:text>
								</iaixsl:when>
								<iaixsl:when test="@name = 'creditCard[name]'">
									<div class="form-group row clearfix">
										<div class="col-12">
											<label for="credit_card_name" class="control-label">iai_i18n:[SW1pxJkgaSBuYXp3aXNrbw==]:</label>
										</div>
										<div class="has-feedback col-12 has-required">
											<input type="text" data-altid="credit_card_name" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_name">
												<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
												<iaixsl:if test="@value != ''">
													<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
												</iaixsl:if>
												<iaixsl:if test="@name != ''">
													<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
												</iaixsl:if>
												<iaixsl:if test="@altName != ''">
													<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
												</iaixsl:if>
											</input>
											<span class="form-control-feedback"/>
										</div>
									</div>
								</iaixsl:when>
								<iaixsl:when test="@name = 'payment'">
									<input data-altid="credit_card_payment" type="hidden">
										<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										<iaixsl:if test="@value != ''">
											<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="@name != ''">
											<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="@altName != ''">
											<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
										</iaixsl:if>
									</input>
								</iaixsl:when>
								<iaixsl:when test="@name = 'payformid'">
									<input data-altid="credit_card_payformid" type="hidden">
										<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										<iaixsl:if test="@value != ''">
											<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="@name != ''">
											<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="@altName != ''">
											<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
										</iaixsl:if>
									</input>
								</iaixsl:when>
								<iaixsl:when test="@type = 'hidden'">
									<input type="hidden">
										<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										<iaixsl:if test="@value != ''">
											<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
										</iaixsl:if>
									</input>
								</iaixsl:when>
							</iaixsl:choose>
						</iaixsl:for-each>
						<div class="clear_data cc_wrapper" data-altid="credit_card_agree">
						</div>
						<div class="credit_card_submit" data-altid="credit_card_submit">
							<button class="credit_card_submit_no_store btn --medium --outline" type="submit">
								<iaixsl:attribute name="title">iai_i18n:[WmFwxYJhxIcgYmV6IHphcGlzeXdhbmlhIGthcnR5]</iaixsl:attribute>
								iai_i18n:[WmFwxYJhxIcgYmV6IHphcGlzeXdhbmlhIGthcnR5]
							</button>
							<button class="credit_card_submit_store btn --medium --solid" type="submit">
								<iaixsl:attribute name="title">iai_i18n:[WmFwxYJhxIcgaSB6YXBpc3oga2FydMSZ]</iaixsl:attribute>
								iai_i18n:[WmFwxYJhxIcgaSB6YXBpc3oga2FydMSZ]
							</button>
						</div>
						<div class="clear_data cc_wrapper" data-altid="credit_card_buttons">
						</div>
						<div class="row">
							<div class="credit_card_pci_dss col-12">
								<span class="pci_dss_label">Payment Card Industry Data Security Standard</span>
								<span class="pci_dss_icon_container">
									<img src="/gfx/standards/pci_css_logo.png?r=1765442497" alt="PCI DSS Compilant"/>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</iaixsl:for-each>
	</div>
  
	<iaixsl:if test="/shop/page/prepaid_methods/item[@id = '190']">
		<div id="giftcard_data" class="giftcard_form_wrapp" style="display: none;">
			<form class="giftcard_form" id="giftcard_form">
				<iaixsl:attribute name="data-action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
				<iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
					<iaixsl:attribute name="data-action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
				</iaixsl:if>
				<iaixsl:attribute name="action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
				<iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
					<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
				</iaixsl:if>
				<input name="payform_id" type="checkbox" checked="checked" class="orderdetails_radio" value="190" id="payform_190"/>
				
				<p>iai_i18n:[WmFwxYJhxIcgemEgemFrdXB5IHN3b2rEhSBrYXJ0xIUgcG9kYXJ1bmtvd8SF]</p>
				
				<div class="giftcard_inputs">
					<div class="f-group">
						<div class="f-feedback">
							<input class="f-control" value="" name="voucher_id" type="text" id="giftcard_id_input"/>
							<label class="f-label" for="giftcard_id_input">iai_i18n:[UG9kYWogbnVtZXIga2FydHk=]</label>
							<span class="f-control-feedback"/>
						</div>
					</div>
					<div class="f-group">
						<div class="f-feedback">
							<input class="f-control" value="" name="pin_value" type="password" id="pin_value_input"/>
							<label class="f-label" for="pin_value_input">iai_i18n:[UG9kYWogUElOIGthcnR5]</label>
							<span class="f-control-feedback"/>
						</div>
					</div>
				</div>
				<button class="btn --medium --solid">iai_i18n:[WmF0d2llcmTFuiBrYXJ0xJk=]</button>
			</form>
		</div>
	</iaixsl:if>

	<iaixsl:if test="/shop/page/prepaid_methods/item[@id = '2']">
		<div id="voucher_data" class="voucher_form_wrapp" style="display: none;">
			<form class="giftcard_form" id="voucher_form">
				<iaixsl:attribute name="data-action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
				<iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
					<iaixsl:attribute name="data-action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
				</iaixsl:if>
				<iaixsl:attribute name="action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
				<iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
					<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
				</iaixsl:if>
				<input name="payform_id" type="checkbox" checked="checked" class="orderdetails_radio" value="2" id="payform_2"/>
				
				<p>iai_i18n:[WmFwxYJhxIcgemEgemFrdXB5IGJvbmVtIHRvd2Fyb3d5bQ==]</p>
				
				<div class="giftcard_inputs">
					<div class="f-group">
						<div class="f-feedback">
							<input class="f-control" value="" name="voucher_id" type="text" minlength="10" id="voucher_id_input"/>
							<label class="f-label" for="voucher_id_input">iai_i18n:[UG9kYWogbnVtZXIgYm9udQ==]</label>
							<span class="f-control-feedback"/>
						</div>
					</div>
				</div>
				<button class="btn --medium --solid">iai_i18n:[WmF0d2llcmTFuiBib24=]</button>

				<small>iai_i18n:[SmXFvGVsaSBwb3NpYWRhc3ogd2nEmWNlaiBib27Ds3csIG1vxbxlc3ogd3Bpc2HEhyBpY2ggbnVtZXJ5IHBvIHphdHdpZXJkemVuaXUgb2JlY25lZ28gYm9udQ==].</small>
			</form>
		</div>
	</iaixsl:if>

  <template id="prepaid_clause_item_template">
    <div class="prepaid_clauses__item"/>
  </template>

  <template id="prepaid_terms_item_template">
		<div class="summary__term">
			<label class="summary__term_label">
				<span>
					<input type="checkbox" name="summary_term" value="yes" class="css-checkbox" required="required"/>
					<i class="css-label --small"/>
				</span>
				<span class="summary__term__value"/>
			</label>
		</div>
  </template>

  
	<iaixsl:if test="/shop/page/prepaid/details/@checkout_type = 'idosell'">
		<template id="expchck_retry_modal">
			<h3 class="expchck__title">iai_i18n:[WmFtw7N3aWVuaWUgbnI=]<iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/prepaid/details/@orderid"/></h3>

			<div class="expchck__wrapper">
				<div class="expchck_warning__wrapper">
					<iaixsl:if test="page/prepaid/details/@paymentstatus != 'g' and /shop/page/prepaid_methods/item and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true')">
						<iaixsl:if test="page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id != 153">
							<strong class="expchck_warning__title">iai_i18n:[V3lzdMSFcGnFgiBixYLEhWQgdyBwxYJhdG5vxZtjaS4gU3Byw7NidWogamVzemN6ZSByYXou]</strong>

							<span class="expchck_warning__details">iai_i18n:[SmXFvGVsaSB6IGpha2llZ29rb2x3aWVrIHBvd29kdSBwcm9jZXMgcMWCYWNlbmlhIG5pZSB6b3N0YcWCIHVrb8WEY3pvbnksIGRva29uYWogd3DFgmF0eSBwb25vd25pZSBsdWIgd3liaWVyeiBpbm55IHNwb3PDs2IgemFwxYJhdHk=].</span>
						</iaixsl:if>
					</iaixsl:if>
				</div>

				<div class="expchck_payments">
					<div class="expchck_payments__clause_top"/>
					<div class="expchck_payments__wrapper"/>
				</div>

				<div class="expchck_summary">
					<div class="expchck_summary__outer_wrapper">
						<div class="expchck_summary__wrapper">
						<div class="expchck_summary__item --costs expchck_costs">
							
							<iaixsl:if test="(/shop/page/prepaid/order/@product_cost &gt; 0) and /shop/page/prepaid/order/@product_cost_formatted">
								<div class="expchck_costs__item --worth">
									<span class="expchck_costs__label">iai_i18n:[V2FydG/Fm8SHIHphbcOzd2llbmlh]:</span>
									<strong class="expchck_costs__value"><iaixsl:value-of select="/shop/page/prepaid/order/@product_cost_formatted"/></strong>
								</div>
							</iaixsl:if>
							
							<iaixsl:if test="(/shop/page/prepaid/order/@shipping_cost &gt; 0) and /shop/page/prepaid/order/@shipping_cost_formatted">
								<div class="expchck_costs__item --shipping">
									<span class="expchck_costs__label">iai_i18n:[S29zenQgcHJ6ZXN5xYJraQ==]:</span>
									<strong class="expchck_costs__value --plus"><iaixsl:value-of select="/shop/page/prepaid/order/@shipping_cost_formatted"/></strong>
								</div>
							</iaixsl:if>
						</div>

						
						<iaixsl:if test="/shop/page/prepaid/order/@payment_remain &gt; 0">
							<div class="expchck_summary__item --total expchck_total">
								<div class="expchck_total__wrapper">
									<span class="expchck_total__title --small">iai_i18n:[RG8gemFwxYJhdHk=]</span>
									<span class="expchck_total__value">
										<iaixsl:choose>
											<iaixsl:when test="/shop/page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id='203'">
												<iaixsl:choose><iaixsl:when test="/shop/page/prepaid/details/@advance_formatted"><iaixsl:value-of select="/shop/page/prepaid/details/@advance_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="/shop/page/prepaid/order/@payment_remain_formatted"/></iaixsl:otherwise></iaixsl:choose>
											</iaixsl:when>
											<iaixsl:otherwise><iaixsl:choose>
												<iaixsl:when test="(/shop/page/prepaid/details/@advance = /shop/page/prepaid/order/@payment_paid) and (/shop/page/prepaid/prepaid_history/item[position() = last()]/amount/client_currency/@value_formatted)"><iaixsl:value-of select="page/prepaid/prepaid_history/item[position() = last()]/amount/client_currency/@value_formatted"/></iaixsl:when>
												<iaixsl:when test="/shop/page/prepaid/details/@advance_formatted"><iaixsl:value-of select="/shop/page/prepaid/details/@advance_formatted"/></iaixsl:when>
												<iaixsl:otherwise><iaixsl:value-of select="/shop/page/prepaid/order/@payment_remain_formatted"/></iaixsl:otherwise>
											</iaixsl:choose></iaixsl:otherwise>
										</iaixsl:choose>
									</span>
								</div>
							</div>
						</iaixsl:if>

						
						<div class="expchck_summary__item --clauses expchck_clauses"/>

						<div class="expchck_summary__item --terms expchck_terms"/>

						<div class="expchck_summary__item --submit expchck_submit">
							<iaixsl:if test="page/prepaid/details/@paymentstatus != 'g' and /shop/page/prepaid_methods/item and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true')">
								<div class="expchck_submit__wrapper">
									<span class="expchck_submit__verify">iai_i18n:[U3ByYXdkxbogd3N6eXN0a2llIGRhbmUgaSB6xYLDs8W8IHphbcOzd2llbmll]</span>
									<button type="submit" class="expchck_submit__button btn --solid --large">
										<iaixsl:attribute name="data-payform_id"><iaixsl:value-of select="page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id"/></iaixsl:attribute>
										<iaixsl:attribute name="data-retry_payment"><iaixsl:value-of select="page/prepaid/prepaid_history/@retry_payment"/></iaixsl:attribute>
										<iaixsl:attribute name="data-pay_link"><iaixsl:value-of select="page/prepaid/prepaid_history/item[position()=last()]/@pay_link"/></iaixsl:attribute>

										iai_i18n:[WmFwxYJhxIc=] (iai_i18n:[c3Byw7NidWogcG9ub3duaWU=])
									</button>
								</div>
							</iaixsl:if>
						</div>
					</div>
					</div>
				</div>
			</div>
		</template>

		<template id="expchck_payments_item">
			<div class="expchck_payments__item f-group --radio">
				<input type="hidden" name="first_payment_id" disabled="disabled" tabindex="-1"/>
				<input type="hidden" name="payform_id" disabled="disabled" tabindex="-1"/>
				<input type="radio" name="selected_group_only" class="expchck_payments__input f-control" tabindex="-1"/>
				<label class="expchck_payments__label">
					<span class="expchck_payments__icons">
						<img class="expchck_payments__icon"/>
					</span>
					<span class="expchck_payments__names">
						<strong class="expchck_payments__name"/>
						<span class="expchck_payments__description"/>
					</span>
					<span class="expchck_payments__arrow">
						<i class="icon-options-status"/>
					</span>
				</label>
				<a href="#selectPayment" class="sr-only expchck_payments__select_payment">iai_i18n:[V3liaWVyeiB0xJkgbWV0b2TEmSBwxYJhdG5vxZtjaQ==]</a>
				<div class="expchck_payments__details" aria-hidden="true"/>
			</div>
		</template>

		<template id="expchck_payments_details">
			<span class="expchck_payments__clause"/>
			<div class="expchck_payments__options"/>
			<a href="#showAllPaymentMethods" class="expchck_payments__show_all" tabindex="-1">
				iai_i18n:[UG9rYcW8IHdzenlzdGtpZQ==]
			</a>
		</template>

		<template id="expchck_payments_option">
			<div class="expchck_payments__option">
				<input type="radio" name="payform_id" class="expchck_payments__option_input f-control" disabled="disabled" tabindex="-1"/>
				<label class="expchck_payments__option_select">
					<span class="expchck_payments__option_icons">
						<img class="expchck_payments__option_icon"/>
					</span>
					<span class="expchck_payments__option_name"/>
				</label>
				<a href="#selectPayment" class="sr-only expchck_payments__select_payment" tabindex="-1">iai_i18n:[V3liaWVyeiB0xJkgbWV0b2TEmSBwxYJhdG5vxZtjaQ==]</a>
			</div>
		</template>
	</iaixsl:if>
  

	
	<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();"/>

	
	<iaixsl:if test="/shop/page/prepaid_methods/item/@method_as_group"> </iaixsl:if>
	<iaixsl:if test="/shop/page/prepaid_methods/@extended_js"> </iaixsl:if>
	<iaixsl:if test="/shop/page/prepaid_methods/@internal_blik"> </iaixsl:if>
	<iaixsl:if test="/shop/page/prepaid/onside_terms/@active='y'"> </iaixsl:if>
	<iaixsl:if test="/shop/page/prepaid/editlink/@active='y'"> </iaixsl:if>
	<iaixsl:if test="page/prepaid/details/@paymentstatus"> </iaixsl:if>
	<iaixsl:if test="/shop/page/payments_static/embeded_card_form"> </iaixsl:if>
<!-- (prepaid_order_products, 614c5cf2104962.67108738.12)-->
	<iaixsl:if test="page/ordered_products/product">
		<iaixsl:variable name="visibleProductsInGroupPrepaid">2</iaixsl:variable>

		
		<iaixsl:variable name="setIconLarge"/>
		<iaixsl:variable name="nettoPricePrepaid"><iaixsl:if test="/shop/page/@price_type = 'net'">true</iaixsl:if></iaixsl:variable>
		<iaixsl:variable name="grossPricePrepaid"> iai_i18n:[YnJ1dHRv]</iaixsl:variable>

		<div id="prepaid_order_products" class="ordered_products">
			<iaixsl:if test="page/ordered_products/product[@basket_group_id]">
				<iaixsl:attribute name="data-groups">true</iaixsl:attribute>
			</iaixsl:if>
			<h2 class="orderdetails_label"><span>iai_i18n:[WmFtw7N3aW9uZSBwcm9kdWt0eQ==]</span></h2>
			<iaixsl:for-each select="page/ordered_products/product">
				<div class="ordered_product">
					<iaixsl:variable name="groupId"><iaixsl:value-of select="@basket_group_id"/></iaixsl:variable>
					<iaixsl:variable name="subscriptionGroup"><iaixsl:value-of select="/shop/page/ordered_products/groups/group[@id = $groupId]/types/type[@value = 'subscription']/@value != ''"/></iaixsl:variable>
					<iaixsl:if test="@basket_group_id">
						<iaixsl:attribute name="data-group"><iaixsl:for-each select="/shop/page/ordered_products/groups/group[@id = $groupId]/types/type"><iaixsl:value-of select="@value"/><iaixsl:if test="position() != last()">;</iaixsl:if></iaixsl:for-each></iaixsl:attribute>
						<iaixsl:attribute name="style">--group:<iaixsl:value-of select="$groupId"/>;</iaixsl:attribute>
						<iaixsl:attribute name="data-group-id"><iaixsl:value-of select="$groupId"/></iaixsl:attribute>
						<iaixsl:if test="not($groupId = preceding-sibling::product/@basket_group_id)">
							<iaixsl:attribute name="data-first-in-group">true</iaixsl:attribute>
							<iaixsl:if test="$subscriptionGroup = 'true'">
								<iaixsl:attribute name="data-label-group">iai_i18n:[U3Vic2tyeXBjamE=]</iaixsl:attribute>
							</iaixsl:if>
						</iaixsl:if>
						<iaixsl:if test="not($groupId = following-sibling::product/@basket_group_id)">
							<iaixsl:attribute name="data-last-in-group">true</iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:if test="count(preceding-sibling::product[@basket_group_id = $groupId]) &gt;= $visibleProductsInGroupPrepaid">
							<iaixsl:attribute name="data-hide">true</iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:if test="count(preceding-sibling::product[@basket_group_id = $groupId]) = $visibleProductsInGroupPrepaid - 1 and $groupId = following-sibling::product/@basket_group_id">
							<iaixsl:attribute name="data-last-visible">true</iaixsl:attribute>
						</iaixsl:if>
					</iaixsl:if>

					<iaixsl:if test="count(preceding-sibling::product[@basket_group_id = $groupId]) = $visibleProductsInGroupPrepaid - 1 and $groupId = following-sibling::product/@basket_group_id">
						<a href="#showAllInGroup" class="ordered_product__visible_in_group --show">+<iaixsl:value-of select="count(following-sibling::product[@basket_group_id = $groupId])"/> iai_i18n:[cHJvZHVrdHkgdyBzdWJza3J5cGNqaQ==]</a>
						<iaixsl:if test="$subscriptionGroup = 'true'">
							<div class="ordered_product__link --show">
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/ordered_products/groups/group[@id = $groupId]/details/subscription/@url"/></iaixsl:attribute>
									iai_i18n:[VXN0YXdpZW5pYSBzdWJza3J5cGNqaQ==]
								</a>
							</div>
							<div class="ordered_product__subscription_info --show">
								<iaixsl:variable name="subscriptionTotalValue"><iaixsl:value-of select="/shop/page/ordered_products/groups/group[@id = $groupId]/details/prices/@price_total_formatted"/></iaixsl:variable>
								<iaixsl:variable name="subscriptionTotalText">iai_i18n:[QsSZZHppZW15IG9iY2nEhcW8YcSHIHR3b2rEhSBrYXJ0xJkgcMWCYXRuaWN6xIUgb3DFgmF0xIUgemEgc3Vic2tyeXBjasSZIHcgd3lzb2tvxZtjaTogJXMgemdvZG5pZSB6IHd5YnJhbnltIGN5a2xlbSB3eXN5xYJraSBhxbwgZG8gemFrb8WEY3plbmlhIHN1YnNrcnlwY2pp].</iaixsl:variable>
								<iaixsl:value-of select="php:function('sprintf', $subscriptionTotalText, $subscriptionTotalValue)"/>
							</div>
						</iaixsl:if>
					</iaixsl:if>

					<iaixsl:if test="count(preceding-sibling::product[@basket_group_id = $groupId]) &gt;= $visibleProductsInGroupPrepaid and not($groupId = following-sibling::product/@basket_group_id)">
						<a href="#hideAllInGroup" class="ordered_product__visible_in_group --hide">iai_i18n:[VWtyeWo=]</a>
					</iaixsl:if>

					<iaixsl:if test="$subscriptionGroup = 'true' and not($groupId = following-sibling::product/@basket_group_id)">
						<div class="ordered_product__link">
							<a>
								<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/ordered_products/groups/group[@id = $groupId]/details/subscription/@url"/></iaixsl:attribute>
								iai_i18n:[VXN0YXdpZW5pYSBzdWJza3J5cGNqaQ==]
							</a>
						</div>
						<div class="ordered_product__subscription_info">
							<iaixsl:variable name="subscriptionTotalValue"><iaixsl:value-of select="/shop/page/ordered_products/groups/group[@id = $groupId]/details/prices/@price_total_formatted"/></iaixsl:variable>
							<iaixsl:variable name="subscriptionTotalText">iai_i18n:[QsSZZHppZW15IG9iY2nEhcW8YcSHIHR3b2rEhSBrYXJ0xJkgcMWCYXRuaWN6xIUgb3DFgmF0xIUgemEgc3Vic2tyeXBjasSZIHcgd3lzb2tvxZtjaTogJXMgemdvZG5pZSB6IHd5YnJhbnltIGN5a2xlbSB3eXN5xYJraSBhxbwgZG8gemFrb8WEY3plbmlhIHN1YnNrcnlwY2pp].</iaixsl:variable>
							<iaixsl:value-of select="php:function('sprintf', $subscriptionTotalText, $subscriptionTotalValue)"/>
						</div>
					</iaixsl:if>

					<div class="ordered_product__icon">
						<iaixsl:choose>
							<iaixsl:when test="@link">
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
									<iaixsl:choose>
										<iaixsl:when test="$setIconLarge">
                      <iaixsl:choose>
                        <iaixsl:when test="icon_second and not(icon_second = '' or icon_second = '/')">
                          <picture>
                            <source type="image/webp">
                              <iaixsl:attribute name="srcset"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                            </source>
                            <img>
                              <iaixsl:attribute name="src"><iaixsl:value-of select="icon_second"/></iaixsl:attribute>
                              <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                            </img>
                          </picture>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                          <img>
                            <iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                          </img>
                        </iaixsl:otherwise>
                      </iaixsl:choose>
										</iaixsl:when>
										<iaixsl:otherwise>
                      <iaixsl:choose>
                        <iaixsl:when test="icon_small_second and not(icon_small_second = '' or icon_small_second = '/')">
                          <picture>
                            <source type="image/webp">
                              <iaixsl:attribute name="srcset"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                            </source>
                            <img>
                              <iaixsl:attribute name="src"><iaixsl:value-of select="icon_small_second"/></iaixsl:attribute>
                              <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                            </img>
                          </picture>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                          <img>
                            <iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                          </img>
                        </iaixsl:otherwise>
                      </iaixsl:choose>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</a>
							</iaixsl:when>
							<iaixsl:otherwise>
								<iaixsl:choose>
									<iaixsl:when test="$setIconLarge">
										<iaixsl:choose>
                      <iaixsl:when test="icon_second and not(icon_second = '' or icon_second = '/')">
                        <picture>
                          <source type="image/webp">
                            <iaixsl:attribute name="srcset"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                          </source>
                          <img>
                            <iaixsl:attribute name="src"><iaixsl:value-of select="icon_second"/></iaixsl:attribute>
                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                          </img>
                        </picture>
                      </iaixsl:when>
                      <iaixsl:otherwise>
                        <img>
                          <iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                          <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                        </img>
                      </iaixsl:otherwise>
                    </iaixsl:choose>
									</iaixsl:when>
									<iaixsl:otherwise>
                    <iaixsl:choose>
                      <iaixsl:when test="icon_small_second and not(icon_small_second = '' or icon_small_second = '/')">
                        <picture>
                          <source type="image/webp">
                            <iaixsl:attribute name="srcset"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                          </source>
                          <img>
                            <iaixsl:attribute name="src"><iaixsl:value-of select="icon_small_second"/></iaixsl:attribute>
                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                          </img>
                        </picture>
                      </iaixsl:when>
                      <iaixsl:otherwise>
                        <img>
                          <iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                          <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                        </img>
                      </iaixsl:otherwise>
                    </iaixsl:choose>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</div>
					<div class="ordered_product__content">
						<div class="ordered_product__name">
							<iaixsl:choose>
								<iaixsl:when test="@link">
									<a class="ordered_product__name --link">
										<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
										<iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										<iaixsl:choose>
											<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'now'">
												<iaixsl:attribute name="class">ordered_product__name --link --now</iaixsl:attribute>
											</iaixsl:when>
											<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
												<iaixsl:attribute name="class">ordered_product__name --link --later showTip</iaixsl:attribute>
											</iaixsl:when>
										</iaixsl:choose>
										
                    <iaixsl:value-of select="@name"/><iaixsl:choose><iaixsl:when test="@quantity &gt; '1'">, <iaixsl:value-of select="@quantity"/><iaixsl:text> </iaixsl:text><iaixsl:choose><iaixsl:when test="@price_unit"><iaixsl:value-of select="@price_unit"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@unit"/></iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise>, <iaixsl:value-of select="@quantity"/><iaixsl:text> </iaixsl:text><iaixsl:choose><iaixsl:when test="@price_unit"><iaixsl:value-of select="@price_unit"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@unit"/></iaixsl:otherwise></iaixsl:choose></iaixsl:otherwise></iaixsl:choose>
										<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes'">
											<iaixsl:choose>
												<iaixsl:when test="@division='later'">
													<i class="icon-clock"/>
												</iaixsl:when>
												<iaixsl:when test="@division='now'">
													<i class="icon-truck"/>
												</iaixsl:when>
											</iaixsl:choose>
										</iaixsl:if>
									</a>
								</iaixsl:when>
								<iaixsl:otherwise>
									<span class="ordered_product__name">
										<iaixsl:choose>
											<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'now'">
												<iaixsl:attribute name="class">ordered_product__name --now</iaixsl:attribute>
											</iaixsl:when>
											<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
												<iaixsl:attribute name="class">ordered_product__name --later showTip</iaixsl:attribute>
											</iaixsl:when>
										</iaixsl:choose>
										<iaixsl:value-of select="@name"/><iaixsl:choose><iaixsl:when test="@quantity &gt; '1'">, <iaixsl:value-of select="@quantity"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@price_unit"/></iaixsl:when><iaixsl:otherwise>, <iaixsl:value-of select="@quantity"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@price_unit"/></iaixsl:otherwise></iaixsl:choose>
										<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes'">
											<iaixsl:choose>
												<iaixsl:when test="@division='later'">
													<i class="icon-clock"/>
												</iaixsl:when>
												<iaixsl:when test="@division='now'">
													<i class="icon-truck"/>
												</iaixsl:when>
											</iaixsl:choose>
										</iaixsl:if>
									</span>
								</iaixsl:otherwise>
							</iaixsl:choose>
							<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
								<div class="tooltipContent">
									<iaixsl:attribute name="data-weeks"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_amount"/></iaixsl:attribute>
									<iaixsl:attribute name="data-days"><iaixsl:value-of select="/shop/basket/shipping_division_time/@days"/></iaixsl:attribute>
									<iaixsl:attribute name="data-week_day"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_day"/></iaixsl:attribute>
									<iaixsl:attribute name="data-today"><iaixsl:value-of select="/shop/basket/shipping_division_time/@today"/></iaixsl:attribute>
									iai_i18n:[UHJvZHVrdHkgeiBkxYJ1xbxzenltIGN6YXNlbSBvY3pla2l3YW5pYSAtIGdvdG93ZSBkbyB3eXPFgmFuaWE=] <span class="prepaid__division_literal">iai_i18n:[emE=] </span>
									<strong/>
								</div>
							</iaixsl:if>
						</div>

						<div class="ordered_product__traits">
							
							<iaixsl:if test="@code and not(@code = '')">
								<div class="ordered_product_trait --barcode">
									<span class="param__label">
										Symbol:
									</span>
									<span class="param__value">
										<iaixsl:value-of select="@code"/>
									</span>
								</div>
							</iaixsl:if>
							
							<iaixsl:if test="not(size/@type='uniw')">
								<div class="ordered_product_trait --size">
									<span class="param__label">
										iai_i18n:[Um96bWlhcg==]:
									</span>
									<span class="param__value">
										<iaixsl:value-of select="@size_desc"/>
									</span>
								</div>
							</iaixsl:if>
							
							<iaixsl:if test="(version) and (not(version/@product_name=''))">
								<div class="ordered_product_trait --version">
									<span class="param__label">
										<iaixsl:value-of select="version/@name"/>:
									</span>
									<span class="param__value">
										<iaixsl:value-of select="version/@product_name"/>
									</span>
								</div>
							</iaixsl:if>
						</div>

						
						<iaixsl:if test="priceformula/parameters">
							<div class="ordered_product__params --priceformula">
								<iaixsl:for-each select="priceformula/parameters/parameter">
									<div class="ordered_product__param">
										<label><b><iaixsl:value-of select="name"/>:</b></label>
										<span><iaixsl:value-of select="values/value"/></span>
									</div>
								</iaixsl:for-each>
							</div>
						</iaixsl:if>

						
						<iaixsl:if test="serial_number">
							<div class="ordered_product__params --serial_number">
								<div class="ordered_product__param">
									<label>
										<iaixsl:choose>
											<iaixsl:when test="count(serial_number/number) = 1">
												<b>iai_i18n:[TnVtZXIgc2VyeWpueQ==]:</b>
											</iaixsl:when>
											<iaixsl:otherwise>
												<b>iai_i18n:[TnVtZXJ5IHNlcnlqbnll]: </b>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</label>
									<span>
										<iaixsl:for-each select="serial_number/number">
											<iaixsl:value-of select="@value"/><iaixsl:if test="not(position()=last())">, </iaixsl:if>
										</iaixsl:for-each>
									</span>
								</div>
							</div>
						</iaixsl:if>

						
						<iaixsl:if test="@product_type = 'product_bundle'">
							<div class="ordered_product__params --bundle">
								<span class="ordered_product__params-name">iai_i18n:[U2vFgmFkb3dlIHplc3Rhd3U=]:</span>
								<iaixsl:for-each select="bundled/product">
									<div class="ordered_product__param">
										<label>
											<iaixsl:if test="@quantity &gt; 1">
												<iaixsl:value-of select="@quantity"/>x 
											</iaixsl:if>
											<iaixsl:value-of select="@name"/>
										</label>
										<span>
											<iaixsl:if test="not(@size = 'uniw') or ((version) and (not(version/@product_name='')))">
												(<iaixsl:if test="not(@size = 'uniw')">iai_i18n:[Um96bWlhcg==]: <b><iaixsl:value-of select="@size_desc"/></b></iaixsl:if>
												<iaixsl:if test="not(@size = 'uniw') and ((version) and (not(version/@product_name='')))">
													,
												</iaixsl:if>
												<iaixsl:if test="(version) and (not(version/@product_name=''))"><iaixsl:value-of select="version/@name"/>: <b><iaixsl:value-of select="version/@product_name"/></b></iaixsl:if>)
											</iaixsl:if>
										</span>
									</div>
								</iaixsl:for-each>
							</div>
						</iaixsl:if>

						
						<iaixsl:if test="order_files/file">
							<div class="ordered_product__params --files">
								<iaixsl:for-each select="order_files/file">
									<div class="ordered_product__param">
										<label>
											<iaixsl:value-of select="@file"/>
										</label>
										<span>
											<iaixsl:if test="@path">
												[<a>
												<iaixsl:attribute name="href"><iaixsl:value-of select="@path"/></iaixsl:attribute>
												<iaixsl:choose>
													<iaixsl:when test="@preview = 'true'">
														<iaixsl:attribute name="data-imagelightbox">f</iaixsl:attribute>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:attribute name="target">_blank</iaixsl:attribute>
													</iaixsl:otherwise>
												</iaixsl:choose>
												iai_i18n:[cG9kZ2zEhWQ=]</a> ]
											</iaixsl:if>
										</span>
									</div>
								</iaixsl:for-each>
							</div>
						</iaixsl:if>


						
						<iaixsl:if test="@product_type = 'product_virtual'">
							<div class="ordered_product__info --virtual">
								<span>iai_i18n:[UGxpa2kgZG8gcG9icmFuaWEgcG9qYXdpxIUgc2nEmSB3IGR6aWFsZQ==]</span>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientFiles/@url"/></iaixsl:attribute>
									&quot;iai_i18n:[TW9qZSBwbGlraQ==]&quot;
								</a>
								<span>iai_i18n:[dyBwYW5lbHUga2xpZW50YSBwbyBvcMWCYWNlbml1IGNhxYJlZ28gemFtw7N3aWVuaWE=].</span>
							</div>
						</iaixsl:if>

						
						<iaixsl:if test="comment">
							<div class="ordered_product__info --comment">
								<iaixsl:value-of select="comment"/>
							</div>
						</iaixsl:if>

					</div>
					<div class="ordered_product__price">
						
						<strong>
							<iaixsl:choose>
								<iaixsl:when test="@quantity != '1'">
									<iaixsl:choose>
										<iaixsl:when test="@forpoints='true'">
											<iaixsl:value-of select="@points_sum"/>
												iai_i18n:[cGt0].
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:choose>
												<iaixsl:when test="not($nettoPricePrepaid = '') and not($priceTypeVat = '')">
													<span class="ordered_product__price_net"><iaixsl:value-of select="@nettoworth_formatted"/><span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span></span>
													<span class="ordered_product__price_gross gross_price">(<iaixsl:value-of select="@bruttoworth_formatted"/><span class="price_vat"><iaixsl:value-of select="$grossPricePrepaid"/></span>)</span>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:value-of select="@bruttoworth_formatted"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:choose>
										<iaixsl:when test="@gratis='y'">
												iai_i18n:[R3JhdGlzIQ==]
										</iaixsl:when>
										<iaixsl:when test="@forpoints='true'">
											<iaixsl:value-of select="@points"/>
												iai_i18n:[cGt0].
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:choose>
												<iaixsl:when test="not($nettoPricePrepaid = '') and not($priceTypeVat = '')">
													<span class="ordered_product__price_net"><iaixsl:value-of select="@nettoworth_formatted"/><span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span></span>
													<span class="ordered_product__price_gross gross_price">(<iaixsl:value-of select="@bruttoworth_formatted"/><span class="price_vat"><iaixsl:value-of select="$grossPricePrepaid"/></span>)</span>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:value-of select="@bruttoworth_formatted"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</strong>

						
						<iaixsl:if test="$subscriptionGroup = 'true'">
							<span class="ordered_product__price_subscription"> / iai_i18n:[Y28=] <span class="ordered_product__price_subscription_period"><iaixsl:attribute name="data-change-literal-days"><iaixsl:value-of select="/shop/page/ordered_products/groups/group[@id = $groupId]/details/subscription/@days_in_period"/></iaixsl:attribute><iaixsl:value-of select="/shop/page/ordered_products/groups/group[@id = $groupId]/details/subscription/@days_in_period"/> iai_i18n:[ZG5p]</span></span>
						</iaixsl:if>
					</div>
				</div>
			</iaixsl:for-each>
		</div>
	</iaixsl:if>
<!-- (prepaid_payment_and_delivery_list, 61f913c6ba1db9.25159406.5)-->
		<iaixsl:variable name="idoPayList">1</iaixsl:variable>

		<div id="prepaid_delivery_list">
			<div class="prepaid_delivery_container mb-5">
				<h2 class="orderdetails_label">
					<span>iai_i18n:[Rm9ybWEgZG9zdGF3eQ==]</span>
				</h2>
				

				<div class="ordered_product">
					<div class="ordered_product__icon">
						<img src="/gfx/standards/shipping_icon.png?r=1765442497">
							<iaixsl:if test="page/shipping/delivery[@checked='true']/@icon"><iaixsl:attribute name="src"><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@icon"/></iaixsl:attribute></iaixsl:if>
							<iaixsl:attribute name="alt"><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@name"/></iaixsl:attribute>
						</img>
					</div>
					<div class="ordered_product__content">
						<div class="ordered_product__name">
							<div class="ordered__name">
								<strong><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@name"/></strong>
								<iaixsl:if test="page/prepaid/dispatch/@date_delivery">
								  <strong> - iai_i18n:[ZG9yxJljemVuaWU=] </strong>
								  <span class="prepaid_delivery__date"><iaixsl:value-of select="page/prepaid/dispatch/@date_delivery"/></span>
								  <iaixsl:if test="page/prepaid/dispatch/@delivery_range != ''">
									   iai_i18n:[dyBwcnplZHppYWxlIGdvZHppbg==] 
									  <iaixsl:value-of select="page/prepaid/dispatch/@delivery_range"/>
								  </iaixsl:if>
								</iaixsl:if>
							</div>
							<div class="ordered-price">
								<iaixsl:choose>
									<iaixsl:when test="page/shipping/@hide_cost='true'"/>
									<iaixsl:when test="page/shipping/delivery[@checked='true']/@points_cost &gt; 0">
										<span><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@points_cost"/> iai_i18n:[cGt0].</span>
									</iaixsl:when>
									<iaixsl:when test="page/shipping/delivery[@checked='true']/@cost &gt; 0">
										<span>
											<iaixsl:value-of select="page/shipping/delivery[@checked='true']/@currencycost_formatted"/>
											
										</span>
									</iaixsl:when>
									<iaixsl:when test="page/shipping/delivery[@checked='true']/@cost = 0">
										
									</iaixsl:when>
								</iaixsl:choose>
							</div>
							<iaixsl:if test="page/prepaid/details/@select_date_additional != '' or page/prepaid/details/@delivery = 'true' or page/prepaid/dispatch/@date_sent != '' or page/prepaid/details/@select_date != ''">
							<div class="ordered__additional mt-1">
								<ul>
									<iaixsl:if test="page/prepaid/details/@select_date_additional != ''">
										<li>
											<strong>iai_i18n:[VXdhZ2kgZG8gZGF0eSBkb3N0YXd5]: </strong>
											<iaixsl:value-of select="page/prepaid/details/@select_date_additional"/>
										</li>
									</iaixsl:if>
									<iaixsl:if test="page/prepaid/details/@delivery = 'true'">
										<li>
											<span>iai_i18n:[TnIgcHJ6ZXN5xYJraQ==]: </span>
											<iaixsl:choose>
												<iaixsl:when test="not(page/prepaid/details/@cancelationpath) and not(page/prepaid/details/@cancelable = 'yes')">
													<iaixsl:value-of select="page/prepaid/details/@dispatch_number"/>
												</iaixsl:when>
												<iaixsl:otherwise>
													-
												</iaixsl:otherwise>
											</iaixsl:choose>
										</li>
									</iaixsl:if>
									<iaixsl:if test="page/prepaid/dispatch/@date_sent != ''">
									  <iaixsl:if test="page/prepaid/details/@deliveryid = '0'">
										  <li>
											  <span>iai_i18n:[UHJ6ZXN5xYJrYSBvZGVicmFuYQ==]:  </span>
											  <iaixsl:value-of select="page/prepaid/dispatch/@date_sent"/>
										  </li>
									  </iaixsl:if>
									</iaixsl:if>
									<iaixsl:if test="page/prepaid/details/@select_date != ''">
										<li>
											<span>
												<iaixsl:choose>
													<iaixsl:when test="page/stock">
														iai_i18n:[V3licmFuYSBkYXRhIG9kYmlvcnUgemFtw7N3aWVuaWE=]: 
													</iaixsl:when>
													<iaixsl:otherwise>
														iai_i18n:[V3licmFuYSBkYXRhIGRvcsSZY3plbmlhIHphbcOzd2llbmlh]: 
													</iaixsl:otherwise>
												</iaixsl:choose>
											</span>
											<iaixsl:value-of select="page/prepaid/details/@select_date"/>
										</li>
									</iaixsl:if>
								</ul>
							</div>
							</iaixsl:if>
							<iaixsl:if test="page/prepaid/details/@link_tracking != ''">
							  <a target="_blank" class="tracking_button btn --outline --small mt-1">
								  <iaixsl:attribute name="href"><iaixsl:value-of select="page/prepaid/details/@link_tracking"/></iaixsl:attribute>
								  iai_i18n:[xZpsZWTFuiBwcnplc3nFgmvEmQ==]
							  </a>
							</iaixsl:if>
						</div>
					</div>
				</div>
			</div>
			<div class="prepaid_payment_form_container mb-5">
				<iaixsl:choose>
					<iaixsl:when test="/shop/page/prepaid/prepaid_history/item/@status = 'n'">
						<h2 class="orderdetails_label">
							<iaixsl:if test="page/prepaid/order/@payment_info = 'true'">
								<iaixsl:attribute name="class">orderdetails_label --more</iaixsl:attribute>
							</iaixsl:if>
							<span>iai_i18n:[Rm9ybWEgcMWCYXRub8WbY2k=]</span>
							<iaixsl:if test="page/prepaid/order/@payment_info = 'true'">
								<a href="#showDescription" class="moreInfo__show d-md-none" aria-hidden="true" tabindex="-1">iai_i18n:[V2nEmWNlag==]</a>
								<span class="sr-only"><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/payment_status_explanation"/></span>
								<div class="moreInfo">
										<a href="#showDescription" tabindex="-1" aria-hidden="true" class="moreInfo__show d-none d-md-flex"><i class="icon-question"/></a>
										<div style="display:none;" aria-hidden="true" class="moreInfo__desc"><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/payment_status_explanation"/></div>
								</div>
							</iaixsl:if>
						</h2>
						<iaixsl:for-each select="/shop/page/prepaid/prepaid_history/item[@status = 'n']">
							<div class="ordered_product">
								<div class="ordered_product__icon">
										<iaixsl:choose>
												<iaixsl:when test="$idoPayList and @payment_id = '29' and (@payment_form_id = '44' or @payment_form_id = '45') and count(/shop/page/prepaid_methods/item[@group='card'][not(@system_id='29')]) = 0">
														<iaixsl:attribute name="style">width: auto;</iaixsl:attribute>
														<iaixsl:if test="/shop/page/prepaid_methods/item[@id='44']">
																<img>
																		<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='44']/@icon"/></iaixsl:attribute>
																		<iaixsl:attribute name="alt">iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='44']/@name"/></iaixsl:attribute>
																</img>
														</iaixsl:if>
														<iaixsl:if test="/shop/page/prepaid_methods/item[@id='45']">
																<img>
																		<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='45']/@icon"/></iaixsl:attribute>
																		<iaixsl:attribute name="alt">iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='45']/@name"/></iaixsl:attribute>
																</img>
														</iaixsl:if>
												</iaixsl:when>
												<iaixsl:otherwise>
														<img src="/gfx/standards/prepaid_method_icon.png?r=1765442497">
															<iaixsl:attribute name="alt">iai_i18n:[TWV0b2RhIHDFgmF0bm/Fm2Np]: <iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
															<iaixsl:choose>
																<iaixsl:when test="/shop/page/prepaid/details/@paymentstatus = 'tc'">
																	<iaixsl:attribute name="src">data:image/svg+xml,%3Csvg xmlns=&apos;http://www.w3.org/2000/svg&apos; id=&apos;calendar&apos; width=&apos;26&apos; height=&apos;26&apos; fill=&apos;%23333&apos; viewBox=&apos;0 0 26 26&apos;%3E%3Cg id=&apos;Group_425&apos; data-name=&apos;Group 425&apos;%3E%3Cg id=&apos;Group_424&apos; data-name=&apos;Group 424&apos;%3E%3Cpath id=&apos;Path_75&apos; data-name=&apos;Path 75&apos; d=&apos;M22.512,1.992h-1.2V0H19.324V1.992H6.176V0H4.184V1.992h-1.2A2.992,2.992,0,0,0,0,4.98V22.512A2.992,2.992,0,0,0,2.988,25.5H22.512A2.992,2.992,0,0,0,25.5,22.512V4.98A2.992,2.992,0,0,0,22.512,1.992Zm1,20.52a1,1,0,0,1-1,1H2.988a1,1,0,0,1-1-1V9.363H23.508Zm0-15.141H1.992V4.98a1,1,0,0,1,1-1h1.2V5.977H6.176V3.984H19.324V5.977h1.992V3.984h1.2a1,1,0,0,1,1,1Z&apos;%3E%3C/path%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_427&apos; data-name=&apos;Group 427&apos; transform=&apos;translate(4.397 11.431)&apos;%3E%3Cg id=&apos;Group_426&apos; data-name=&apos;Group 426&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_196&apos; data-name=&apos;Rectangle 196&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_429&apos; data-name=&apos;Group 429&apos; transform=&apos;translate(7.914 11.431)&apos;%3E%3Cg id=&apos;Group_428&apos; data-name=&apos;Group 428&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_197&apos; data-name=&apos;Rectangle 197&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_431&apos; data-name=&apos;Group 431&apos; transform=&apos;translate(12.31 11.431)&apos;%3E%3Cg id=&apos;Group_430&apos; data-name=&apos;Group 430&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_198&apos; data-name=&apos;Rectangle 198&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_433&apos; data-name=&apos;Group 433&apos; transform=&apos;translate(14.948 11.431)&apos;%3E%3Cg id=&apos;Group_432&apos; data-name=&apos;Group 432&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_199&apos; data-name=&apos;Rectangle 199&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_435&apos; data-name=&apos;Group 435&apos; transform=&apos;translate(19.345 11.431)&apos;%3E%3Cg id=&apos;Group_434&apos; data-name=&apos;Group 434&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_200&apos; data-name=&apos;Rectangle 200&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.095 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_437&apos; data-name=&apos;Group 437&apos; transform=&apos;translate(4.397 14.948)&apos;%3E%3Cg id=&apos;Group_436&apos; data-name=&apos;Group 436&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_201&apos; data-name=&apos;Rectangle 201&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_439&apos; data-name=&apos;Group 439&apos; transform=&apos;translate(7.914 14.948)&apos;%3E%3Cg id=&apos;Group_438&apos; data-name=&apos;Group 438&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_202&apos; data-name=&apos;Rectangle 202&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_441&apos; data-name=&apos;Group 441&apos; transform=&apos;translate(12.31 14.948)&apos;%3E%3Cg id=&apos;Group_440&apos; data-name=&apos;Group 440&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_203&apos; data-name=&apos;Rectangle 203&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_443&apos; data-name=&apos;Group 443&apos; transform=&apos;translate(14.948 14.948)&apos;%3E%3Cg id=&apos;Group_442&apos; data-name=&apos;Group 442&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_204&apos; data-name=&apos;Rectangle 204&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_445&apos; data-name=&apos;Group 445&apos; transform=&apos;translate(4.397 19.345)&apos;%3E%3Cg id=&apos;Group_444&apos; data-name=&apos;Group 444&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_205&apos; data-name=&apos;Rectangle 205&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_447&apos; data-name=&apos;Group 447&apos; transform=&apos;translate(7.914 19.345)&apos;%3E%3Cg id=&apos;Group_446&apos; data-name=&apos;Group 446&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_206&apos; data-name=&apos;Rectangle 206&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_449&apos; data-name=&apos;Group 449&apos; transform=&apos;translate(12.31 19.345)&apos;%3E%3Cg id=&apos;Group_448&apos; data-name=&apos;Group 448&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_207&apos; data-name=&apos;Rectangle 207&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_451&apos; data-name=&apos;Group 451&apos; transform=&apos;translate(14.948 19.345)&apos;%3E%3Cg id=&apos;Group_450&apos; data-name=&apos;Group 450&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_208&apos; data-name=&apos;Rectangle 208&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_453&apos; data-name=&apos;Group 453&apos; transform=&apos;translate(19.345 14.948)&apos;%3E%3Cg id=&apos;Group_452&apos; data-name=&apos;Group 452&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_209&apos; data-name=&apos;Rectangle 209&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.095 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E</iaixsl:attribute>
																</iaixsl:when>
																<iaixsl:when test="/shop/page/prepaid/details/@paymentstatus = 'g'">
																	<iaixsl:attribute name="src">data:image/svg+xml,%3Csvg xmlns=&apos;http://www.w3.org/2000/svg&apos; width=&apos;35&apos; height=&apos;28&apos; viewBox=&apos;0 0 35 28&apos;%3E%3Cg id=&apos;dollar&apos; transform=&apos;translate(0 -49.067)&apos;%3E%3Cg id=&apos;Group_456&apos; data-name=&apos;Group 456&apos; transform=&apos;translate(0 49.067)&apos;%3E%3Cg id=&apos;Group_455&apos; data-name=&apos;Group 455&apos;%3E%3Cpath id=&apos;Path_76&apos; data-name=&apos;Path 76&apos; d=&apos;M156.809,61.872a6.4,6.4,0,1,0-6.4-6.4A6.41,6.41,0,0,0,156.809,61.872Zm0-11.6a5.2,5.2,0,1,1-5.2,5.2A5.207,5.207,0,0,1,156.809,50.269Z&apos; transform=&apos;translate(-138.934 -49.067)&apos;%3E%3C/path%3E%3Ccircle id=&apos;Ellipse_30&apos; data-name=&apos;Ellipse 30&apos; cx=&apos;1.105&apos; cy=&apos;1.105&apos; r=&apos;1.105&apos; transform=&apos;translate(2.497 22.128)&apos;%3E%3C/circle%3E%3Cpath id=&apos;Path_77&apos; data-name=&apos;Path 77&apos; d=&apos;M35.619,202.2l-.018-.046a4.364,4.364,0,0,0-5.484-2.5l-4.5,1.561a4.132,4.132,0,0,0-4.026-1.2l-4.775,1.215a4.271,4.271,0,0,1-3.226-.472,8.722,8.722,0,0,0-4.479-1.238H7.2v-1.8a.6.6,0,0,0-.6-.6H.6a.6.6,0,0,0-.6.6V213.5a.6.6,0,0,0,.6.6h6a.6.6,0,0,0,.6-.6v-2.975H9.114a7.6,7.6,0,0,1,3.064.641l1.191.521a8.113,8.113,0,0,0,6.8-.13c4.264-2.064,11.827-5.725,14.571-7.051A1.812,1.812,0,0,0,35.619,202.2ZM6,200.136V212.9H1.2V198.335H6Zm28.211,3.291c-2.744,1.326-10.307,4.987-14.571,7.051a6.912,6.912,0,0,1-5.791.111l-1.191-.521a8.788,8.788,0,0,0-3.546-.742H7.2v-8.589H9.113a7.52,7.52,0,0,1,3.861,1.067,5.482,5.482,0,0,0,4.14.6l4.775-1.215a2.92,2.92,0,0,1,3.393,1.691l.1.248.068.164.042.1-8.228,3.312.449,1.115,8.792-3.539h.007l.025-.012.026-.012.031-.018.02-.012.032-.023.015-.012.031-.027.013-.012.027-.03.012-.014.023-.031.012-.017.019-.031.011-.019c.006-.011.011-.023.016-.034l.008-.018v0c.006-.014.011-.029.016-.044l0-.011a.6.6,0,0,0-.02-.407l-.446-1.07,0-.007-.07-.168L30.51,200.8a3.163,3.163,0,0,1,3.976,1.809l.018.046A.6.6,0,0,1,34.214,203.427Z&apos; transform=&apos;translate(0 -185.838)&apos;%3E%3C/path%3E%3Cpath id=&apos;Path_78&apos; data-name=&apos;Path 78&apos; d=&apos;M207.755,91.354a3.462,3.462,0,0,1-.482-.176,2.438,2.438,0,0,1-.4-.223,2.2,2.2,0,0,1-.29-.239l-.337.6a3.406,3.406,0,0,0,1.9.767v.8h.893v-.823a2.9,2.9,0,0,0,.317-.067,1.882,1.882,0,0,0,.615-.286,1.338,1.338,0,0,0,.407-.478,1.475,1.475,0,0,0,.149-.682,1.409,1.409,0,0,0-.129-.635,1.208,1.208,0,0,0-.376-.439,2.276,2.276,0,0,0-.6-.3c-.122-.042-.251-.082-.388-.119V87.144a2.252,2.252,0,0,1,.349.121,2.008,2.008,0,0,1,.325.18,1.435,1.435,0,0,1,.235.2l.329-.572a2.7,2.7,0,0,0-.748-.439,2.651,2.651,0,0,0-.49-.138v-.842h-.893v.8a2.545,2.545,0,0,0-.619.132,1.758,1.758,0,0,0-.568.325,1.445,1.445,0,0,0-.372.5,1.6,1.6,0,0,0-.133.67,1.324,1.324,0,0,0,.11.564,1.064,1.064,0,0,0,.325.4,2.026,2.026,0,0,0,.537.282,6.776,6.776,0,0,0,.721.213v1.894A2.719,2.719,0,0,1,207.755,91.354Zm1.292-1.559.032.011a1.655,1.655,0,0,1,.384.2.825.825,0,0,1,.239.259.7.7,0,0,1,.082.349.709.709,0,0,1-.321.635,1.217,1.217,0,0,1-.415.164ZM207.8,88.73a1.246,1.246,0,0,1-.345-.176.655.655,0,0,1-.2-.243.783.783,0,0,1-.067-.337.8.8,0,0,1,.266-.635,1.237,1.237,0,0,1,.7-.255v1.754Q207.959,88.785,207.8,88.73Z&apos; transform=&apos;translate(-190.518 -82.864)&apos;%3E%3C/path%3E%3C/g%3E%3C/g%3E%3C/g%3E%3C/svg%3E</iaixsl:attribute>
																</iaixsl:when>
																<iaixsl:when test="@icon">
																	<iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
																</iaixsl:when>
															</iaixsl:choose>
														</img>
												</iaixsl:otherwise>
										</iaixsl:choose>
								</div>
								<div class="ordered_product__content">
									<div class="ordered_product__name">
										<div class="ordered__name">
												<iaixsl:choose>
														<iaixsl:when test="$idoPayList and @payment_id = '29' and (@payment_form_id = '44' or @payment_form_id = '45') and count(/shop/page/prepaid_methods/item[@group='card'][not(@system_id='29')]) = 0">
																<iaixsl:value-of select="/shop/page/groupList/item[@id='card']/@name"/>
														</iaixsl:when>
														<iaixsl:otherwise>
																<strong><iaixsl:value-of select="@payment_name"/></strong>
														</iaixsl:otherwise>
												</iaixsl:choose>
										</div>
										<iaixsl:if test="amount/order_currency/@payform_cost &gt; 0">
											<div class="ordered-price">
												<span>
													<iaixsl:value-of select="amount/order_currency/@payform_cost_formatted"/>
													<iaixsl:if test="not(amount/client_currency/@currencysign = amount/order_currency/@currencysign)">
														<small> (<iaixsl:value-of select="amount/client_currency/@payform_cost_formatted"/>)</small>
													</iaixsl:if>
												</span>
											</div>
										</iaixsl:if>
									</div>
								</div>
							</div>
						</iaixsl:for-each>
					</iaixsl:when>
					<iaixsl:when test="not(not(page/prepaid_methods/item[@checked='true']) and not(page/prepaid/details/@paymentstatus = 'g') and not(page/prepaid/details/@paymentstatus = 'tc'))">
						<h2 class="orderdetails_label">
              <iaixsl:if test="page/prepaid/order/@payment_info = 'true'">
								<iaixsl:attribute name="class">orderdetails_label --more</iaixsl:attribute>
							</iaixsl:if>
							<span>iai_i18n:[Rm9ybWEgcMWCYXRub8WbY2k=]</span>
								<iaixsl:if test="page/prepaid/order/@payment_info = 'true'">
									<a href="#showDescription" class="moreInfo__show d-md-none" aria-hidden="true" tabindex="-1">iai_i18n:[V2nEmWNlag==]</a>
									<span class="sr-only"><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/payment_status_explanation"/></span>
									<div class="moreInfo">
											<a href="#showDescription" tabindex="-1" aria-hidden="true" class="moreInfo__show d-none d-md-flex"><i class="icon-question"/></a>
											<div style="display:none;" aria-hidden="true" class="moreInfo__desc"><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/payment_status_explanation"/></div>
									</div>
							</iaixsl:if>
							</h2>
						<div class="ordered_product">
							<div class="ordered_product__icon">
								<iaixsl:choose>
										<iaixsl:when test="@payment_id = '29' and (@payment_form_id = '44' or @payment_form_id = '45') and count(/shop/page/prepaid_methods/item[@group='card'][not(@system_id='29')]) = 0">
												<iaixsl:attribute name="style">width: auto;</iaixsl:attribute>
												<iaixsl:if test="/shop/page/prepaid_methods/item[@id='44']">
														<img>
																<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='44']/@icon"/></iaixsl:attribute>
																<iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='44']/@name"/></iaixsl:attribute>
														</img>
												</iaixsl:if>
												<iaixsl:if test="/shop/page/prepaid_methods/item[@id='45']">
														<img>
																<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='45']/@icon"/></iaixsl:attribute>
																<iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/prepaid_methods/item[@id='45']/@name"/></iaixsl:attribute>
														</img>
												</iaixsl:if>
										</iaixsl:when>
										<iaixsl:otherwise>
												<img src="/gfx/standards/prepaid_method_icon.png?r=1765442497">
														<iaixsl:choose>
															<iaixsl:when test="/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon and not(page/prepaid/details/@paymentstatus = 'g') and not(page/prepaid/details/@paymentstatus = 'tc')">
																<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon"/></iaixsl:attribute>
															</iaixsl:when>
															<iaixsl:when test="page/prepaid/details/@paymentstatus = 'tc'">
																<iaixsl:attribute name="src">data:image/svg+xml,%3Csvg xmlns=&apos;http://www.w3.org/2000/svg&apos; id=&apos;calendar&apos; width=&apos;26&apos; height=&apos;26&apos; fill=&apos;%23333&apos; viewBox=&apos;0 0 26 26&apos;%3E%3Cg id=&apos;Group_425&apos; data-name=&apos;Group 425&apos;%3E%3Cg id=&apos;Group_424&apos; data-name=&apos;Group 424&apos;%3E%3Cpath id=&apos;Path_75&apos; data-name=&apos;Path 75&apos; d=&apos;M22.512,1.992h-1.2V0H19.324V1.992H6.176V0H4.184V1.992h-1.2A2.992,2.992,0,0,0,0,4.98V22.512A2.992,2.992,0,0,0,2.988,25.5H22.512A2.992,2.992,0,0,0,25.5,22.512V4.98A2.992,2.992,0,0,0,22.512,1.992Zm1,20.52a1,1,0,0,1-1,1H2.988a1,1,0,0,1-1-1V9.363H23.508Zm0-15.141H1.992V4.98a1,1,0,0,1,1-1h1.2V5.977H6.176V3.984H19.324V5.977h1.992V3.984h1.2a1,1,0,0,1,1,1Z&apos;%3E%3C/path%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_427&apos; data-name=&apos;Group 427&apos; transform=&apos;translate(4.397 11.431)&apos;%3E%3Cg id=&apos;Group_426&apos; data-name=&apos;Group 426&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_196&apos; data-name=&apos;Rectangle 196&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_429&apos; data-name=&apos;Group 429&apos; transform=&apos;translate(7.914 11.431)&apos;%3E%3Cg id=&apos;Group_428&apos; data-name=&apos;Group 428&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_197&apos; data-name=&apos;Rectangle 197&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_431&apos; data-name=&apos;Group 431&apos; transform=&apos;translate(12.31 11.431)&apos;%3E%3Cg id=&apos;Group_430&apos; data-name=&apos;Group 430&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_198&apos; data-name=&apos;Rectangle 198&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_433&apos; data-name=&apos;Group 433&apos; transform=&apos;translate(14.948 11.431)&apos;%3E%3Cg id=&apos;Group_432&apos; data-name=&apos;Group 432&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_199&apos; data-name=&apos;Rectangle 199&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_435&apos; data-name=&apos;Group 435&apos; transform=&apos;translate(19.345 11.431)&apos;%3E%3Cg id=&apos;Group_434&apos; data-name=&apos;Group 434&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_200&apos; data-name=&apos;Rectangle 200&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.095 -0.181)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_437&apos; data-name=&apos;Group 437&apos; transform=&apos;translate(4.397 14.948)&apos;%3E%3Cg id=&apos;Group_436&apos; data-name=&apos;Group 436&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_201&apos; data-name=&apos;Rectangle 201&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_439&apos; data-name=&apos;Group 439&apos; transform=&apos;translate(7.914 14.948)&apos;%3E%3Cg id=&apos;Group_438&apos; data-name=&apos;Group 438&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_202&apos; data-name=&apos;Rectangle 202&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_441&apos; data-name=&apos;Group 441&apos; transform=&apos;translate(12.31 14.948)&apos;%3E%3Cg id=&apos;Group_440&apos; data-name=&apos;Group 440&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_203&apos; data-name=&apos;Rectangle 203&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_443&apos; data-name=&apos;Group 443&apos; transform=&apos;translate(14.948 14.948)&apos;%3E%3Cg id=&apos;Group_442&apos; data-name=&apos;Group 442&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_204&apos; data-name=&apos;Rectangle 204&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_445&apos; data-name=&apos;Group 445&apos; transform=&apos;translate(4.397 19.345)&apos;%3E%3Cg id=&apos;Group_444&apos; data-name=&apos;Group 444&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_205&apos; data-name=&apos;Rectangle 205&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.147 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_447&apos; data-name=&apos;Group 447&apos; transform=&apos;translate(7.914 19.345)&apos;%3E%3Cg id=&apos;Group_446&apos; data-name=&apos;Group 446&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_206&apos; data-name=&apos;Rectangle 206&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.336 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_449&apos; data-name=&apos;Group 449&apos; transform=&apos;translate(12.31 19.345)&apos;%3E%3Cg id=&apos;Group_448&apos; data-name=&apos;Group 448&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_207&apos; data-name=&apos;Rectangle 207&apos; width=&apos;1&apos; height=&apos;2&apos; transform=&apos;translate(-0.06 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_451&apos; data-name=&apos;Group 451&apos; transform=&apos;translate(14.948 19.345)&apos;%3E%3Cg id=&apos;Group_450&apos; data-name=&apos;Group 450&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_208&apos; data-name=&apos;Rectangle 208&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(0.302 -0.095)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3Cg id=&apos;Group_453&apos; data-name=&apos;Group 453&apos; transform=&apos;translate(19.345 14.948)&apos;%3E%3Cg id=&apos;Group_452&apos; data-name=&apos;Group 452&apos; transform=&apos;translate(0 0)&apos;%3E%3Crect id=&apos;Rectangle_209&apos; data-name=&apos;Rectangle 209&apos; width=&apos;2&apos; height=&apos;2&apos; transform=&apos;translate(-0.095 0.302)&apos;%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E</iaixsl:attribute>
															</iaixsl:when>
															<iaixsl:when test="page/prepaid/details/@paymentstatus = 'g'">
																<iaixsl:attribute name="src">data:image/svg+xml,%3Csvg xmlns=&apos;http://www.w3.org/2000/svg&apos; width=&apos;35&apos; height=&apos;28&apos; viewBox=&apos;0 0 35 28&apos;%3E%3Cg id=&apos;dollar&apos; transform=&apos;translate(0 -49.067)&apos;%3E%3Cg id=&apos;Group_456&apos; data-name=&apos;Group 456&apos; transform=&apos;translate(0 49.067)&apos;%3E%3Cg id=&apos;Group_455&apos; data-name=&apos;Group 455&apos;%3E%3Cpath id=&apos;Path_76&apos; data-name=&apos;Path 76&apos; d=&apos;M156.809,61.872a6.4,6.4,0,1,0-6.4-6.4A6.41,6.41,0,0,0,156.809,61.872Zm0-11.6a5.2,5.2,0,1,1-5.2,5.2A5.207,5.207,0,0,1,156.809,50.269Z&apos; transform=&apos;translate(-138.934 -49.067)&apos;%3E%3C/path%3E%3Ccircle id=&apos;Ellipse_30&apos; data-name=&apos;Ellipse 30&apos; cx=&apos;1.105&apos; cy=&apos;1.105&apos; r=&apos;1.105&apos; transform=&apos;translate(2.497 22.128)&apos;%3E%3C/circle%3E%3Cpath id=&apos;Path_77&apos; data-name=&apos;Path 77&apos; d=&apos;M35.619,202.2l-.018-.046a4.364,4.364,0,0,0-5.484-2.5l-4.5,1.561a4.132,4.132,0,0,0-4.026-1.2l-4.775,1.215a4.271,4.271,0,0,1-3.226-.472,8.722,8.722,0,0,0-4.479-1.238H7.2v-1.8a.6.6,0,0,0-.6-.6H.6a.6.6,0,0,0-.6.6V213.5a.6.6,0,0,0,.6.6h6a.6.6,0,0,0,.6-.6v-2.975H9.114a7.6,7.6,0,0,1,3.064.641l1.191.521a8.113,8.113,0,0,0,6.8-.13c4.264-2.064,11.827-5.725,14.571-7.051A1.812,1.812,0,0,0,35.619,202.2ZM6,200.136V212.9H1.2V198.335H6Zm28.211,3.291c-2.744,1.326-10.307,4.987-14.571,7.051a6.912,6.912,0,0,1-5.791.111l-1.191-.521a8.788,8.788,0,0,0-3.546-.742H7.2v-8.589H9.113a7.52,7.52,0,0,1,3.861,1.067,5.482,5.482,0,0,0,4.14.6l4.775-1.215a2.92,2.92,0,0,1,3.393,1.691l.1.248.068.164.042.1-8.228,3.312.449,1.115,8.792-3.539h.007l.025-.012.026-.012.031-.018.02-.012.032-.023.015-.012.031-.027.013-.012.027-.03.012-.014.023-.031.012-.017.019-.031.011-.019c.006-.011.011-.023.016-.034l.008-.018v0c.006-.014.011-.029.016-.044l0-.011a.6.6,0,0,0-.02-.407l-.446-1.07,0-.007-.07-.168L30.51,200.8a3.163,3.163,0,0,1,3.976,1.809l.018.046A.6.6,0,0,1,34.214,203.427Z&apos; transform=&apos;translate(0 -185.838)&apos;%3E%3C/path%3E%3Cpath id=&apos;Path_78&apos; data-name=&apos;Path 78&apos; d=&apos;M207.755,91.354a3.462,3.462,0,0,1-.482-.176,2.438,2.438,0,0,1-.4-.223,2.2,2.2,0,0,1-.29-.239l-.337.6a3.406,3.406,0,0,0,1.9.767v.8h.893v-.823a2.9,2.9,0,0,0,.317-.067,1.882,1.882,0,0,0,.615-.286,1.338,1.338,0,0,0,.407-.478,1.475,1.475,0,0,0,.149-.682,1.409,1.409,0,0,0-.129-.635,1.208,1.208,0,0,0-.376-.439,2.276,2.276,0,0,0-.6-.3c-.122-.042-.251-.082-.388-.119V87.144a2.252,2.252,0,0,1,.349.121,2.008,2.008,0,0,1,.325.18,1.435,1.435,0,0,1,.235.2l.329-.572a2.7,2.7,0,0,0-.748-.439,2.651,2.651,0,0,0-.49-.138v-.842h-.893v.8a2.545,2.545,0,0,0-.619.132,1.758,1.758,0,0,0-.568.325,1.445,1.445,0,0,0-.372.5,1.6,1.6,0,0,0-.133.67,1.324,1.324,0,0,0,.11.564,1.064,1.064,0,0,0,.325.4,2.026,2.026,0,0,0,.537.282,6.776,6.776,0,0,0,.721.213v1.894A2.719,2.719,0,0,1,207.755,91.354Zm1.292-1.559.032.011a1.655,1.655,0,0,1,.384.2.825.825,0,0,1,.239.259.7.7,0,0,1,.082.349.709.709,0,0,1-.321.635,1.217,1.217,0,0,1-.415.164ZM207.8,88.73a1.246,1.246,0,0,1-.345-.176.655.655,0,0,1-.2-.243.783.783,0,0,1-.067-.337.8.8,0,0,1,.266-.635,1.237,1.237,0,0,1,.7-.255v1.754Q207.959,88.785,207.8,88.73Z&apos; transform=&apos;translate(-190.518 -82.864)&apos;%3E%3C/path%3E%3C/g%3E%3C/g%3E%3C/g%3E%3C/svg%3E</iaixsl:attribute>
															</iaixsl:when>
														</iaixsl:choose>
														<iaixsl:attribute name="alt"><iaixsl:value-of select="page/prepaid_methods/item[@checked='true']/@name"/></iaixsl:attribute>
												</img>
										</iaixsl:otherwise>
								</iaixsl:choose>
							</div>
							<div class="ordered_product__content">
								<div class="ordered_product__name">
									<div class="ordered__name">
										<strong>
											<iaixsl:choose>
												<iaixsl:when test="@payment_id = '29' and (@payment_form_id = '44' or @payment_form_id = '45') and count(/shop/page/prepaid_methods/item[@group='card'][not(@system_id='29')]) = 0">
														<iaixsl:value-of select="/shop/page/groupList/item[@id='card']/@name"/>
												</iaixsl:when>
												<iaixsl:when test="page/prepaid/details/@paymentstatus = 'g'">
													iai_i18n:[UMWCYXRub8WbxIcgcHJ6eSBvZGJpb3J6ZQ==] 
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:value-of select="page/prepaid_methods/item[@checked='true']/@name"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</strong>

										<iaixsl:variable name="delivery_id"><iaixsl:value-of select="/shop/page/shipping/delivery/@id"/></iaixsl:variable>

										<iaixsl:choose>
											<iaixsl:when test="($delivery_id='0-1'                 or $delivery_id = '77-1'                 or $delivery_id = '89-1'                 or $delivery_id = '90-1'                 or $delivery_id = '100023-1'                 or $delivery_id = '100075-1'                 or $delivery_id = '100149-1'                 or $delivery_id = '100148-1'                 or $delivery_id = '100150-1'                 or $delivery_id = '100153-1'                 or $delivery_id = '100061-1'                 or $delivery_id = '100063-1'                 or $delivery_id = '100041-1'                 or $delivery_id = '76-1'                 or $delivery_id = '38-1'                 or (substring-before($delivery_id, '-') &gt; 100100 and substring-after($delivery_id, '-') = '1') ) and page/stock/@stock_id and not(page/prepaid/prepaid_history/item[position() = last()]/@status = 'y')">

												

												<ul>
													<li>
														iai_i18n:[WmFwxYJhY2lzeiB3IHB1bmtjaWUgdyBtb21lbmNpZSBvZGJpZXJhbmlhIHphbcOzd2llbmlh].
													</li>
												</ul>
											</iaixsl:when>
											<iaixsl:when test="page/prepaid/details/@paymentstatus = 'g' and not(page/prepaid/prepaid_history/item[position() = last()]/@status = 'y')">
												<ul>
													<li>
														iai_i18n:[WmFwxYJhY2lzeiBsaXN0b25vc3pvd2kgbHViIGt1cmllcm93aSwga3TDs3J5IGRvc3RhcmN6eSBjaSBwcnplc3nFgmvEmQ==]. 
													</li>
												</ul>
											</iaixsl:when>
											<iaixsl:when test="page/prepaid/details/@paymentstatus = 'tc'">
											</iaixsl:when>
										</iaixsl:choose>
									</div>
									<iaixsl:choose>
										<iaixsl:when test="/shop/page/shipping/delivery/@id='0-1' and page/stock/@stock_id">
										</iaixsl:when>
										<iaixsl:when test="page/prepaid/details/@paymentstatus = 'g'">
										</iaixsl:when>
										<iaixsl:when test="page/prepaid/details/@paymentstatus = 'tc'">
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:if test="page/prepaid/details/@currencycost &gt; 0">
												<div class="ordered-price">
													<span>
														<iaixsl:value-of select="page/prepaid/details/@currency_payform_cost_formatted"/>
														
													</span>
												</div>
											</iaixsl:if>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</div>
							</div>
						</div>
					</iaixsl:when>
				</iaixsl:choose>
			</div>

			<div class="prepaid_insurance_container mb-5">
				<iaixsl:if test="/shop/page/insurance_product">
					<h2 class="orderdetails_label"><span>iai_i18n:[T2Nocm9uYSBLdXB1asSFY2Vnbw==]</span></h2>
					<div>
						<div class="ordered_product__icon">
							<img src="/gfx/standards/insurance_icon.png?r=1765442497" alt="insurance_icon"/>
						</div>
						<div class="ordered_product__content">
							<div class="ordered_product__name">
								<div class="ordered__name">
									<strong><iaixsl:value-of select="/shop/page/insurance_product/@service"/></strong>
									<ul>
										<li>
											<iaixsl:choose>
												<iaixsl:when test="/shop/page/insurance_product/@status = 'unconfirmed'">
													<strong>iai_i18n:[U3RhdHVz]:</strong> iai_i18n:[bmllcG90d2llcmR6b25l]
												</iaixsl:when>
												<iaixsl:when test="/shop/page/insurance_product/@status = 'confirmed'">
													<strong>iai_i18n:[U3RhdHVz]:</strong> iai_i18n:[cG90d2llcmR6b25l]
												</iaixsl:when>
											</iaixsl:choose>
										</li>
									</ul>
								</div>
								<div class="ordered-price">
									<iaixsl:if test="/shop/page/insurance_product/@price_gross &gt; 0">
										<span><iaixsl:if test="$signbeforeprice = 'true'">
											<iaixsl:value-of select="/shop/page/insurance_product/@currency"/>
											<iaixsl:value-of select="$signbetweenpricecurrency"/>
										</iaixsl:if>
											<iaixsl:value-of select="/shop/page/insurance_product/@price_gross"/>
											<iaixsl:if test="$signbeforeprice = 'false'">
												<iaixsl:value-of select="$signbetweenpricecurrency"/>
												<iaixsl:value-of select="/shop/page/insurance_product/@currency"/>
											</iaixsl:if></span>
									</iaixsl:if>
								</div>
							</div>
						</div>
					</div>
				</iaixsl:if>
			</div>

			
		</div>
		<!-- (prepaid_address, 60dd8e8abcdeb9.97512135.12)-->
            <div id="prepaid_address" class="mb-4">
            <iaixsl:choose>
                    <iaixsl:when test="page/stock">
                            <h3 class="orderdetails_label">
                                <span>iai_i18n:[UHVua3Qgb2RiaW9ydSB6YW3Ds3dpZW5pYQ==]</span>
                            </h3>
                        <div class="order2_info1">

                                    <span class="prepaid_stock_name"><iaixsl:value-of select="page/stock/@name"/></span>
                                    <span><iaixsl:value-of select="page/stock/@street"/></span>
                                    <span><iaixsl:value-of select="page/stock/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/stock/@city"/><iaixsl:text> </iaixsl:text>(<iaixsl:value-of select="page/stock/@country"/>)</span>

                                    <iaixsl:if test="page/stock/@mail != ''">
                                        <span class="prepaid_stock_contact_item">e-mail: 
                                            <a><iaixsl:attribute name="href">mailto:<iaixsl:value-of select="page/stock/@mail"/></iaixsl:attribute><iaixsl:value-of select="page/stock/@mail"/></a></span>
                                    </iaixsl:if>

                                    <iaixsl:if test="page/stock/@phone != ''">
                                        <span class="prepaid_stock_contact_item">iai_i18n:[dGVsZWZvbg==]: 
                                            <span><iaixsl:value-of select="page/stock/@phone"/></span></span>
                                    </iaixsl:if>

                                    <iaixsl:if test="page/stock/@fax != ''">
                                        <span class="prepaid_stock_contact_item">fax: 
                                            <span><iaixsl:value-of select="page/stock/@fax"/></span></span>
                                    </iaixsl:if>

                                    <iaixsl:if test="page/stock/@gg != ''">
                                        <span class="prepaid_stock_contact_item">gg: 
                                            <a><iaixsl:attribute name="href">gg:<iaixsl:value-of select="page/stock/@gg"/></iaixsl:attribute><iaixsl:value-of select="page/stock/@gg"/></a></span>
                                    </iaixsl:if>

                                    <iaixsl:if test="page/stock/@skype != ''">
                                        <span class="prepaid_stock_contact_item">skype: 
                                            <a target="_blank"><iaixsl:attribute name="href">callto://<iaixsl:value-of select="page/stock/@skype"/></iaixsl:attribute><iaixsl:value-of select="page/stock/@skype"/></a></span>
                                    </iaixsl:if>

                                    <div class="prepaid_stock_link">
                                        <a class="prepaid_stock_link" target="_blank">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="page/stock/@link"/></iaixsl:attribute>
                                            iai_i18n:[d2nEmWNlaiBpbmZvcm1hY2pp]
                                        </a>
                                    </div>
                        </div>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <h3 class="orderdetails_label">
                            <span>iai_i18n:[QWRyZXMgZG9zdGF3eQ==]</span>
                        </h3>

                        <div class="order2_info1">

                            <iaixsl:if test="page/client/shipping_address/@additional != ''"><span><iaixsl:value-of select="page/client/shipping_address/@additional"/></span></iaixsl:if>
                            <span><iaixsl:value-of select="page/client/shipping_address/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/shipping_address/@lastname"/></span>
                            <span><iaixsl:value-of select="page/client/shipping_address/@street"/></span>
                            <span><iaixsl:value-of select="page/client/shipping_address/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/shipping_address/@city"/><iaixsl:text> </iaixsl:text>(<iaixsl:if test="page/client/shipping_address/@province"><iaixsl:value-of select="page/client/shipping_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/client/shipping_address/@country_long"/>)</span>
                            <iaixsl:if test="(page/client/shipping_address/@phone) and not(page/client/shipping_address/@phone = '')">
                                <span>iai_i18n:[dGVsZWZvbg==]:  <iaixsl:value-of select="page/client/shipping_address/@phone"/></span>
                            </iaixsl:if>
                        </div>
                    </iaixsl:otherwise>
                </iaixsl:choose>
                <h3 class="orderdetails_label">
                    <span>iai_i18n:[RGFuZSB6YW1hd2lhasSFY2Vnbw==]</span>
                </h3>

                <div class="order2_info1">
                    <iaixsl:if test="page/client/billing_address/@firm != ''">
                        <span><iaixsl:value-of select="page/client/billing_address/@firm"/></span>
                    </iaixsl:if>
                    <iaixsl:if test="not(page/client/billing_address/@firm)">
                        <span><iaixsl:value-of select="page/client/billing_address/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/billing_address/@lastname"/></span>
                    </iaixsl:if>
                    <span><iaixsl:value-of select="page/client/billing_address/@street"/></span>
                    <span><iaixsl:value-of select="page/client/billing_address/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/billing_address/@city"/><iaixsl:text> </iaixsl:text>(<iaixsl:if test="page/client/billing_address/@province"><iaixsl:value-of select="page/client/billing_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/client/billing_address/@country_long"/>)
                    </span>
                    <iaixsl:if test="page/client/billing_address/@nip != ''">
                        <span>iai_i18n:[TklQ]: <iaixsl:value-of select="page/client/billing_address/@nip"/></span>
                    </iaixsl:if>
                    <iaixsl:if test="(page/client/@phone1) and not(page/client/@phone1 = '')">
                        <span>iai_i18n:[dGVsZWZvbg==]:  <iaixsl:value-of select="page/client/@phone1"/></span>
                    </iaixsl:if>
                    <iaixsl:if test="(page/client/@email) and not(page/client/@email = '')">
                        <span>e-mail:  <iaixsl:value-of select="page/client/@email"/></span>
                    </iaixsl:if>
                </div>

                
                <h3 class="orderdetails_label">
                    <span>iai_i18n:[RGFuZSBvZGJpb3JjeQ==]</span>
                </h3>

                <div class="order2_info1">
                    <span><iaixsl:value-of select="page/client/shipping_address/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/shipping_address/@lastname"/></span>

                    <span><iaixsl:value-of select="page/client/shipping_address/@street"/></span>
                    <span><iaixsl:value-of select="page/client/shipping_address/@zipcode"/><iaixsl:text> </iaixsl:text>
                    <iaixsl:value-of select="page/client/shipping_address/@city"/> (<iaixsl:if test="page/client/shipping_address/@province"><iaixsl:value-of select="page/client/shipping_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/client/shipping_address/@country_long"/>)</span>
                    <iaixsl:if test="page/client/shipping_address/@phone and page/client/shipping_address/@phone != ''">
                        <span>iai_i18n:[dGVsZWZvbg==]: <iaixsl:value-of select="page/client/shipping_address/@phone"/></span>
                    </iaixsl:if>
                </div>

                <iaixsl:if test="/shop/page/client/payer_address">
                    <h3 class="orderdetails_label">
                        <span>iai_i18n:[RGFuZSBuYSBmYWt0dXJ6ZQ==]</span>
                    </h3>
                    <div class="order2_info1">
                        <iaixsl:if test="page/client/payer_address/@firm != ''">
                            <span><iaixsl:value-of select="page/client/payer_address/@firm"/></span>
                        </iaixsl:if>
                        <iaixsl:if test="not(page/client/payer_address/@firm)">
                            <span><iaixsl:value-of select="page/client/payer_address/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/payer_address/@lastname"/></span>
                        </iaixsl:if>
                        <span><iaixsl:value-of select="page/client/payer_address/@street"/></span>
                        <span><iaixsl:value-of select="page/client/payer_address/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/payer_address/@city"/><iaixsl:text> </iaixsl:text>(<iaixsl:if test="page/client/payer_address/@province"><iaixsl:value-of select="page/client/payer_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/client/payer_address/@country_long"/>)
                        </span>
                        <iaixsl:if test="page/client/payer_address/@nip != ''">
                            <span>iai_i18n:[TklQ]: <iaixsl:value-of select="page/client/payer_address/@nip"/></span>
                        </iaixsl:if>
                        <iaixsl:if test="(page/client/payer_address/@phone) and not(page/client/payer_address/@phone = '')">
                            <span>iai_i18n:[dGVsZWZvbg==]:  <iaixsl:value-of select="page/client/payer_address/@phone"/></span>
                        </iaixsl:if>
                        <iaixsl:if test="(page/client/payer_address/@email) and not(page/client/payer_address/@email = '')">
                            <span>e-mail:  <iaixsl:value-of select="page/client/payer_address/@email"/></span>
                        </iaixsl:if>
                    </div>
                </iaixsl:if>

                <iaixsl:if test="page/prepaid/details/@remarks">
                    <h3 class="orderdetails_label">
                        <span>iai_i18n:[VXdhZ2kgZGxhIHNrbGVwdSBwb2RhbmUgcG9kY3phcyBza8WCYWRhbmlhIHphbcOzd2llbmlh]</span>
                    </h3>

                    <div class="order2_info1">
                        <iaixsl:value-of select="page/prepaid/details/@remarks"/>
                    </div>
                </iaixsl:if>

                <iaixsl:if test="page/prepaid/details/@deliverer_note">
                    <h3 class="orderdetails_label">
                        <span>iai_i18n:[VXdhZ2kgZGxhIGRvc3Rhd2N5IHBvZGFuZSBwb2RjemFzIHNrxYJhZGFuaWEgemFtw7N3aWVuaWE=]</span>
                    </h3>

                    <div class="order2_info1">
                        <iaixsl:value-of select="page/prepaid/details/@deliverer_note"/>
                    </div>
                </iaixsl:if>
            </div>
        <!-- (prepaid_documents, 60dd8e88bea1c3.58887943.9)-->
                <iaixsl:if test="count(page/prepaid/documents/document) &gt; 0">
                    <div id="prepaid_documents">
                    <div class="orderdetails_label"><span>iai_i18n:[RG9rdW1lbnR5IGRvIHBvYnJhbmlh]</span></div>
                    <div class="order2_info_sub">
                        <iaixsl:for-each select="page/prepaid/documents/document">
                            <div class="order2_info1">
                                <div class="n54116_item">
                                    <a class="n54116_item" target="_blank">
                                        <iaixsl:attribute name="title">iai_i18n:[UG9iaWVyeiBsdWIgd3lkcnVrdWogZG9rdW1lbnQ=]</iaixsl:attribute>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                        <iaixsl:value-of select="@id"/>
                                    </a>
                                </div>
                            </div>
                        </iaixsl:for-each>
                    </div>
                    </div>
                </iaixsl:if>
        <!-- (orderdetails_payform, 60dd8f681ed455.08274068.11)-->
    <iaixsl:variable name="prepaidzt_txt">iai_i18n:[WmfFgm/FmyByZWtsYW1hY2rEmQ==]</iaixsl:variable> 
    <iaixsl:variable name="prepaidrt_txt">iai_i18n:[Wndyw7PEhyBwcm9kdWt0]</iaixsl:variable> 

    <iaixsl:if test="($prepaidrt_txt and /shop/page/prepaid/actions/return/@url) or ($prepaidzt_txt and /shop/page/prepaid/actions/rma/@url)">
        <div class="actions_return_rma row">
            <iaixsl:if test="$prepaidrt_txt and /shop/page/prepaid/actions/return/@url">
                <div class="actions_return col-12 col-sm-6">
                    <div class="actions_return_sub col-12 mb-4">
                        <h3>iai_i18n:[QmV6cHJvYmxlbW93eSB6d3JvdCBwcm9kdWt0dQ==]</h3>
                        <div>
                            <img alt="returns" src="/gfx/standards/returns_action.png?r=1765442497"/><span>iai_i18n:[SmXFvGVsaSBjaGNlc3ogc2tvcnp5c3RhxIcgeiBwcmF3YSBkbyB6d3JvdHUgemFrdXBpb255Y2ggcHJvZHVrdMOzdyBiZXogcG9kYW5pYSBwcnp5Y3p5bnkgLSBza29yenlzdGFqIHogbmFzemVnbyBzeXN0ZW11IGRvIHp3cm90w7N3LCBrdMOzcnkgdWN6eW5pIHByb2NlcyBwcm9zdHltIGkgYmV6cGllY3pueW0=].</span></div>
                            <a class="btn --solid">
                                <iaixsl:attribute name="title">iai_i18n:[S2xpa25paiwgYWJ5IHrFgm/FvHnEhyByZWtsYW1hY2rEmSBwcm9kdWt0dSBkbyBza2xlcHU=]. </iaixsl:attribute>
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/prepaid/actions/return/@url"/></iaixsl:attribute><iaixsl:value-of select="$prepaidrt_txt"/>
                            </a>
                    </div>
                </div>
            </iaixsl:if>
            <iaixsl:if test="$prepaidzt_txt and /shop/page/prepaid/actions/rma/@url">
                <div class="actions_rma col-12 col-sm-6">
                    <div class="actions_rma_sub col-12">
                        <h3>iai_i18n:[QmV6cHJvYmxlbW93YSByZWtsYW1hY2phIHByb2R1a3R1]</h3>
                        <div>
                            <img alt="rma" src="/gfx/standards/rma_action.png?r=1765442497"/><span>iai_i18n:[SmXFvGVsaSBwcm9kdWt0IHcgbW9tZW5jaWUgZG9zdGF3eSBiecWCIHNwcmF3bnksIGFsZSBwb3BzdcWCIHNpxJkgaSBjaGNlc3ogemfFgm9zacSHIHJla2xhbWFjasSZIHogdHl0dcWCdSBnd2FyYW5jamkgcG9wcnpleiBuYXN6IHNrbGVwLCBza29yenlzdGFqIHogbmFzemVnbyBzeXN0ZW11IHpnxYJhc3phbmlhIHJla2xhbWFjamksIGNvIHVjenluaSBwcm9jZXMgxYJhdHdpZWpzenltIGkgc3p5YnN6eW0=].</span></div>
                            <a class="btn --solid">
                                <iaixsl:attribute name="title">iai_i18n:[S2xpa25paiwgYWJ5IG5hZGHEhyB6d3JvdCBwcm9kdWt0dSBkbyBza2xlcHU=].</iaixsl:attribute>
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/prepaid/actions/rma/@url"/></iaixsl:attribute><iaixsl:value-of select="$prepaidzt_txt"/>
                            </a>
                    </div>
                </div>
            </iaixsl:if>
        </div>
    </iaixsl:if>
<!-- (prepaid__buttons, 60dd8f7ecd73b7.75367071.12)-->
			<section id="prepaid_buttons" class="prepaid_buttons d-flex flex-wrap">
				<h2 class="orderdetails_label"><span>iai_i18n:[WmFtw7N3aWVuaWUgeiBkbmlh] <iaixsl:value-of select="page/prepaid/details/@datetime"/></span></h2>
				<iaixsl:variable name="prepaidProForma"/>
				<iaixsl:if test="/shop/page/prepaid/documents/document/@type='invoice_proforma' and $prepaidProForma">
					<a class="prepaid_buttons__button --proforma btn --outline --medium mx-2 mb-2">
					<iaixsl:attribute name="title"/>
					<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/prepaid/documents/document[@type='invoice_proforma']/@link"/></iaixsl:attribute></a>
				</iaixsl:if>

				<iaixsl:if test="page/prepaid/editlink/@active = 'y' and not(/shop/page/prepaid/prepaid_history/item[position()=last()]/@express_pay = 'true')">
					<a class="prepaid_buttons__button --edit btn --outline --medium mx-2 mb-2">
					<iaixsl:attribute name="title">iai_i18n:[S2xpa25paiwgYWJ5IHByemVqxZvEhyBkbyBlZHljamkgemFtw7N3aWVuaWE=].</iaixsl:attribute>
					<iaixsl:attribute name="href"><iaixsl:value-of select="page/prepaid/editlink/@link"/></iaixsl:attribute>iai_i18n:[Wm1pZcWEIHphbcOzd2llbmll]</a>
				</iaixsl:if>

				<iaixsl:if test="/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action">
					<a class="prepaid_buttons__button --opinions btn --outline --medium mx-2 mb-2" target="_blank">
						<iaixsl:attribute name="title">iai_i18n:[T2NlxYQgbmFzeiBza2xlcCE=]</iaixsl:attribute>
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action"/></iaixsl:attribute>
						iai_i18n:[T2NlxYQgbmFzeiBza2xlcCE=]
					</a>
				</iaixsl:if>

				<iaixsl:if test="page/prepaid/confirmlink/@link">
					<a class="prepaid_buttons__button --resend btn --outline --medium mx-2 mb-2">
						<iaixsl:attribute name="title">iai_i18n:[UG9uw7N3IHd5c3nFgmvEmSBsaW5rdSBwb3R3aWVyZHphasSFY2VnbyB6YW3Ds3dpZW5pZSBuYSBza3J6eW5rxJkgZS1tYWls]</iaixsl:attribute>
						<iaixsl:attribute name="href"><iaixsl:value-of select="page/prepaid/confirmlink/@link"/></iaixsl:attribute>
						iai_i18n:[UG90d2llcmTFuiBwb25vd25pZSBlLW1haWxlbQ==]
					</a>
				</iaixsl:if>

				<iaixsl:if test="(page/prepaid/cancellink/@active='y') and not(page/prepaid/order/@payment_paid) and not(/shop/page/prepaid/prepaid_history/item[position()=last()]/@express_pay = 'true')">
					<a class="prepaid_buttons__button --cancel btn --outline --medium mx-2 mb-2">
						<iaixsl:attribute name="onclick">return confirm(&apos;iai_i18n:[QW51bG93YW5pZSB6YW3Ds3dpZW5pYSBqZXN0IGN6eW5ub8WbY2nEhSBuaWVvZHdyYWNhbG7EhS4gQWJ5IGtvbnR5bnVvd2HEhyB3Y2nFm25paiBwcnp5Y2lzayBPSw==].&apos;)</iaixsl:attribute>
						<iaixsl:attribute name="title">iai_i18n:[QW51bG93YW5pZSB6YW3Ds3dpZW5pYQ==]</iaixsl:attribute>
						<iaixsl:attribute name="href"><iaixsl:value-of select="page/prepaid/cancellink/@link"/></iaixsl:attribute>
						iai_i18n:[QW51bHVqIHphbcOzd2llbmll]
					</a>
				</iaixsl:if>
			</section>
		
				</main>
			</iaixsl:if>
		</div>
	</div>

	
	<iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'footer')">
		<footer>
			<iaixsl:attribute name="class">max-width-1200</iaixsl:attribute>
			<!-- (menu_tree4, 60dd8e8e533ec5.56720270.16)-->
	
	<iaixsl:variable name="stretchColumns">true</iaixsl:variable>
	<iaixsl:variable name="footerBaseAriaHeader">iai_i18n:[TmFnxYLDs3dlayBzdG9wa2k=]: </iaixsl:variable>
	<iaixsl:variable name="footerBaseAriaLabel">iai_i18n:[RWxlbWVudCBzdG9wa2k=]: </iaixsl:variable>

	<nav id="footer_links" data-stretch-columns="{$stretchColumns}">
		<iaixsl:attribute name="aria-label">iai_i18n:[TWVudSB6IGxpbmthbWkgdyBzdG9wY2U=]</iaixsl:attribute>
		
		<ul id="menu_orders" class="footer_links">
			<li>
				<a id="menu_orders_header" class="footer_tab__header footer_links_label" aria-controls="menu_orders_content" aria-expanded="true" href="{/shop/action/clientOrders/@url}">
					<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaHeader"/>iai_i18n:[WmFtw7N3aWVuaWE=]</iaixsl:attribute>
					iai_i18n:[WmFtw7N3aWVuaWE=]
				</a>

				<ul id="menu_orders_content" class="footer_links_sub" aria-hidden="false" aria-labelledby="menu_orders_header">
					<li id="order_status" class="menu_orders_item">
						<a href="{/shop/action/orderOpen/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[U3RhdHVzIHphbcOzd2llbmlh]</iaixsl:attribute>
							iai_i18n:[U3RhdHVzIHphbcOzd2llbmlh]
						</a>
					</li>
					<li id="order_status2" class="menu_orders_item">
						<a href="{/shop/action/orderOpen/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[xZpsZWR6ZW5pZSBwcnplc3nFgmtp]</iaixsl:attribute>
							iai_i18n:[xZpsZWR6ZW5pZSBwcnplc3nFgmtp]
						</a>
					</li>
					<li id="order_rma" class="menu_orders_item">
						<a href="{/shop/action/addRma/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[Q2hjxJkgemFyZWtsYW1vd2HEhyBwcm9kdWt0]</iaixsl:attribute>
							iai_i18n:[Q2hjxJkgemFyZWtsYW1vd2HEhyBwcm9kdWt0]
						</a>
					</li>
					<li id="order_returns" class="menu_orders_item">
						<a href="{/shop/action/addReturn/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[Q2hjxJkgendyw7NjacSHIHByb2R1a3Q=]</iaixsl:attribute>
							iai_i18n:[Q2hjxJkgendyw7NjacSHIHByb2R1a3Q=]
						</a>
					</li>
					<li id="order_exchange" class="menu_orders_item">
						<a href="{/shop/action/returnExchangeLink/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[Q2hjxJkgd3ltaWVuacSHIHRvd2Fy]</iaixsl:attribute>
							iai_i18n:[Q2hjxJkgd3ltaWVuacSHIHRvd2Fy]
						</a>
					</li>
					<li id="order_contact" class="menu_orders_item">
						<a href="{/shop/contact/link/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[S29udGFrdA==]</iaixsl:attribute>
							iai_i18n:[S29udGFrdA==]
						</a>
					</li>
				</ul>
			</li>
		</ul>
		
		<ul id="menu_account" class="footer_links">
			<li>
				<a id="menu_account_header" class="footer_tab__header footer_links_label" aria-controls="menu_account_content" aria-expanded="false" href="{/shop/action/login/@url}">
					<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaHeader"/>iai_i18n:[S29udG8=]</iaixsl:attribute>
					iai_i18n:[S29udG8=]
				</a>

				<ul id="menu_account_content" class="footer_links_sub" aria-hidden="true" aria-labelledby="menu_account_header">
					<iaixsl:choose>
						<iaixsl:when test="basket/@login">
							<li id="account_register" class="menu_account_item">
								<a href="{/shop/action/loginEdit/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[VHdvamUgZGFuZQ==]</iaixsl:attribute>
									iai_i18n:[VHdvamUgZGFuZQ==]
								</a>
							</li>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:for-each select="/shop/action/registration_options/wholesale">
								<li id="account_register_wholesale" class="menu_account_item">
									<a href="{@registration_url}">
										<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[WmFyZWplc3RydWogc2nEmSBqYWtvIGh1cnRvd25paw==]</iaixsl:attribute>
										iai_i18n:[WmFyZWplc3RydWogc2nEmSBqYWtvIGh1cnRvd25paw==]
									</a>
								</li>
							</iaixsl:for-each>
							<iaixsl:for-each select="/shop/action/registration_options/retail">
								<li id="account_register_retail" class="menu_account_item">
									<a href="{@registration_url}">
										<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[WmFyZWplc3RydWogc2nEmQ==]</iaixsl:attribute>
										iai_i18n:[WmFyZWplc3RydWogc2nEmQ==]
									</a>
								</li>
							</iaixsl:for-each>
						</iaixsl:otherwise>
					</iaixsl:choose>
					<li id="account_basket" class="menu_account_item">
						<a href="{/shop/action/basket/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[S29zenlr]</iaixsl:attribute>
							iai_i18n:[S29zenlr]
						</a>
					</li>
					<li id="account_observed" class="menu_account_item">
						<a href="{/shop/action/shoppinglist/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[TGlzdHkgemFrdXBvd2U=]</iaixsl:attribute>
							iai_i18n:[TGlzdHkgemFrdXBvd2U=]
						</a>
					</li>
					<li id="account_boughts" class="menu_account_item">
						<a href="{/shop/action/productsBought/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[TGlzdGEgemFrdXBpb255Y2ggcHJvZHVrdMOzdw==]</iaixsl:attribute>
							iai_i18n:[TGlzdGEgemFrdXBpb255Y2ggcHJvZHVrdMOzdw==]
						</a>
					</li>
					<li id="account_history" class="menu_account_item">
						<a href="{/shop/action/clientOrders/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[SGlzdG9yaWEgdHJhbnNha2NqaQ==]</iaixsl:attribute>
							iai_i18n:[SGlzdG9yaWEgdHJhbnNha2NqaQ==]
						</a>
					</li>
					<li id="account_rebates" class="menu_account_item">
						<a href="{/shop/action/clientRebate/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[TW9qZSByYWJhdHk=]</iaixsl:attribute>
							iai_i18n:[TW9qZSByYWJhdHk=]
						</a>
					</li>
					<li id="account_newsletter" class="menu_account_item">
						<a href="{/shop/action/newsletter/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[TmV3c2xldHRlcg==]</iaixsl:attribute>
							iai_i18n:[TmV3c2xldHRlcg==]
						</a>
					</li>
				</ul>
			</li>
		</ul>

		
		<iaixsl:if test="/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y'">

			<ul id="menu_regulations" class="footer_links">
				<li>
					<a id="menu_regulations_header" class="footer_tab__header footer_links_label" aria-controls="menu_regulations_content" aria-expanded="false" href="#menu_regulations_content">
						<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaHeader"/>iai_i18n:[UmVndWxhbWlueQ==]</iaixsl:attribute>
						iai_i18n:[UmVndWxhbWlueQ==]
					</a>

					<ul id="menu_regulations_content" class="footer_links_sub" aria-hidden="true" aria-labelledby="menu_regulations_header">
						<iaixsl:if test="/shop/action/shop_information/@order_link_active='y' and not(/shop/action/shop_information/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/shop_information/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[SW5mb3JtYWNqZSBvIHNrbGVwaWU=]</iaixsl:attribute>
									iai_i18n:[SW5mb3JtYWNqZSBvIHNrbGVwaWU=]
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/action/shipping_cost/@order_link_active='y' and not(/shop/action/shipping_cost/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/shipping_cost/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[V3lzecWCa2E=]</iaixsl:attribute>
									iai_i18n:[V3lzecWCa2E=]
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/action/payment_methods/@order_link_active='y' and not(/shop/action/payment_methods/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/payment_methods/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[U3Bvc29ieSBwxYJhdG5vxZtjaSBpIHByb3dpempl]</iaixsl:attribute>
									iai_i18n:[U3Bvc29ieSBwxYJhdG5vxZtjaSBpIHByb3dpempl]
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/action/terms/@order_link_active='y' and not(/shop/action/terms/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/terms/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[UmVndWxhbWlu]</iaixsl:attribute>
									iai_i18n:[UmVndWxhbWlu]
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/action/private_policy/@order_link_active='y' and not(/shop/action/private_policy/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/private_policy/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[UG9saXR5a2EgcHJ5d2F0bm/Fm2Np]</iaixsl:attribute>
									iai_i18n:[UG9saXR5a2EgcHJ5d2F0bm/Fm2Np]
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/action/order_cancel/@order_link_active='y' and not(/shop/action/order_cancel/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/order_cancel/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[T2RzdMSFcGllbmllIG9kIHVtb3d5]</iaixsl:attribute>
									iai_i18n:[T2RzdMSFcGllbmllIG9kIHVtb3d5]
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/cookies_consent/@value = 'activeAdvanced'"> 
							<li class="menu_regulations_item">
								<a id="manageCookies" class="manage_cookies" href="#manageCookies">
								  <iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>iai_i18n:[WmFyesSFZHphaiBwbGlrYW1pIGNvb2tpZQ==]</iaixsl:attribute>
								  iai_i18n:[WmFyesSFZHphaiBwbGlrYW1pIGNvb2tpZQ==]
								  </a>
							</li>
						</iaixsl:if> 
					</ul>
				</li>
			</ul>
		</iaixsl:if>


		
		<iaixsl:if test="/shop/navigation4/item">
			<iaixsl:for-each select="/shop/navigation4/item">
				<iaixsl:variable name="ElementID">links_footer_<iaixsl:value-of select="position()"/></iaixsl:variable>
				<iaixsl:variable name="ElementAriaControls"><iaixsl:value-of select="$ElementID"/>_content</iaixsl:variable>

				<ul id="{$ElementID}" class="footer_links">
					<li>
						<a id="{$ElementID}_header" href="#{$ElementID}" target="{@target}" title="{@name}" class="footer_tab__header footer_links_label" data-gfx-enabled="{boolean(@gfx)}" data-hide-arrow="{count(item) &lt; 1}">
							<iaixsl:if test="item">
								<iaixsl:attribute name="aria-controls"><iaixsl:value-of select="$ElementAriaControls"/></iaixsl:attribute>
								<iaixsl:attribute name="aria-expanded">false</iaixsl:attribute>
								<iaixsl:attribute name="href">#<iaixsl:value-of select="$ElementID"/>_content</iaixsl:attribute>
							</iaixsl:if>
							<iaixsl:if test="@link">
								<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
							</iaixsl:if>
							<iaixsl:if test="@gfx">
								<img src="{@gfx}" alt="{@name}">
									<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
									<iaixsl:if test="@gfx_onmouseover">
										<iaixsl:attribute name="data-onmouseover"><iaixsl:value-of disable-output-escaping="yes" select="@gfx_onmouseover"/></iaixsl:attribute>
									</iaixsl:if>
								</img>
								<span class="d-none footer_links_label_name"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
							</iaixsl:if>
							<iaixsl:if test="not(@gfx)">
								<span><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
							</iaixsl:if>
						</a>

						<iaixsl:if test="item">
							<ul id="{$ElementID}_content" class="footer_links_sub" aria-hidden="true" aria-labelledby="{$ElementID}_header">
								<iaixsl:for-each select="item">
									<li class="{$ElementID}_item">
										<iaixsl:choose>
											<iaixsl:when test="@link">
												<a href="{@link}" target="{@target}" title="{@name}" data-gfx-enabled="{boolean(@gfx)}">
													<iaixsl:if test="@gfx">
														<img src="{@gfx}" alt="{@name}">
															<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
															<iaixsl:if test="@gfx_onmouseover">
																<iaixsl:attribute name="data-onmouseover"><iaixsl:value-of disable-output-escaping="yes" select="@gfx_onmouseover"/></iaixsl:attribute>
															</iaixsl:if>
														</img>
														<span class="d-none footer_links_item_name"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
													</iaixsl:if>

													<iaixsl:if test="not(@gfx)">
														<span><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
													</iaixsl:if>
												</a>
											</iaixsl:when>

											<iaixsl:otherwise>
												<span title="{@name}" data-gfx-enabled="{boolean(@gfx)}">
													<iaixsl:if test="@gfx">
														<img src="{@gfx}" alt="{@name}">
															<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
															<iaixsl:if test="@gfx_onmouseover">
																<iaixsl:attribute name="data-onmouseover"><iaixsl:value-of disable-output-escaping="yes" select="@gfx_onmouseover"/></iaixsl:attribute>
															</iaixsl:if>
														</img>
														<span class="d-none footer_links_item_name"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
													</iaixsl:if>

													<iaixsl:if test="not(@gfx)">
														<span><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
													</iaixsl:if>
												</span>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</li>
								</iaixsl:for-each>
							</ul>
						</iaixsl:if>
					</li>
				</ul>
			</iaixsl:for-each>

			<iaixsl:if test="/shop/opinions/service or /shop/insurances/service">
				<iaixsl:if test="/shop/insurances/service">
					<ul id="menu_insurances" class="col-md-6 col-12 mb-4">
						<iaixsl:for-each select="/shop/insurances/service">
							<li class="menu_insurances_item">
								<iaixsl:value-of disable-output-escaping="yes" select="sealbox_html"/>
							</li>
						</iaixsl:for-each>
					</ul>
				</iaixsl:if>
			</iaixsl:if>
		</iaixsl:if>
	</nav>
<!-- (menu_contact, 614c5cf21f7b08.81498360.9)-->
	<div id="menu_contact" class="container">
		<ul class="menu_contact__items">
			<li class="contact_type_header">
				<a href="contact.php">
					<iaixsl:if test="/shop/action/contact/@url">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/contact/@url"/></iaixsl:attribute>
					</iaixsl:if>

					iai_i18n:[S29udGFrdA==]
				</a>
			</li>
			<iaixsl:for-each select="/shop/contact/contact_nodes/node[@type='phone'][1]">
				<li class="contact_type_phone">
					<iaixsl:choose>
						<iaixsl:when test="@link">
							<a href="{@link}"><iaixsl:value-of select="@value"/></a>
						</iaixsl:when>
						<iaixsl:otherwise>
							<span><iaixsl:value-of select="@value"/></span>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</li>
			</iaixsl:for-each>

			<iaixsl:for-each select="/shop/contact/contact_nodes/node[@type='text'][1]">
				<li class="contact_type_text">
					<span><iaixsl:value-of select="@value"/></span>
				</li>
			</iaixsl:for-each>

			<iaixsl:for-each select="/shop/contact/contact_nodes/node[@type='mail'][1]">
				<li class="contact_type_mail">
					<iaixsl:choose>
						<iaixsl:when test="@link">
							<a href="{@link}"><iaixsl:value-of select="@value"/></a>
						</iaixsl:when>
						<iaixsl:otherwise>
							<span><iaixsl:value-of select="@value"/></span>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</li>
			</iaixsl:for-each>

			<li class="contact_type_adress">
				<span class="shopshortname">
					<iaixsl:value-of select="contact/owner/@shopshortname"/>
					<span>, </span>
				</span>
				<span class="adress_street">
					<iaixsl:value-of select="contact/adress/@street"/>
					<span>, </span>
				</span>
				<span class="adress_zipcode">
					<iaixsl:value-of select="contact/adress/@zipcode"/>
					<span class="n55931_city"><iaixsl:text> </iaixsl:text><iaixsl:value-of select="contact/adress/@city"/></span>
				</span>
			</li>
		</ul>
	</div>

	<iaixsl:if test="/shop/iai/@button_src or ((/shop/page/@price_type and not($priceTypeVat = '')) or /shop/page/@customs_duty_required = 'y')">
		<div class="footer_settings container">
			<iaixsl:if test="(/shop/page/@price_type and not($priceTypeVat = '')) or /shop/page/@customs_duty_required = 'y'">
				<div id="price_info" class="footer_settings__price_info price_info">
					<iaixsl:if test="not($priceTypeVat = '')">
						<span class="price_info__text --type">
							<iaixsl:choose>
								<iaixsl:when test="/shop/page/@price_type = 'net'">
									iai_i18n:[VyBza2xlcGllIHByZXplbnR1amVteSBjZW55IG5ldHRvIChiZXogVkFUKQ==].
								</iaixsl:when>
								<iaixsl:otherwise>
									iai_i18n:[VyBza2xlcGllIHByZXplbnR1amVteSBjZW55IGJydXR0byAoeiBWQVQp].
								</iaixsl:otherwise>
							</iaixsl:choose>
						</span>
						<iaixsl:if test="/shop/page/@price_type = 'gross' and /shop/page/@tax_region_name">
							<span class="price_info__text --region">iai_i18n:[U3Rhd2tpIFZBVCBkbGEga29uc3VtZW50w7N3IHoga3JhanU=]: <span class="price_info__region"><iaixsl:value-of select="/shop/page/@tax_region_name"/></span>. </span>
						</iaixsl:if>
					</iaixsl:if>
					<iaixsl:if test="/shop/page/@customs_duty_required = 'y'">
						<span class="price_info__text --customs">iai_i18n:[RG8gcG9kYW55Y2ggY2VuIG5hbGXFvHkgZG9saWN6ecSHIGPFgm8=]. </span>
					</iaixsl:if>
				</div>
			</iaixsl:if>
			<iaixsl:if test="/shop/iai/@button_src">
				<div class="footer_settings__idosell idosell" id="idosell_logo">
					<iaixsl:choose>
						<iaixsl:when test="/shop/iai/@is_mobile_application = 'yes'">
							<span class="idosell__logo">
								<img class="idosell__img" src="{/shop/iai/@button_src}" loading="lazy">
								  <iaixsl:choose>
								    <iaixsl:when test="/shop/@trust_level = '1'">
								      <iaixsl:attribute name="alt">iai_i18n:[V3lyw7PFvG5pZW5pZSBkbGEgbmFqbGVwc3p5Y2ggc2tsZXDDs3cgaW50ZXJuZXRvd3ljaCBJZG9TZWxs]</iaixsl:attribute>
								    </iaixsl:when>
						        <iaixsl:otherwise>
						          <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/iai/@button_text"/></iaixsl:attribute>
						        </iaixsl:otherwise>
        					</iaixsl:choose>
        				</img>
							</span>
						</iaixsl:when>
						<iaixsl:otherwise>
							<a class="idosell__logo --link" target="_blank" href="{/shop/iai/@button_link}" title="{/shop/iai/@button_text}">
								<iaixsl:if test="/shop/iai/@button_target">
									<iaixsl:attribute name="target"><iaixsl:value-of select="/shop/iai/@button_target"/></iaixsl:attribute>
								</iaixsl:if>

								<img class="idosell__img" src="{/shop/iai/@button_src}" loading="lazy">
								  <iaixsl:choose>
								    <iaixsl:when test="/shop/@trust_level = '1'">
								      <iaixsl:attribute name="alt">iai_i18n:[V3lyw7PFvG5pZW5pZSBkbGEgbmFqbGVwc3p5Y2ggc2tsZXDDs3cgaW50ZXJuZXRvd3ljaCBJZG9TZWxs]</iaixsl:attribute>
								    </iaixsl:when>
						        <iaixsl:otherwise>
						          <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/iai/@button_text"/></iaixsl:attribute>
						        </iaixsl:otherwise>
        					</iaixsl:choose>
								</img>
							</a>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</div>
			</iaixsl:if>
		</div>
	</iaixsl:if>
<!-- (menu_footer, 60dd8e790bf551.68543995.3)-->
  <iaixsl:if test="/shop/iai/@button_src"/>
<!-- (bars_bottom, 62e7a60add2960.49498572.3)-->
	<iaixsl:if test="/shop/page/bars/bar[@position = 'bottom']">
		<div class="bars_bottom bars">
			<iaixsl:for-each select="/shop/page/bars/bar[@position = 'bottom']">
				<div class="bars__item">
					<iaixsl:attribute name="id">bar<iaixsl:value-of select="@id"/></iaixsl:attribute>
					<iaixsl:if test="@possibilityToClose = 'true'">
						<iaixsl:attribute name="data-close">true</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:if test="@fixed = 'true'">
						<iaixsl:attribute name="data-fixed">true</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:attribute name="style">--background-color:<iaixsl:value-of select="@backgroundColor"/>;--border-color:<iaixsl:value-of select="@borderColor"/>;--font-color:<iaixsl:value-of select="@fontColor"/>;</iaixsl:attribute>
					<div class="bars__wrapper">
						<div class="bars__content"><iaixsl:value-of disable-output-escaping="yes" select="."/></div>
						<iaixsl:if test="@possibilityToClose = 'true'">
							<a href="#closeBar" class="bars__close">
							  <iaixsl:attribute name="aria-label">iai_i18n:[WmFta25pag==]</iaixsl:attribute>
						  </a>
						</iaixsl:if>
					</div>
				</div>
			</iaixsl:for-each>
		</div>
	</iaixsl:if>
<!-- (menu_tooltip, 60dd8e886840c9.16767093.7)-->
  <iaixsl:if test="(/shop/iai/@is_mobile_application = 'yes')"> 
    <script>app_shop.vars.isMobileApp = true;</script>
  </iaixsl:if>
<!-- (menu_banners2, 60dd8e7eb6d737.92314820.7)-->
	<iaixsl:if test="count(commercial_banner2/link)">
		<section id="menu_banners2" class="container">
			<iaixsl:for-each select="commercial_banner2/link">
				<div class="menu_button_wrapper">
					<iaixsl:choose>
						<iaixsl:when test="not(html)">
							<iaixsl:choose>
								<iaixsl:when test="@href">
								<a target="_self" href="{@href}">
									<iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
										<iaixsl:if test="text"><iaixsl:attribute name="title"><iaixsl:value-of select="text"/></iaixsl:attribute></iaixsl:if>
										<iaixsl:attribute name="aria-label"><iaixsl:choose>
											<iaixsl:when test="text"><iaixsl:value-of select="text"/></iaixsl:when>
											<iaixsl:otherwise>iai_i18n:[T2JyYXplayB3IHNla2NqaSBncmFmaWN6bmVq] 2 - <iaixsl:value-of select="position()"/></iaixsl:otherwise>
										</iaixsl:choose></iaixsl:attribute>
										<iaixsl:choose>
											<iaixsl:when test="image">
												<iaixsl:if test="image/@src">
													<img src="{image/@src}" width="{image/@width}" height="{image/@height}" alt="{text}" loading="lazy"/>
												</iaixsl:if>
											</iaixsl:when>
											<iaixsl:when test="image_desktop or image_tablet or image_mobile">
												<picture>
													<iaixsl:if test="image_desktop/@src">
														<source srcset="{image_desktop/@src}" media="(min-width:979px)" width="{image_desktop/@width}" height="{image_desktop/@height}"/>
													</iaixsl:if>

													<iaixsl:if test="image_tablet/@src">
														<source srcset="{image_tablet/@src}" media="(min-width:757px)" width="{image_tablet/@width}" height="{image_tablet/@height}"/>
													</iaixsl:if>

													<iaixsl:if test="image_mobile/@src">
														<img src="{image_mobile/@src}" width="{image_mobile/@width}" height="{image_mobile/@height}" alt="{text}" loading="lazy"/>
													</iaixsl:if>
												</picture>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:value-of disable-output-escaping="yes" select="text"/>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</a>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:choose>
										<iaixsl:when test="image">
											<iaixsl:if test="image/@src">
												<img src="{image/@src}" width="{image/@width}" height="{image/@height}" alt="{text}" loading="lazy"/>
											</iaixsl:if>
										</iaixsl:when>
										<iaixsl:when test="image_desktop or image_tablet or image_mobile">
											<picture>
												<iaixsl:if test="image_desktop/@src">
													<source srcset="{image_desktop/@src}" media="(min-width:979px)" width="{image_desktop/@width}" height="{image_desktop/@height}"/>
												</iaixsl:if>

												<iaixsl:if test="image_tablet/@src">
													<source srcset="{image_tablet/@src}" media="(min-width:757px)" width="{image_tablet/@width}" height="{image_tablet/@height}"/>
												</iaixsl:if>

												<iaixsl:if test="image_mobile/@src">
													<img src="{image_mobile/@src}" width="{image_mobile/@width}" height="{image_mobile/@height}" alt="{text}" loading="lazy"/>
												</iaixsl:if>
											</picture>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:value-of disable-output-escaping="yes" select="text"/>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:value-of disable-output-escaping="yes" select="html"/>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</div>
			</iaixsl:for-each>
		</section>
	</iaixsl:if>
<!-- (menu_instalment, 60dd8e8af3fa77.78410167.5)-->
	<script>
		const instalmentData = {
			
			currency: &apos;<iaixsl:value-of select="/shop/currency/@name"/>&apos;,
			
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/@type = 'projector'">
					basketCost: parseFloat(<iaixsl:value-of select="/shop/basket/@cost"/>, 10),
				</iaixsl:when>
				<iaixsl:otherwise>
					basketCost: 0,
				</iaixsl:otherwise>
			</iaixsl:choose>
			
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/@type = 'projector'">
					basketCostNet: parseFloat(<iaixsl:value-of select="/shop/basket/@cost_net"/>, 10),
				</iaixsl:when>
				<iaixsl:otherwise>
					basketCostNet: 0,
				</iaixsl:otherwise>
			</iaixsl:choose>
			
			basketCount: parseInt(<iaixsl:value-of select="/shop/basket/@count"/>, 10),
			
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/@type = 'projector'">
					price: parseFloat(<iaixsl:value-of select="/shop/page/projector/product/price/@value"/>, 10),
					priceNet: parseFloat(<iaixsl:value-of select="/shop/page/projector/product/price/@price_net"/>, 10),
				</iaixsl:when>
				<iaixsl:when test="/shop/page/@type = 'basketedit'">
					price: parseFloat(<iaixsl:value-of select="/shop/page/basket-details/summary/money/@to_pay"/>, 10),
					priceNet: parseFloat(<iaixsl:value-of select="/shop/page/basket-details/summary/money/@total_net"/>, 10),
				</iaixsl:when>
				<iaixsl:otherwise>
					price: 0,
					priceNet: 0,
				</iaixsl:otherwise>
			</iaixsl:choose>
		}
	</script>
	<iaixsl:if test="/shop/page/basket-details/summary/payment/instalment"> </iaixsl:if>
	<iaixsl:if test="/shop/page/basket-details/summary/payment/instalment/@price_type"> </iaixsl:if>
	<iaixsl:if test="/shop/page/projector/product/payment/instalment"> </iaixsl:if>
	<iaixsl:if test="/shop/page/projector/product/payment/instalment/@price_type"> </iaixsl:if>
<!-- (menu_structured_data, 60dd8e7d96d3f6.35754398.16)-->

	<iaixsl:variable name="menu_structured_data_hurt"/>
	<iaixsl:variable name="curr_url"><iaixsl:value-of select="/shop/@currurl"/></iaixsl:variable>
	<iaixsl:variable name="url_length"><iaixsl:value-of select="string-length($curr_url)"/></iaixsl:variable>
	<iaixsl:variable name="productLink"><iaixsl:value-of select="substring-after(/shop/page/projector/product/@link, '/')"/></iaixsl:variable>

	<iaixsl:if test="page/@type = 'navigation' or page/@type = 'search' or page/@type = 'projector' or page/@type = 'main'">
		<script type="application/ld+json">
		{
		&quot;@context&quot;: &quot;http://schema.org&quot;,
		&quot;@type&quot;: &quot;Organization&quot;,
		&quot;url&quot;: &quot;<iaixsl:value-of select="/shop/@currurl"/>&quot;,
		&quot;logo&quot;: &quot;<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/mask/top/link/image/@src"/>&quot;
		}
		</script>
	</iaixsl:if>

	<iaixsl:if test="bc/item and (page/@type = 'navigation' or page/@type = 'search' or page/@type = 'projector')">
		<script type="application/ld+json">
		{
			&quot;@context&quot;: &quot;http://schema.org&quot;,
			&quot;@type&quot;: &quot;BreadcrumbList&quot;,
			&quot;itemListElement&quot;: [<iaixsl:for-each select="bc/item">
			{
			&quot;@type&quot;: &quot;ListItem&quot;,
			&quot;position&quot;: <iaixsl:value-of select="position()"/>,
      &quot;item&quot;: {&quot;@id&quot;: &quot;<iaixsl:choose>
				<iaixsl:when test="@hasVisibleUrl='true'"><iaixsl:value-of select="@link"/></iaixsl:when>
				<iaixsl:otherwise><iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/>#</iaixsl:otherwise>
			  </iaixsl:choose>&quot;,
      	&quot;name&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="@title"/></iaixsl:call-template>
			  }
      }<iaixsl:if test="not(position() = last())">,</iaixsl:if>
		</iaixsl:for-each>]
		}
	</script>
	</iaixsl:if>
	<script type="application/ld+json">
		{
		&quot;@context&quot;: &quot;http://schema.org&quot;,
		&quot;@type&quot;: &quot;WebSite&quot;,
		<iaixsl:if test="/shop/@shopname">&quot;name&quot;:&quot;<iaixsl:value-of select="/shop/@shopname"/>&quot;,</iaixsl:if>
		<iaixsl:if test="/shop/@shopshortname">&quot;alternateName&quot;: &quot;<iaixsl:value-of select="/shop/@shopshortname"/>&quot;,</iaixsl:if>
		&quot;url&quot;: &quot;<iaixsl:value-of select="/shop/@currurl"/>&quot;,
		&quot;potentialAction&quot;: {
		&quot;@type&quot;: &quot;SearchAction&quot;,
		&quot;target&quot;: &quot;<iaixsl:value-of select="/shop/@currurl"/>search.php?text={search_term_string}&quot;,
		&quot;query-input&quot;: &quot;required name=search_term_string&quot;
		}
		}
	</script>
	<iaixsl:if test="page/@type = 'projector'">
	<script type="application/ld+json">
		{
		&quot;@context&quot;: &quot;http://schema.org&quot;,
		&quot;@type&quot;: &quot;Product&quot;,
		<iaixsl:if test="page/projector/comments/opinions/opinion">
		&quot;aggregateRating&quot;: {
		&quot;@type&quot;: &quot;AggregateRating&quot;,
		&quot;ratingValue&quot;: &quot;<iaixsl:value-of disable-output-escaping="yes" select="page/projector/comments/@avg"/>&quot;,
		&quot;reviewCount&quot;: &quot;<iaixsl:value-of select="page/projector/comments/@all"/>&quot;
		},
		</iaixsl:if>
		&quot;description&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="normalize-space(page/projector/product/cleardescription)"/></iaixsl:call-template>,
		&quot;name&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="/shop/page/projector/product/name"/></iaixsl:call-template>,
		&quot;productID&quot;: &quot;mpn:<iaixsl:value-of select="page/projector/product/@code"/>&quot;,
		&quot;brand&quot;: {
			&quot;@type&quot;: &quot;Brand&quot;,
			&quot;name&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="page/projector/product/firm/@name"/></iaixsl:call-template>
		},<iaixsl:if test="/shop/page/projector/product/dictionary/items[item/@context_id = 'CONTEXT_COLOR']">
		&quot;color&quot;: [<iaixsl:for-each select="/shop/page/projector/product/dictionary/items[item/@context_id = 'CONTEXT_COLOR']/item/values/value"><iaixsl:if test="not(position() = 1)">,</iaixsl:if>&quot;<iaixsl:value-of select="@value"/>&quot;</iaixsl:for-each>],
		</iaixsl:if>
		&quot;image&quot;: &quot;<iaixsl:if test="not(contains(/shop/page/projector/product/enclosures/images/enclosure/@url, 'http'))"><iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/></iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/enclosures/images/enclosure/@url"/>&quot;
		<iaixsl:if test="((/shop/page/projector/product/versions/version[@id = /shop/page/projector/product/@id]/size/price/@value != 0 or /shop/basket/@wholesaler = 'true') and $menu_structured_data_hurt != '') or not($menu_structured_data_hurt != '')">,
		&quot;offers&quot;: [<iaixsl:variable name="isSizesPricesSet"><iaixsl:choose><iaixsl:when test="(not(count(/shop/page/projector/product/sizes/size) = count(/shop/page/projector/product/sizes/size/price[@value = /shop/page/projector/product/sizes/prices/@price_unit_sellby]))) and not(count(/shop/page/projector/product/sizes/size) = 1)">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:for-each select="page/projector/product/sizes/size">
			<iaixsl:if test="not(position() = 1)">,</iaixsl:if>
			{
			&quot;@type&quot;: &quot;Offer&quot;,
			&quot;availability&quot;: &quot;<iaixsl:choose><iaixsl:when test="availability[(@status = 'enable') or (@status = 'order')]">http://schema.org/InStock</iaixsl:when><iaixsl:otherwise>http://schema.org/OutOfStock</iaixsl:otherwise></iaixsl:choose>&quot;,
			<iaixsl:choose>
				<iaixsl:when test="price/@maxprice">
					&quot;priceSpecification&quot;: [
					<iaixsl:if test="price/@srp">
						{
							&quot;@type&quot;: &quot;UnitPriceSpecification&quot;,
							&quot;priceType&quot;: &quot;https://schema.org/MSRP&quot;,
							&quot;price&quot;: &quot;<iaixsl:value-of select="price/@srp"/>&quot;,
              &quot;priceCurrency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;
						},
					</iaixsl:if>
					{
					&quot;@type&quot;: &quot;UnitPriceSpecification&quot;,
					&quot;priceType&quot;: &quot;https://schema.org/ListPrice&quot;,
					&quot;price&quot;: &quot;<iaixsl:choose><iaixsl:when test="price/@maxprice_unit"><iaixsl:value-of select="price/@maxprice_unit"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@maxprice"/></iaixsl:otherwise></iaixsl:choose>&quot;,
          &quot;priceCurrency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;
					},
					{
					&quot;@type&quot;: &quot;UnitPriceSpecification&quot;,
					&quot;priceType&quot;: &quot;https://schema.org/SalePrice&quot;,
					<iaixsl:if test="price/@promotiontilldate or price/@discounttilldate or price/@distinguishedtilldate or price/@specialtilldate">
						&quot;validThrough&quot;: &quot;<iaixsl:choose><iaixsl:when test="price/@promotiontilldate"><iaixsl:value-of select="price/@promotiontilldate"/></iaixsl:when><iaixsl:when test="price/@discounttilldate"><iaixsl:value-of select="price/@discounttilldate"/></iaixsl:when><iaixsl:when test="price/@distinguishedtilldate"><iaixsl:value-of select="price/@distinguishedtilldate"/></iaixsl:when><iaixsl:when test="price/@specialtilldate"><iaixsl:value-of select="price/@specialtilldate"/></iaixsl:when></iaixsl:choose>&quot;,
					</iaixsl:if>
					&quot;price&quot;: &quot;<iaixsl:choose><iaixsl:when test="($isSizesPricesSet = 'true') and price/@value"><iaixsl:choose><iaixsl:when test="price/@price_unit"><iaixsl:value-of select="price/@price_unit"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@value"/></iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="../prices/@price_unit_sellby"/></iaixsl:otherwise></iaixsl:choose>&quot;,
          &quot;priceCurrency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;
					}
					],
          
				</iaixsl:when>
				<iaixsl:otherwise>
					&quot;price&quot;: &quot;<iaixsl:choose><iaixsl:when test="($isSizesPricesSet = 'true') and price/@value"><iaixsl:choose><iaixsl:when test="price/@price_unit"><iaixsl:value-of select="price/@price_unit"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@value"/></iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="../prices/@price_unit_sellby"/></iaixsl:otherwise></iaixsl:choose>&quot;,
          &quot;priceCurrency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;,
				</iaixsl:otherwise>
			</iaixsl:choose>
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/projector/product/price/@promotiontilldate">
					
				&quot;priceValidUntil&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/price/@promotiontilldate"/>&quot;,
			
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/product/price/@discounttilldate">
					
				&quot;priceValidUntil&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/price/@discounttilldate"/>&quot;,
			
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/product/price/@distinguishedtilldate">
					
				&quot;priceValidUntil&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/price/@distinguishedtilldate"/>&quot;,
			
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/product/price/@specialtilldate">
					
				&quot;priceValidUntil&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/price/@specialtilldate"/>&quot;,
			
				</iaixsl:when>
			</iaixsl:choose>

			
				&quot;hasMerchantReturnPolicy&quot;: {
					&quot;@type&quot;: &quot;MerchantReturnPolicy&quot;,
			
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/projector/returns_config/@active = 'n'">
					
					&quot;returnPolicyCategory&quot;: &quot;https://schema.org/MerchantReturnNotPermitted&quot;,
			
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/returns_config/@days_to_return &gt; 0">
					
					&quot;returnPolicyCategory&quot;: &quot;https://schema.org/MerchantReturnFiniteReturnWindow&quot;,
			
				</iaixsl:when>
				<iaixsl:otherwise>
					
					&quot;returnPolicyCategory&quot;: &quot;https://schema.org/MerchantReturnUnlimitedWindow&quot;,
			
				</iaixsl:otherwise>
			</iaixsl:choose>
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/projector/returns_config/@return_only_cashback = 'y'">
					
					&quot;refundType&quot;: &quot;https://schema.org/FullRefund&quot;,
			
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/returns_config/@return_only_cashback = 'n'">
					
					&quot;refundType&quot;: &quot;https://schema.org/ExchangeRefund&quot;,
			
				</iaixsl:when>
			</iaixsl:choose>
			
					&quot;merchantReturnDays&quot;: <iaixsl:value-of select="/shop/page/projector/returns_config/@days_to_return"/>,

			<iaixsl:if test="/shop/page/projector/returns_config/@returns_shop_shipping_active = 'y'">
				<iaixsl:choose>
					<iaixsl:when test="/shop/page/projector/returns_config/@returns_shop_shipping_cost = 'client'">
						
					&quot;returnFees&quot;: &quot;https://schema.org/ReturnShippingFees&quot;,
					</iaixsl:when>
					<iaixsl:when test="/shop/page/projector/returns_config/@returns_shop_shipping_cost = 'shop'">
						
					&quot;returnFees&quot;: &quot;https://schema.org/FreeReturn&quot;,
					</iaixsl:when>
					<iaixsl:when test="/shop/page/projector/returns_config/@returns_shop_shipping_cost = 'shopBalance'">
						
					&quot;returnFees&quot;: &quot;https://schema.org/FreeReturn&quot;,
					&quot;restockingFee&quot;: &quot;Koszt zwrotu potrącany ze zwracanej kwoty (np. cashback, saldo klienta)&quot;,
					</iaixsl:when>
					<iaixsl:when test="/shop/page/projector/returns_config/@returns_shop_shipping_cost = 'shopAndClient'">
						
					&quot;returnFees&quot;: &quot;https://schema.org/ReturnShippingFees&quot;,
					</iaixsl:when>
				</iaixsl:choose>
			</iaixsl:if>
			
					&quot;returnMethod&quot;: &quot;https://schema.org/ReturnByMail&quot;,
					&quot;applicableCountry&quot;: &quot;<iaixsl:value-of select="/shop/@geoip_country_code"/>&quot;
				},
				&quot;shippingDetails&quot;: {
					&quot;@type&quot;: &quot;OfferShippingDetails&quot;,
					&quot;shippingRate&quot;: {
						&quot;@type&quot;: &quot;MonetaryAmount&quot;,
						&quot;value&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/sizes/size/delivery/@shipping"/>&quot;,
						&quot;currency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;
					},
					&quot;shippingDestination&quot;: {
						&quot;@type&quot;: &quot;DefinedRegion&quot;,
						&quot;addressCountry&quot;: &quot;<iaixsl:value-of select="/shop/@geoip_country_code"/>&quot;
					}
			<iaixsl:if test="/shop/page/projector/product/sizes/size/delivery/@limitfree &gt; 0">
				,
					&quot;freeShippingThreshold&quot;: {
						&quot;@type&quot;: &quot;MonetaryAmount&quot;,
						&quot;value&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/sizes/size/delivery/@limitfree"/>&quot;,
						&quot;currency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;
					}
			</iaixsl:if>
			
				},

			
			&quot;eligibleQuantity&quot;: {
			&quot;value&quot;:  &quot;<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/>&quot;,
      <iaixsl:if test="/shop/page/projector/product/order_quantity_range/min_quantity_per_order">
        
        &quot;minValue&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/order_quantity_range/min_quantity_per_order"/>&quot;,
      </iaixsl:if>
			&quot;unitCode&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_single"/>&quot;,
			&quot;@type&quot;: [
			&quot;QuantitativeValue&quot;
			]
			},
			&quot;url&quot;: &quot;<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/page/projector/product/@link"/><iaixsl:if test="/shop/page/projector/product/sizes/size/@type != 'onesize' and /shop/page/projector/product/sizes/size/@type != 'uniw'">?selected_size=<iaixsl:value-of select="@type"/></iaixsl:if>&quot;
			}
			</iaixsl:for-each>
		]</iaixsl:if>
		<iaixsl:if test="page/projector/comments/opinions/opinion">,
			&quot;review&quot;: [
			<iaixsl:for-each select="page/projector/comments/opinions/opinion">
			<iaixsl:if test="not(position() = 1)">,</iaixsl:if>
			{
			&quot;@type&quot;: &quot;Review&quot;,
			&quot;author&quot;: {
				&quot;@type&quot;: &quot;Person&quot;,
				&quot;name&quot;: <iaixsl:choose><iaixsl:when test="@client_name and not(@client_name = '')"><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="@client_name"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="@client"/></iaixsl:call-template></iaixsl:otherwise></iaixsl:choose>
			},
			&quot;description&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="normalize-space(.)"/></iaixsl:call-template>,
			&quot;reviewRating&quot;: {
			&quot;@type&quot;: &quot;Rating&quot;,
			&quot;bestRating&quot;: &quot;5&quot;,
			&quot;ratingValue&quot;: &quot;<iaixsl:value-of select="round(@note)"/>&quot;,
			&quot;worstRating&quot;: &quot;1&quot;
			}
			}
			</iaixsl:for-each>
			]
		</iaixsl:if>
		}

		</script>
	</iaixsl:if>
	<iaixsl:if test="page/@type = 'blog-item'">
		<script type="application/ld+json">
		{
		&quot;@context&quot;: &quot;http://schema.org&quot;,
		&quot;@type&quot;: &quot;NewsArticle&quot;,
		&quot;headline&quot;: &quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/title/text()"/>&quot;,
		&quot;mainEntityOfPage&quot;: &quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/link/@href"/>&quot;,
		&quot;datePublished&quot;: &quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/date/text()"/>&quot;,
		&quot;dateModified&quot;: &quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/date/text()"/>&quot;,
		&quot;image&quot;: {
		&quot;@type&quot;:&quot;ImageObject&quot;,
		&quot;url&quot;:&quot;<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@src"/>&quot;,
		&quot;width&quot;:&quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@width"/>&quot;,
		&quot;height&quot;:&quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@height"/>&quot;
		},
		&quot;description&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="normalize-space(/shop/page/blogitem/description/text())"/></iaixsl:call-template>,
		&quot;author&quot;:{
		&quot;@type&quot;: &quot;Organization&quot;,
		&quot;name&quot;:&quot;<iaixsl:value-of select="/shop/contact/owner/@shopshortname"/>&quot;
		},
		&quot;publisher&quot;:{
		&quot;@type&quot;: &quot;Organization&quot;,
		&quot;name&quot;: &quot;<iaixsl:value-of select="/shop/contact/owner/@shopshortname"/>&quot;,
		&quot;logo&quot;: {
		&quot;@type&quot;:&quot;ImageObject&quot;,
		&quot;url&quot;:&quot;<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/mask/top/link/image/@src"/>&quot;,
		&quot;width&quot;:&quot;<iaixsl:value-of select="/shop/mask/top/link/image/@width"/>&quot;,
		&quot;height&quot;:&quot;<iaixsl:value-of select="/shop/mask/top/link/image/@height"/>&quot;
		}
		}
		}
		</script>
	</iaixsl:if>

<!-- (menu_notice, 60dd8e88d59467.28079152.5)-->
	<iaixsl:if test="/shop/order_edit/@order_number">
		<iaixsl:if test="/shop/action_alert or /shop/page/projector/product/exchange/@exchange_id or (/shop/page/@type = 'order2') or (/shop/page/@type = 'order-wrappers')">
			<div id="menu_notice" class="menu_notice">
				<h2>iai_i18n:[RWR5Y2phIHphbcOzd2llbmlh]</h2>
				<p>
					<iaixsl:choose>
						<iaixsl:when test="/shop/action_alert/@type = 'order_edit'">
							iai_i18n:[SmVzdGXFmyB3IHRyeWJpZSBlZHljamkgesWCb8W8b25lZ28gemFtw7N3aWVuaWEuIEJ5IHptaWFueSB6b3N0YcWCeSB6YXN0b3Nvd2FuZSBtdXNpc3ogcHJ6ZWrFm8SHIHByemV6IHdzenlzdGtpZSBrcm9raSBza8WCYWRhbmlhIHphbcOzd2llbmlhLiBKZcW8ZWxpIG5pZSBwcnplamR6aWVzeiBwcnpleiB3c3p5c3RraWUga3Jva2kgc2vFgmFkYW5pYSB6YW3Ds3dpZW5pYSB0byB3Y3plxZtuaWVqIHrFgm/FvG9uZSB6YW3Ds3dpZW5pZSBuaWUgem9zdGFuaWUgem1pZW5pb25l].
						</iaixsl:when>
						<iaixsl:when test="/shop/action_alert/@type = 'order_edit_auction'">
							iai_i18n:[SmVzdGXFmyB3IHRyeWJpZSBlZHljamkgemFtw7N3aWVuaWEgesWCb8W8b25lZ28gcHJ6ZXogc3lzdGVtIGF1a2N5am55LiBNb8W8ZXN6IHd5bWllbmnEhyBwcm9kdWt0IG5hIGlubnkgdyB0ZWogc2FtZWogZ3J1cGllIChucC4gaW5ueSBrb2xvciBsdWIgcm96bWlhcikgYsSFZMW6IGRvZGHEhyBrb2xlam5lIChkb3dvbG5lKSBwcm9kdWt0eSB3IGNlbHUgcG93acSZa3N6ZW5pYSB6YW3Ds3dpZW5pYS4gQnkgem1pYW55IHpvc3RhxYJ5IHphc3Rvc293YW5lIG11c2lzeiBwcnplasWbxIcgcHJ6ZXogd3N6eXN0a2llIGtyb2tpIHNrxYJhZGFuaWEgemFtw7N3aWVuaWE=].
						</iaixsl:when>
						<iaixsl:when test="/shop/action_alert/@type = 'order1'">
							iai_i18n:[SmVzdGXFmyB3IHRyeWJpZSBlZHljamkgesWCb8W8b25lZ28gemFtw7N3aWVuaWEuIFphem5hY3pvbmUgc8SFIHdjemXFm25pZWogd3licmFuZSB1c3Rhd2llbmlhIHd5c3nFgmtpIGkgcMWCYXRub8WbY2kuIE1vxbxlc3ogamUgem1pZW5pxIcuIEJ5IHptaWFueSB6b3N0YcWCeSB6YXN0b3Nvd2FuZSBtdXNpc3ogcHJ6ZWrFm8SHIHByemV6IHdzenlzdGtpZSBrcm9raSBza8WCYWRhbmlhIHphbcOzd2llbmlh].
						</iaixsl:when>
						<iaixsl:when test="/shop/page/@type = 'order2'">
							iai_i18n:[U3ByYXdkxbogY3p5IHphbcOzd2llbmllIHcgb2JlY25laiBwb3N0YWNpIENpIG9kcG93aWFkYS4gSmXFvGVsaSB0YWssIGtsaWtuaWogbmEgcHJ6eWNpc2sgem1pZcWEIHphbcOzd2llbmllIGJ5IHphdHdpZXJkemnEhyB6bWlhbnkgdyB6YW3Ds3dpZW5pdS4gSmXFvGVsaSBuaWUsIHdyw7PEhyBkbyBrb3N6eWthIGkgcG9zdMSZcHVqIGphayBwb3ByemVkbmlv].
						</iaixsl:when>
						<iaixsl:when test="/shop/page/@type = 'order-wrappers'">
							iai_i18n:[VyB0eW0ga3Jva3UgZWR5Y2ppIHphbcOzd2llbmlhIG1vxbxlc3ogd3licmHEhyBpbnRlcmVzdWrEhWNlIENpxJkgb3Bha293YW5pZS4gQnkgem1pYW55IHpvc3RhxYJ5IHphc3Rvc293YW5lIG11c2lzeiBwcnplasWbxIcgcHJ6ZXogd3N6eXN0a2llIGtyb2tpIHNrxYJhZGFuaWEgemFtw7N3aWVuaWE=].
						</iaixsl:when>
						<iaixsl:when test="/shop/action_alert/@type = 'add_basket' or /shop/action_alert/@type = 'change_basket'">
							iai_i18n:[Wm1pZW5pxYJlxZsgemF3YXJ0b8WbxIcga29zenlrYSwgcGFtacSZdGFqIGJ5IHphc3Rvc293YcSHIHRlIHptaWFueSwgbXVzaXN6IHBvbm93bmllIHByemVqxZvEhyBwcnpleiB3c3p5c3RraWUga3Jva2kgc2vFgmFkYW5pYSB6YW3Ds3dpZW5pYQ==].
						</iaixsl:when>
						<iaixsl:when test="/shop/page/projector/product/exchange/@exchange_id">
							iai_i18n:[QWJ5IHd5bWllbmnEhyBwcm9kdWt0IHcga29zenlrdSwgbW/FvGVzeiB3eWJyYcSHIG5wLiBpbm55IGtvbG9yIGx1YiByb3ptaWFyIHRlZ28gc2FtZWdvIHByb2R1a3R1LCBhIHN5c3RlbSBhdXRvbWF0eWN6bmllIHBvZG1pZW5pIGdvIHogcHJvZHVrdGVtIHd5YnJhbnltIG5hIGF1a2NqaQ==].
						</iaixsl:when>
					</iaixsl:choose>
				</p>
			</div>
		</iaixsl:if>
	</iaixsl:if>
<!-- (menu_dynamically_added_content, 60dd8e7a061521.50730639.4)-->
	<script>app_shop.vars.requestUri=<iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="/shop/page/additional_ajax/@request_uri"/></iaixsl:call-template>;app_shop.vars.additionalAjax=&apos;<iaixsl:value-of select="/shop/page/additional_ajax/@additional_ajax"/>&apos;;</script>
	
	<iaixsl:if test="/shop/@menu_dynamically_added_content"> </iaixsl:if>
<!-- (menu_maps, 63764495e0cb08.91568922.4)--><!-- (menu_slider_modules, 6655a6e6f03996.64967288.4)-->






<!-- (hotspots_javascript_css, 66602978a8fbb0.31267540.10)-->



<!-- (jquery, 66868303e83295.79660983.2)-->
		</footer>
	</iaixsl:if>
	<iaixsl:variable name="projector_script_bottom">true</iaixsl:variable>
	<iaixsl:if test="/shop/page/@type = 'main' or /shop/page/@type = 'search' or /shop/page/@type = 'place-order' or /shop/page/@type = 'noproduct' or ($projector_script_bottom and /shop/page/@type = 'projector')">
		<script src="/gfx/translatable/jquery.js.gzip?r=1765442856"></script>
		<iaixsl:choose>
			<iaixsl:when test="/shop/@preview &gt; 0">
				<script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
			</iaixsl:when>
			<iaixsl:otherwise>
				
			</iaixsl:otherwise>
		</iaixsl:choose>

		
		
<iaixsl:choose>
    <iaixsl:when test="/shop/@preview &gt; 0"><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/common_shop.js?r=1765442856</iaixsl:attribute></script></iaixsl:when>
    <iaixsl:otherwise><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/common_shop.js.gzip?r=1765442856</iaixsl:attribute></script></iaixsl:otherwise>
</iaixsl:choose>


		
		<script src="/gfx/translatable/orderdetails_payments.js.gzip?r=1765442856"></script>
	</iaixsl:if>

	
	<script src="/gfx/translatable/envelope.js.gzip?r=1765442856"></script><script src="/gfx/translatable/menu_suggested_shop_for_language.js.gzip?r=1765442856"></script><script src="/gfx/translatable/menu_basket.js.gzip?r=1765442856"></script><script src="/gfx/translatable/hotspots_javascript.js.gzip?r=1765442856"></script><script src="/gfx/translatable/hotspots_slider.js.gzip?r=1765442856"></script><script src="/gfx/translatable/hotspots_add_to_basket.js.gzip?r=1765442856"></script><script src="/gfx/translatable/prepaid_order_products.js.gzip?r=1765442856"></script>

	
	<iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>

	<script>app_shop.runApp();</script>
	
	<iaixsl:if test="/shop/page/seolink_with_language_directory"/>

	<iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
		<iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
	</iaixsl:if>
</iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-backslash"><iaixsl:param name="str" select="."/><iaixsl:choose><iaixsl:when test="contains($str, '\')"><iaixsl:value-of select="concat(substring-before($str, '\'), '\\' )"/><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="substring-after($str, '\')"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape_backslash"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:choose><iaixsl:when test="not($escape_backslash)"><iaixsl:value-of select="$str"/></iaixsl:when><iaixsl:otherwise><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="$str"/></iaixsl:call-template></iaixsl:otherwise></iaixsl:choose></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>