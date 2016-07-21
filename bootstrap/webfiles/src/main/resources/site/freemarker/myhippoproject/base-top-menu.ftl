<#include "../include/imports.ftl">

<#-- @ftlvariable name="menu" type="org.hippoecm.hst.core.sitemenu.HstSiteMenu" -->
<#-- @ftlvariable name="editMode" type="java.lang.Boolean"-->
<#if menu??>
  <#if menu.siteMenuItems??>
    <ul class="nav nav-pills">
      <#list menu.siteMenuItems as item>
        <#if  item.selected || item.expanded>
          <li class="active"><a href="<@hst.link link=item.hstLink/>">${item.name?html}</a></li>
        <#else>
          <li><a href="<@hst.link link=item.hstLink/>">${item.name?html}</a></li>
        </#if>
      </#list>
    </ul>
  </#if>
  <@hst.cmseditmenu menu=menu/>
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
