/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-07-09 11:57:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp.commons;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!-- \t<link rel=\"stylesheet\" href=\"/css/bootstrap.min.css\"> -->\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"/css/buttons.css\">\t\r\n");
      out.write("<!--   <script src=\"/js/bootstrap.min.js\"></script> -->\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<!--shortcut start-->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "shortcut.jsp", out, false);
      out.write("\r\n");
      out.write("<!--shortcut end-->\r\n");
      out.write("<div id=\"header\" style=\"margin-bottom: 0px;background-color:white;\">\r\n");
      out.write("\t<div class=\"header_inner\">\r\n");
      out.write("\t\t<div class=\"logo\">\r\n");
      out.write("\t\t\t<a name=\"sfbest_hp_hp_head_logo\" href=\"http://localhost:8082\"\r\n");
      out.write("\t\t\t\tclass=\"trackref logoleft\" style=\"background:;\"><img src=\"/images/html/logo_white.jpg\" alt=\"\" style=\"width:170px;height:65px;margin: 8px 0 0 20px;;\"></a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"index_promo\"></div>\r\n");
      out.write("\t\t<div class=\"search\">\r\n");
      out.write("\t\t\t<form action=\"http://localhost:8085/search.html?keyword=\" id=\"searchForm\"\r\n");
      out.write("\t\t\t\tname=\"query\" method=\"GET\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<input type=\"text\" class=\"text keyword ac_input\" name=\"keyword\"\r\n");
      out.write("\t\t\t\t\tid=\"keyword\" value=\"\" style=\"color: #333;\"\r\n");
      out.write("\t\t\t\t\tonkeydown=\"javascript:if(event.keyCode==13) search_keys('searchForm');\"\r\n");
      out.write("\t\t\t\t\tautocomplete=\"off\"> <input type=\"button\" value=\"搜&emsp;索\"\r\n");
      out.write("\t\t\t\t\tclass=\"submit button button-glow button-rounded button-caution\"\r\n");
      out.write("\t\t\t\t\tstyle=\"background-color: #dd00a7;width:80px;font:bold 18px Microsoft Yahei;border-radius:0%;text-align:center;padding:0px;\" onclick=\"search_keys('searchForm')\">\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t<div class=\"search_hot\" style=\"\">\r\n");
      out.write("\t\t\t\t<a target=\"_blank\" href=\"http://localhost:8085/search.html?keyword=秒杀\" style=\"color: red;\">秒杀专场</a>\r\n");
      out.write("\t\t\t\t<a target=\"_blank\" href=\"http://localhost:8085/search.html?keyword=手机\">手机</a>\r\n");
      out.write("\t\t\t\t<a target=\"_blank\" href=\"http://localhost:8085/search.html?keyword=游戏本\">游戏本</a>\r\n");
      out.write("\t\t\t\t<a target=\"_blank\" href=\"http://localhost:8085/search.html?keyword=生活用品\">生活用品</a>\r\n");
      out.write("\t\t\t\t<a target=\"_blank\" href=\"http://localhost:8085/search.html?keyword=服饰\">服饰</a>\r\n");
      out.write("\t\t\t\t<a target=\"_blank\" href=\"http://localhost:8085/search.html?keyword=新鲜水果\">新鲜水果</a>\r\n");
      out.write("\t\t\t\t<a target=\"_blank\" href=\"http://localhost:8085/search.html?keyword=厨具\">厨具</a>\r\n");
      out.write("\t\t\t\t<a target=\"_blank\" href=\"http://localhost:8085/search.html?keyword=男装\">男装</a>\r\n");
      out.write("\t\t\t\t<a target=\"_blank\" href=\"http://localhost:8085/search.html?keyword=女装\">女装</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"shopingcar\" id=\"topCart\" style=\"border:2px solid #EEE9E9;text-align:center;\">\r\n");
      out.write("\t\t\t");
      out.write("\r\n");
      out.write("\t\t\t<a href=\"http://localhost:8090/cart/list.html\" class=\"t\" rel=\"nofollow\" style=\"color:red;text-decoration: none;\">\r\n");
      out.write("\t\t\t\t<span class=\"glyphicon glyphicon-shopping-cart\" style=\"margin-right: 20px; font-size:16px;\"></span>\r\n");
      out.write("\t\t\t\t我的购物车</a>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
