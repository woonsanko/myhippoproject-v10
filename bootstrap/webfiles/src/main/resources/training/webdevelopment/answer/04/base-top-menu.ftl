<#include "../include/imports.ftl">
<#--
  Copyright 2015 Hippo B.V. (http://www.onehippo.com)
  Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
-->

<#-- @ftlvariable name="menu" type="org.hippoecm.hst.core.sitemenu.HstSiteMenu" -->
<#-- @ftlvariable id="editMode" type="java.lang.Boolean"-->
<#if menu??>
  <#if menu.siteMenuItems??>
    <ul class="navigation" id="main-navigation">
      <#list menu.siteMenuItems as item>
        <#if  item.selected || item.expanded>
          <li><a class="activelink" href="<@hst.link link=item.hstLink/>"><span class="label-nav">${item.name?html}</span></a>
          </li>
        <#else>
          <li><a href="<@hst.link link=item.hstLink/>"><span class="label-nav">${item.name?html}</span></a></li>
        </#if>
      </#list>
      <#if editMode>
        <li class="edit-menu-button"><@hst.cmseditmenu menu=menu/></li>
      </#if>
    </ul>
  </#if>
<#else>
  <#if editMode>
    <h5>[Menu Component]</h5>
    <sub>Click to edit Menu</sub>
  </#if>
</#if>

<#--
<nav>
    <ul class="navigation" id="main-navigation">
        <li><a href="index.html" class="activelink"><span class="label-nav">Home</span> </a></li>
        <li><a href="news.html"><span class="label-nav">News</span></a></li>
        <li><a href="blogs.html"><span class="label-nav">Blogs</span></a></li>
        <li><a href="events.html"><span class="label-nav">Events</span></a></li>
        <li><a href="products.html"><span class="label-nav">Products</span></a></li>
        <li><a href="about.html"><span class="label-nav">About</span></a></li>
    </ul>
</nav>
-->


