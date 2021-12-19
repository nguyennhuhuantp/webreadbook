package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ChangePassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Change Your Password</title>\n");
      out.write("        <!--Made with love by Mutiullah Samim -->\n");
      out.write("\n");
      out.write("        <!--Bootsrap 4 CDN-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!--Fontawesome CDN-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/all.css\" integrity=\"sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!--Custom styles-->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/signup.css\">\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/png\" href=\"image/icon/__original_drawn_by_ichihaya__f4254d3f9fc4d617f6017eca6ce7bd1f.ico\"/>\n");
      out.write("        <style>\n");
      out.write("            .signup_btn{\n");
      out.write("                color: black;\n");
      out.write("                background-color: #FFC312;\n");
      out.write("                width: 100px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .signup_btn:hover{\n");
      out.write("                color: black;\n");
      out.write("                background-color: white;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"d-flex justify-content-center h-100\">\n");
      out.write("                <div class=\"card\">\n");
      out.write("                    <div class=\"card-header\">\n");
      out.write("                        <h3>Change your password</h3>\n");
      out.write("                        <div class=\"d-flex justify-content-end social_icon\">\n");
      out.write("                            <span><i class=\"fab fa-facebook-square\"></i></span>\n");
      out.write("                            <span><i class=\"fab fa-google-plus-square\"></i></span>\n");
      out.write("                            <span><i class=\"fab fa-twitter-square\"></i></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <form action=\"changepassword\" method=\"post\">\n");
      out.write("                            <div class=\"input-group form-group\">\n");
      out.write("                                <div class=\"input-group-prepend\">\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-key\"></i></span>\n");
      out.write("                                </div>\n");
      out.write("                                <input type=\"password\" name=\"oldpass\" class=\"form-control\" placeholder=\"Enter your old password\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-group form-group\">\n");
      out.write("                                <div class=\"input-group-prepend\">\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-key\"></i></span>\n");
      out.write("                                </div>\n");
      out.write("                                <input type=\"password\" name=\"newpass\" class=\"form-control\" placeholder=\"Enter your new password\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-group form-group\">\n");
      out.write("                                <div class=\"input-group-prepend\">\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-key\"></i></span>\n");
      out.write("                                </div>\n");
      out.write("                                <input type=\"password\" name=\"renewpass\" class=\"form-control\" placeholder=\"Re-password\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input type=\"submit\" value=\"Change Password\" class=\"btn float-right changepass_btn\">\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card-footer\">\n");
      out.write("                        <div class=\"d-flex justify-content-center links\">\n");
      out.write("                            You have another account?<a href=\"login\">Login</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"d-flex justify-content-center\">\n");
      out.write("                            <a href=\"#\">Forgot your password?</a>\n");
      out.write("                        </div>\n");
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
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
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
}
