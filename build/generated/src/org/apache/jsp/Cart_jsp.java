package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      out.write("        <title>Cart</title>\n");
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
      out.write("                                <li ><a href=\"home\">Home</a></li>\n");
      out.write("                                <li ><a href=\"shop\">Shop page</a></li>\n");
      out.write("                                <li class=\"active\"><a href=\"Cart.jsp\">Cart</a></li>\n");
      out.write("                                <li ><a href=\"checkout.html\">Checkout</a></li>\n");
      out.write("                                <li class=\"dropdown dropdown-small\">\n");
      out.write("                                    <a data-toggle=\"dropdown\" data-hover=\"dropdown\" class=\"dropdown-toggle\" href=\"#\">\n");
      out.write("                                        Category\n");
      out.write("                                    </a>\n");
      out.write("                                    <ul class=\"dropdown-menu\" style=\"min-width: 102px\">\n");
      out.write("                                        <c:forEach items=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listC}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" var=\"o\">\n");
      out.write("                                        <a href=\"shopbycate?cateid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" style=\"padding: 5px; background-color: white; color: black\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></br>\n");
      out.write("                                    </c:forEach>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                            <li ><a href=\"#\">Others</a></li>\n");
      out.write("                            <li ><a href=\"#\">Contact</a></li>\n");
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
      out.write("        <div class=\"product-big-title-area\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"product-bit-title text-center\">\n");
      out.write("                            <h2>Shopping Cart</h2>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div> <!-- End Page title area -->\n");
      out.write("        <div class=\"product-content-right\">\n");
      out.write("            <div class=\"woocommerce\">\n");
      out.write("                <form method=\"post\" action=\"#\">\n");
      out.write("                    <table cellspacing=\"0\" class=\"shop_table cart\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th class=\"product-remove\">&nbsp;</th>\n");
      out.write("                                <th class=\"product-thumbnail\">&nbsp;</th>\n");
      out.write("                                <th class=\"product-name\">Product</th>\n");
      out.write("                                <th class=\"product-price\">Price</th>\n");
      out.write("                                <th class=\"product-quantity\">Quantity</th>\n");
      out.write("                                <th class=\"product-subtotal\">Total</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr class=\"cart_item\">\n");
      out.write("                                <td class=\"product-remove\">\n");
      out.write("                                    <a title=\"Remove this item\" class=\"remove\" href=\"#\">×</a> \n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"product-thumbnail\">\n");
      out.write("                                    <a href=\"single-product.html\"><img width=\"145\" height=\"145\" alt=\"poster_1_up\" class=\"shop_thumbnail\" src=\"img/product-thumb-2.jpg\"></a>\n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"product-name\">\n");
      out.write("                                    <a href=\"single-product.html\">Ship Your Idea</a> \n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"product-price\">\n");
      out.write("                                    <span class=\"amount\">£15.00</span> \n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"product-quantity\">\n");
      out.write("                                    <div class=\"quantity buttons_added\">\n");
      out.write("                                        <input type=\"button\" class=\"minus\" value=\"-\">\n");
      out.write("                                        <input type=\"number\" size=\"4\" class=\"input-text qty text\" title=\"Qty\" value=\"1\" min=\"0\" step=\"1\">\n");
      out.write("                                        <input type=\"button\" class=\"plus\" value=\"+\">\n");
      out.write("                                    </div>\n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"product-subtotal\">\n");
      out.write("                                    <span class=\"amount\">£15.00</span> \n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td class=\"actions\" colspan=\"6\">\n");
      out.write("                                    <div class=\"coupon\">\n");
      out.write("                                        <label for=\"coupon_code\">Coupon:</label>\n");
      out.write("                                        <input type=\"text\" placeholder=\"Coupon code\" value=\"\" id=\"coupon_code\" class=\"input-text\" name=\"coupon_code\">\n");
      out.write("                                        <input type=\"submit\" value=\"Apply Coupon\" name=\"apply_coupon\" class=\"button\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <input type=\"submit\" value=\"Checkout\" name=\"proceed\" class=\"checkout-button button alt wc-forward\">\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </form>\n");
      out.write("                <div class=\"cart-collaterals\">\n");
      out.write("                    <div class=\"cart_totals \">\n");
      out.write("                        <h2>Cart Totals</h2>\n");
      out.write("                        <table cellspacing=\"0\">\n");
      out.write("                            <tbody>\n");
      out.write("                                <tr class=\"cart-subtotal\">\n");
      out.write("                                    <th>Cart Subtotal</th>\n");
      out.write("                                    <td><span class=\"amount\">£15.00</span></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr class=\"shipping\">\n");
      out.write("                                    <th>Shipping and Handling</th>\n");
      out.write("                                    <td>Free Shipping</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr class=\"order-total\">\n");
      out.write("                                    <th>Order Total</th>\n");
      out.write("                                    <td><strong><span class=\"amount\">£15.00</span></strong> </td>\n");
      out.write("                                </tr>\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                    <form method=\"post\" action=\"#\" class=\"shipping_calculator\">\n");
      out.write("                        <section id=\"calcalute-shipping-wrap\" class=\"shipping-calculator-form collapse\">\n");
      out.write("                            <p class=\"form-row form-row-wide\"><input type=\"text\" id=\"calc_shipping_state\" name=\"calc_shipping_state\" placeholder=\"State / county\" value=\"\" class=\"input-text\"> </p>\n");
      out.write("                            <p class=\"form-row form-row-wide\"><input type=\"text\" id=\"calc_shipping_postcode\" name=\"calc_shipping_postcode\" placeholder=\"Postcode / Zip\" value=\"\" class=\"input-text\"></p>\n");
      out.write("                            <p><button class=\"button\" value=\"1\" name=\"calc_shipping\" type=\"submit\">Update Totals</button></p>\n");
      out.write("                        </section>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>                        \n");
      out.write("        </div>\n");
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
}
