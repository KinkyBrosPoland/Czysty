<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop">
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
				</iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-backslash"><iaixsl:param name="str" select="."/><iaixsl:choose><iaixsl:when test="contains($str, '\')"><iaixsl:value-of select="concat(substring-before($str, '\'), '\\' )"/><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="substring-after($str, '\')"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape_backslash"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:choose><iaixsl:when test="not($escape_backslash)"><iaixsl:value-of select="$str"/></iaixsl:when><iaixsl:otherwise><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="$str"/></iaixsl:call-template></iaixsl:otherwise></iaixsl:choose></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>