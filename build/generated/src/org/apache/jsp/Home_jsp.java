package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Otaku no Sekai</title>\n");
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
      out.write("            .logo img{\n");
      out.write("                max-width: 100%;\n");
      out.write("                height: auto;\n");
      out.write("                position: relative;\n");
      out.write("                bottom: -241px;\n");
      out.write("            }\n");
      out.write("            .block-slider4 img{\n");
      out.write("                width: 50%;\n");
      out.write("            }\n");
      out.write("            .block-slider .caption-group{\n");
      out.write("                right: 7%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Menu.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"slider-area\">\n");
      out.write("                <!-- Slider -->\n");
      out.write("                <div class=\"block-slider block-slider4\">\n");
      out.write("                    <ul class=\"\" id=\"bxslider-home4\">\n");
      out.write("                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <!-- ./Slider -->\n");
      out.write("        </div> <!-- End slider area -->\n");
      out.write("        <div class=\"promo-area\">\n");
      out.write("            <div class=\"zigzag-bottom\"></div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                        <div class=\"single-promo promo1\">\n");
      out.write("                            <i class=\"fa fa-refresh\"></i>\n");
      out.write("                            <p>30 Days return</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                        <div class=\"single-promo promo2\">\n");
      out.write("                            <i class=\"fa fa-truck\"></i>\n");
      out.write("                            <p>Free shipping</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                        <div class=\"single-promo promo3\">\n");
      out.write("                            <i class=\"fa fa-lock\"></i>\n");
      out.write("                            <p>Secure payments</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                        <div class=\"single-promo promo4\">\n");
      out.write("                            <i class=\"fa fa-gift\"></i>\n");
      out.write("                            <p>New products</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div> <!-- End promo area -->\n");
      out.write("\n");
      out.write("        <div class=\"maincontent-area\">\n");
      out.write("            <div class=\"zigzag-bottom\"></div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"latest-product\">\n");
      out.write("                            <h2 class=\"section-title\">Latest Products</h2>\n");
      out.write("                            <div class=\"product-carousel\">\n");
      out.write("                                ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div> <!-- End main content area -->\n");
      out.write("        \n");
      out.write("        <div class=\"product-widget-area\">\n");
      out.write("            <div class=\"zigzag-bottom\"></div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        <div class=\"single-product-widget\">\n");
      out.write("                            <h2 class=\"product-wid-title\">Top Sellers</h2>\n");
      out.write("                            <a href=\"\" class=\"wid-view-more\">View All</a>\n");
      out.write("                            <div class=\"single-wid-product\">\n");
      out.write("                                <a href=\"single-product.html\"><img src=\"img/product-thumb-1.jpg\" alt=\"\" class=\"product-thumb\"></a>\n");
      out.write("                                <h2><a href=\"single-product.html\">Sony Smart TV - 2015</a></h2>\n");
      out.write("                                <div class=\"product-wid-rating\">\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-wid-price\">\n");
      out.write("                                    <ins>$400.00</ins> <del>$425.00</del>\n");
      out.write("                                </div>                            \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"single-wid-product\">\n");
      out.write("                                <a href=\"single-product.html\"><img src=\"img/product-thumb-2.jpg\" alt=\"\" class=\"product-thumb\"></a>\n");
      out.write("                                <h2><a href=\"single-product.html\">Apple new mac book 2015</a></h2>\n");
      out.write("                                <div class=\"product-wid-rating\">\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-wid-price\">\n");
      out.write("                                    <ins>$400.00</ins> <del>$425.00</del>\n");
      out.write("                                </div>                            \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"single-wid-product\">\n");
      out.write("                                <a href=\"single-product.html\"><img src=\"img/product-thumb-3.jpg\" alt=\"\" class=\"product-thumb\"></a>\n");
      out.write("                                <h2><a href=\"single-product.html\">Apple new i phone 6</a></h2>\n");
      out.write("                                <div class=\"product-wid-rating\">\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-wid-price\">\n");
      out.write("                                    <ins>$400.00</ins> <del>$425.00</del>\n");
      out.write("                                </div>                            \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        <div class=\"single-product-widget\">\n");
      out.write("                            <h2 class=\"product-wid-title\">Recently Viewed</h2>\n");
      out.write("                            <a href=\"#\" class=\"wid-view-more\">View All</a>\n");
      out.write("                            <div class=\"single-wid-product\">\n");
      out.write("                                <a href=\"single-product.html\"><img src=\"img/product-thumb-4.jpg\" alt=\"\" class=\"product-thumb\"></a>\n");
      out.write("                                <h2><a href=\"single-product.html\">Sony playstation microsoft</a></h2>\n");
      out.write("                                <div class=\"product-wid-rating\">\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-wid-price\">\n");
      out.write("                                    <ins>$400.00</ins> <del>$425.00</del>\n");
      out.write("                                </div>                            \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"single-wid-product\">\n");
      out.write("                                <a href=\"single-product.html\"><img src=\"img/product-thumb-1.jpg\" alt=\"\" class=\"product-thumb\"></a>\n");
      out.write("                                <h2><a href=\"single-product.html\">Sony Smart Air Condtion</a></h2>\n");
      out.write("                                <div class=\"product-wid-rating\">\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-wid-price\">\n");
      out.write("                                    <ins>$400.00</ins> <del>$425.00</del>\n");
      out.write("                                </div>                            \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"single-wid-product\">\n");
      out.write("                                <a href=\"single-product.html\"><img src=\"img/product-thumb-2.jpg\" alt=\"\" class=\"product-thumb\"></a>\n");
      out.write("                                <h2><a href=\"single-product.html\">Samsung gallaxy note 4</a></h2>\n");
      out.write("                                <div class=\"product-wid-rating\">\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-wid-price\">\n");
      out.write("                                    <ins>$400.00</ins> <del>$425.00</del>\n");
      out.write("                                </div>                            \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        <div class=\"single-product-widget\">\n");
      out.write("                            <h2 class=\"product-wid-title\">Top New</h2>\n");
      out.write("                            <a href=\"#\" class=\"wid-view-more\">View All</a>\n");
      out.write("                            <div class=\"single-wid-product\">\n");
      out.write("                                <a href=\"single-product.html\"><img src=\"img/product-thumb-3.jpg\" alt=\"\" class=\"product-thumb\"></a>\n");
      out.write("                                <h2><a href=\"single-product.html\">Apple new i phone 6</a></h2>\n");
      out.write("                                <div class=\"product-wid-rating\">\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-wid-price\">\n");
      out.write("                                    <ins>$400.00</ins> <del>$425.00</del>\n");
      out.write("                                </div>                            \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"single-wid-product\">\n");
      out.write("                                <a href=\"single-product.html\"><img src=\"img/product-thumb-4.jpg\" alt=\"\" class=\"product-thumb\"></a>\n");
      out.write("                                <h2><a href=\"single-product.html\">Samsung gallaxy note 4</a></h2>\n");
      out.write("                                <div class=\"product-wid-rating\">\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-wid-price\">\n");
      out.write("                                    <ins>$400.00</ins> <del>$425.00</del>\n");
      out.write("                                </div>                            \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"single-wid-product\">\n");
      out.write("                                <a href=\"single-product.html\"><img src=\"img/product-thumb-1.jpg\" alt=\"\" class=\"product-thumb\"></a>\n");
      out.write("                                <h2><a href=\"single-product.html\">Sony playstation microsoft</a></h2>\n");
      out.write("                                <div class=\"product-wid-rating\">\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                    <i class=\"fa fa-star\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"product-wid-price\">\n");
      out.write("                                    <ins>$400.00</ins> <del>$425.00</del>\n");
      out.write("                                </div>                            \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div> <!-- End product widget area -->\n");
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
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listT10}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("o");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                        <li>\n");
          out.write("                            <img src=\"image/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"Slide\">\n");
          out.write("                            <div class=\"caption-group\">\n");
          out.write("                                <h2 class=\"caption title\">\n");
          out.write("                                    ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                </h2>\n");
          out.write("                                <h4 class=\"caption subtitle\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.title}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h4>\n");
          out.write("                                <a class=\"caption button-radius\" href=\"#\"><span class=\"icon\"></span>Shop now</a>\n");
          out.write("                            </div>\n");
          out.write("                        </li>\n");
          out.write("                    ");
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

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listLatest}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("o");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <div class=\"single-product\">\n");
          out.write("                                        <div class=\"product-f-image\">\n");
          out.write("                                            <img src=\"image/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" width=\"25px\" height=\"30px\">\n");
          out.write("                                            <div class=\"product-hover\">\n");
          out.write("                                                <a href=\"#\" class=\"add-to-cart-link\"><i class=\"fa fa-shopping-cart\"></i> Add to cart</a>\n");
          out.write("                                                <a href=\"single-product.html\" class=\"view-details-link\"><i class=\"fa fa-link\"></i> See details</a>\n");
          out.write("                                            </div>\n");
          out.write("                                        </div>\n");
          out.write("\n");
          out.write("                                        <h2><a href=\"single-product.html\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></h2>\n");
          out.write("\n");
          out.write("                                        <div class=\"product-carousel-price\">\n");
          out.write("                                            <ins>...</ins> <del>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</del>\n");
          out.write("                                        </div> \n");
          out.write("                                    </div>\n");
          out.write("                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }
}
