<%@page contentType="text/html; charset=UTF-8" errorPage="errorpage.jsp"%>
<%@taglib uri="regain-search.tld" prefix="search" %>

<html>
  <head>
    <title>regain - <search:msg key="searchFor"/> <search:stats_query/></title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link href="regain.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" language="JavaScript">
      <!--
      function toggleMe(a){
        var e=document.getElementById(a);
        if(!e)return true;
        if(e.style.display=="none"){
          e.style.display="block"
        } else {
          e.style.display="none"
        }
        return true;
      }
      //-->
    </script>
  </head>
  
  <body>
    <search:check noIndexUrl="noindex.jsp" noQueryUrl="searchinput.jsp"/>
    
    <table class="top"><tr>
        <td><img src="img/logo_regain.gif" width="201" height="66"></td>
        <td class="searchTop">
          <%@include file="search_form.jsp" %>
        </td>
    </tr></table>
    
    <table class="content">
      <tr class="headline">
        <td>
          <search:msg key="resultsFor"/> <b><search:stats_query/></b>
        </td>
        <td class="headlineRight">
          <search:msg key="results.part1"/> <b><search:stats_from/></b>-<b><search:stats_to/></b>
          <search:msg key="results.part2"/> <b><search:stats_total/></b>.
          (<b><search:stats_searchtime/></b> <search:msg key="seconds"/>)
          &nbsp;
        </td>
      </tr>
      
      <tr><td colspan="2"> <br/> </td></tr>
      
      <search:list msgNoResults="<tr><td colspan='2'>{msg:noResultsFound}<br/><br/></td></tr>">
        <tr><td colspan="2">
            <search:hit_typeicon imgpath="img/ext"/> <search:hit_link/>
            <span class="hitDetails">
              (<search:msg key="relevance"/>: <search:hit_score/>)<br/>
              <search:hit_field field="summary"/><br/>
              <search:hit_content/>
              <search:hit_path after="<br/>" createLinks="true"/>
              <search:hit_field field="mimetype"/>&nbsp;
              <span class="hitInfo"><search:hit_url beautified="true"/> - <search:hit_size/></span><br/>
            <br/></span>
        </td></tr>
      </search:list>
    </table>
    
    <p class="navigation">
      <search:msg key="resultPage"/>:
      <search:navigation
        targetPage="search.jsp"
        msgBack="<img src='img/back.gif' title='{msg:back}' border='0'/>"
        msgForward="<img src='img/forward.gif' title='{msg:forward}' border='0'/>"/>
    </p>
    
    <br/>
    
    <table class="searchBottom"><tr><td>
          <%@include file="search_form.jsp" %>
    </td></tr></table>
    
    <%@include file="footer.jsp" %>
    
  </body>
</html>
