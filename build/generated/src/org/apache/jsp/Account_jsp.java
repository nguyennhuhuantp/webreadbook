package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Account_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Tài khoản của tôi</title>\n");
      out.write("        <!-- Google Fonts -->\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <!-- Font Awesome -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <!-- Custom CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("        <!--Background-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/backgrounds.css\">\n");
      out.write("        <!--Ico-->\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/png\" href=\"image/icon/__original_drawn_by_ichihaya__f4254d3f9fc4d617f6017eca6ce7bd1f.ico\"/>\n");
      out.write("\n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("        <style>\n");
      out.write("            .jFkAwY{\n");
      out.write("                margin-right: auto;\n");
      out.write("                margin-left: 100px;\n");
      out.write("            }\n");
      out.write("            .uSLJP {\n");
      out.write("                margin: 0px;\n");
      out.write("                padding: 0px;\n");
      out.write("                list-style: none;\n");
      out.write("                font-size: 13px;\n");
      out.write("            }\n");
      out.write("            .gKGcfW {\n");
      out.write("                width: 250px;\n");
      out.write("                margin-right: 17px;\n");
      out.write("                margin-right: 18px;\n");
      out.write("            }\n");
      out.write("            .hBHoW {\n");
      out.write("                display: flex;\n");
      out.write("                -webkit-box-align: center;\n");
      out.write("                align-items: center;\n");
      out.write("                padding-left: 7px;\n");
      out.write("                margin: 0px 0px 12px;\n");
      out.write("            }\n");
      out.write("            .uSLJP a{\n");
      out.write("                display: flex;\n");
      out.write("                -webkit-box-align: center;\n");
      out.write("                align-items: center;\n");
      out.write("                padding: 15px 18px;\n");
      out.write("                color: rgb(74, 74, 74);\n");
      out.write("            }\n");
      out.write("            .edAZXd{\n");
      out.write("                flex: 1 1 0%;\n");
      out.write("            }\n");
      out.write("            .jZJmua{\n");
      out.write("                font-size: 19px;\n");
      out.write("                line-height: 21px;\n");
      out.write("                font-weight: 300;\n");
      out.write("                margin: 20px 0px 15px;\n");
      out.write("            }\n");
      out.write("            .irgDVD{\n");
      out.write("                background-color: rgb(255, 255, 255);\n");
      out.write("                padding: 30px 20px;\n");
      out.write("                border-radius: 4px;\n");
      out.write("            }\n");
      out.write("            .bYlDgr{\n");
      out.write("                transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s, -webkit-box-shadow 0.15s ease-in-out 0s;\n");
      out.write("                border: 1px solid rgb(204, 204, 204);\n");
      out.write("                border-radius: 4px;\n");
      out.write("                height: 34px;\n");
      out.write("                padding: 6px 12px;\n");
      out.write("                line-height: 34px;\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("            .col-md-4{\n");
      out.write("                width: 20%;\n");
      out.write("            }\n");
      out.write("            .col-md-2{\n");
      out.write("                margin-top: 15px;\n");
      out.write("            }\n");
      out.write("            .col-md-8{\n");
      out.write("                padding-top: 5px;\n");
      out.write("                padding-bottom: 10px;\n");
      out.write("            }\n");
      out.write("            .euTTxe{\n");
      out.write("                display: flex;\n");
      out.write("                margin-right: 15px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Menu.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"mainmenu-area\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"navbar-header\">\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                            </button>\n");
      out.write("                        </div> \n");
      out.write("                        <div class=\"navbar-collapse collapse\">\n");
      out.write("                            <ul class=\"nav navbar-nav\">\n");
      out.write("                                <li><a href=\"home\">Home</a></li>\n");
      out.write("                                <li><a href=\"shop\">Shop page</a></li>\n");
      out.write("                                <li><a href=\"cart.html\">Cart</a></li>\n");
      out.write("                                <li><a href=\"checkout.html\">Checkout</a></li>\n");
      out.write("                                <li class=\"dropdown dropdown-small\">\n");
      out.write("                                    <a data-toggle=\"dropdown\" data-hover=\"dropdown\" class=\"dropdown-toggle\" href=\"#\">\n");
      out.write("                                        Category\n");
      out.write("                                    </a>\n");
      out.write("                                    <ul class=\"dropdown-menu\" style=\"min-width: 102px\">\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"#\">Others</a></li>\n");
      out.write("                            <li><a href=\"#\">Contact</a></li>\n");
      out.write("                            <li>\n");
      out.write("                                <form action=\"search\" method=\"POST\">\n");
      out.write("                                    <input class=\"search\" name=\"txt\" type=\"text\" placeholder=\"Search products...\">\n");
      out.write("                                    <input type=\"submit\" value=\"Search\">\n");
      out.write("                                </form>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>  \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div> <!-- End mainmenu area -->\n");
      out.write("        <div class=\"jFkAwY\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <aside class=\"gKGcfW\">\n");
      out.write("                        <div class=\"hBHoW\">\n");
      out.write("                            <img src=\"https://salt.tikicdn.com/desktop/img/avatar.png\" alt=\"\" />\n");
      out.write("                            <div class=\"info\">Tài khoản của</br><strong>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.user}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></div>\n");
      out.write("                        </div>\n");
      out.write("                        <ul class=\"uSLJP\">\n");
      out.write("                            <table class=\"table table-success table-striped\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a class=\"is-active\" href=\"account\">\n");
      out.write("                                        <i class=\"fa fa-user\" ></i>\n");
      out.write("                                        Thông tin tài khoản\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a class=\"\" href=\"#\">\n");
      out.write("                                        <i class=\"fa fa-shopping-cart\"></i>\n");
      out.write("                                        Quản lý đơn hàng\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a class=\"\" href=\"#\">\n");
      out.write("                                        <i class=\"fa fa-arrow-circle-down\"></i>\n");
      out.write("                                        Sổ địa chỉ\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a class=\"\" href=\"#\">\n");
      out.write("                                        <i class=\"fa fa-credit-card\"></i>\n");
      out.write("                                        Thông tin thanh toán\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a class=\"\" href=\"#\">\n");
      out.write("                                        <i class=\"fa fa-heart\"></i>\n");
      out.write("                                        Sản phẩm yêu thích\n");
      out.write("                                    </a>\n");
      out.write("                                </li>\n");
      out.write("                            </table>\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </aside>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-8\">\n");
      out.write("                    <div class=\"edAZXd\">\n");
      out.write("                        <h3 class=\"jZJmua\">Thông tin tài khoản</h3>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <form action=\"update\" method=\"post\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-2\">\n");
      out.write("                                    <label class=\"\">Họ tên</label>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-8\">\n");
      out.write("                                    <input type=\"text\" name=\"name\" maxlength=\"128\" class=\"bYlDgr\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${detail.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-2\">\n");
      out.write("                                    <label class=\"\">Email</label>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-8\">\n");
      out.write("                                    <input type=\"text\" name=\"email\" class=\"bYlDgr\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${detail.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-2\">\n");
      out.write("                                    <label class=\"\">Số điện thoại</label>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-8\">\n");
      out.write("                                    <input type=\"text\" name=\"phone\" class=\"bYlDgr\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${detail.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-2\">\n");
      out.write("                                    <label class=\"\">Địa chỉ</label>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-8\">\n");
      out.write("                                    <input type=\"text\" name=\"address\" class=\"bYlDgr\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${detail.address}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"\">\n");
      out.write("                                <button type=\"submit\" class=\"\">Cập nhật</button>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Latest jQuery form server -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap JS form CDN -->\n");
      out.write("        <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- jQuery sticky menu -->\n");
      out.write("        <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.sticky.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- jQuery easing -->\n");
      out.write("        <script src=\"js/jquery.easing.1.3.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Main Script -->\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Slider -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bxslider.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/script.slider.js\"></script>\n");
      out.write("    </body>\n");
      out.write("    <footer>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.jsp", out, false);
      out.write("\n");
      out.write("    </footer>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listC}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("o");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                        <a href=\"shopbycate?cateid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" style=\"padding: 5px; background-color: white; color: black\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></br>\n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
