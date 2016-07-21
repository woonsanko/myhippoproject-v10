<#include "../include/imports.ftl">
<#--
  Copyright 2016 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->
<!doctype html>
<html class="no-js" lang="en">
<head>

  <#if hstRequestContext.resolvedSiteMapItem.pageTitle??>
    <title>${hstRequestContext.resolvedSiteMapItem.pageTitle}</title>
  <#else>
    <title>Hippo Go Green - Home</title>
  </#if>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="<@hst.webfile path='/css/bootstrap.css'/>">
  <link rel="stylesheet" href="<@hst.webfile path='/css/font-awesome.css'/>">

  <link href='<@hst.webfile path="/css/style.css"/>' rel='stylesheet' type='text/css'>
  <link href='<@hst.webfile path="/css/responsive.css"/>' rel='stylesheet' type='text/css'>

  <!-- Fonts -->
  <link href="<@hst.webfile path='/fonts/open-sans.css'/>" rel='stylesheet' type='text/css'>
  <link href="<@hst.webfile path='/fonts/raleway.css'/>" rel='stylesheet' type='text/css'>

  <link rel="stylesheet" media="screen" type="text/css" href="<@hst.webfile path='/css/hippo-green.css'/>" />

  <link rel="icon" href="<@hst.webfile path='/images/favicon.ico'/>" type="image/x-icon" />

  <@hst.headContributions xhtml=true categoryExcludes="htmlBodyEnd" />

</head>
<body class="bgpattern-neutral">

<div id="wrapper" class="boxed">
  <div class="top_wrapper">

    <div class="top-bar">
      <div class="container">
        <div class="row">
          <!-- lang navigation -->
          <div class="col-sm-7 langnav">
            <nav>
              <ul class="" id="language">

                <li class="active"><i class="fa fa-ellipsis-h"></i> <span>United States</span>
                  <ul>
                    <li><a href="fr.html">France</a></li>
                  </ul>
                </li>

              </ul>
            </nav>
          </div>
          <div class="col-sm-5" id="top-search">

            <div class="searchbox">
              <form action="search.html" method="get">
                <input type="text" class="searchbox-inputtext" id="searchbox-inputtext" name="query"
                       placeholder="Search"/> <label class="searchbox-icon" for="searchbox-inputtext"></label>
                <input
                    type="submit" class="searchbox-submit" value="Search"/>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Header -->
    <header id="header">
      <div class="container">

        <div class="row header">

          <!-- Logo -->
          <div class="col-xs-2 logo">
            <a href="index.html"><img src="<@hst.webfile path='/images/gogreenlogo2.png'/>" alt="" height="107" /></a>
          </div>
          <!-- //Logo// -->

          <!-- Main navigation -->
          <!-- Navigation File -->
          <div class="col-md-12">

            <!-- Mobile Button Menu -->
            <div class="mobile-menu-button">
              <i class="fa fa-list-ul"></i>
            </div>
            <!-- //Mobile Button Menu// -->

            <@hst.include ref="menu" />

            <!-- Mobile Nav. Container -->
            <ul class="mobile-nav">
              <li class="responsive-searchbox">
                <!-- Responsive Nave -->
                <form action="index.html#" method="get">
                  <input type="text" class="searchbox-inputtext" id="searchbox-inputtext-mobile" name="s"/>
                  <button class="icon-search"></button>
                </form>
                <!-- //Responsive Nave// -->
              </li>
            </ul>
            <!-- //Mobile Nav. Container// -->
          </div>
          <!-- //Main navigation// -->
        </div>
      </div>
    </header>
    <!-- //Header// -->
  </div>

  <!-- body / main -->

  <div class="content-wrapper">
    <div class="top-title-wrapper">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12">
            <div class="page-info">
            </div>
          </div>
        </div>
      </div>
    </div>

    <#-- TODO: Main Content must be shown here. -->
    <@hst.include ref="main" />

  </div>

  <!-- footer -->
  <@hst.include ref="footer" />

</div>

<@hst.headContributions xhtml=true categoryIncludes="htmlBodyEnd" />

</body>
</html>

