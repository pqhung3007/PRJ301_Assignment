package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/components/navBar.jsp");
    _jspx_dependants.add("/components/footer.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_when_test.release();
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
      out.write("    <title>Camping Paradise</title>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n");
      out.write("        integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/png\" href=\"assets/images/camping.png\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-light fixed-top\">\n");
      out.write("    <div class=\"container-fluid mx-3 \">\n");
      out.write("        <a class=\"navbar-brand\" href=\"index.jsp\">Camping Paradise</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNavDropdown\"\n");
      out.write("                aria-controls=\"navbarNavDropdown\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse  d-flex justify-content-between\" id=\"navbarNavDropdown\">\n");
      out.write("            <ul class=\"navbar-nav\">\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link active\" aria-current=\"page\" href=\"index.jsp\">Home</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"#\">Features</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"campsites\">Camp Sites</a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("            <form action=\"search\" class=\"d-flex\">\n");
      out.write("                <input class=\"form-control me-2\" type=\"search\" name=\"keyword\" placeholder=\"Search\">\n");
      out.write("                <button class=\"btn btn-outline-success\" type=\"submit\">Search</button>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("            <div class=\"d-flex my-2\">\n");
      out.write("                <a class=\"btn btn-outline-dark\" href=\"book\">\n");
      out.write("                    <i class=\"bi-cart-fill me-1\"></i>\n");
      out.write("                    Cart\n");
      out.write("                    <span class=\"badge bg-dark text-white ms-1 rounded-pill\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.book.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("                </a>\n");
      out.write("                ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <!-- COVER -->\n");
      out.write("    <div class=\"hero\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h1>Welcome to Camping Paradise</h1>\n");
      out.write("            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores, consequuntur?</p>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- ADVANTAGES -->\n");
      out.write("    <section class=\"details js-section\">\n");
      out.write("        <h2 class=\"details__heading\">\n");
      out.write("            We’re different\n");
      out.write("        </h2>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"details__wrapper row\">\n");
      out.write("                <div class=\"detail js-detail col-md-4\">\n");
      out.write("                    <img src=\"assets/images/icon-snappy-process.svg\" alt=\"\" aria-hidden=\"true\" class=\"detail__icon\" />\n");
      out.write("                    <h3 class=\"heading heading--secondary\">Snappy Process</h3>\n");
      out.write("                    <p class=\"text\">\n");
      out.write("                        Our application process can be completed in minutes, not hours.\n");
      out.write("                        Don’t get stuck filling in tedious forms.\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"detail js-detail col-md-4\">\n");
      out.write("                    <img src=\"assets/images/icon-affordable-prices.svg\" alt=\"\" aria-hidden=\"true\"\n");
      out.write("                        class=\"detail__icon\" />\n");
      out.write("                    <h3 class=\"heading heading--secondary\">Affordable Prices</h3>\n");
      out.write("                    <p class=\"text\">\n");
      out.write("                        We don’t want you worrying about high monthly costs. Our prices\n");
      out.write("                        may be low, but we still offer the best coverage possible.\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"detail js-detail col-md-4\">\n");
      out.write("                    <img src=\"assets/images/icon-people-first.svg\" alt=\"\" aria-hidden=\"true\" class=\"detail__icon\" />\n");
      out.write("                    <h3 class=\"heading heading--secondary\">People First</h3>\n");
      out.write("                    <p class=\"text\">\n");
      out.write("                        Our plans aren’t full of conditions and clauses to prevent\n");
      out.write("                        payouts. We make sure you’re covered when you need it.\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <!-- CAMPING GALLERIES -->\n");
      out.write("    <section class=\"galleries\">\n");
      out.write("        <h2>Our Camping Sites</h2>\n");
      out.write("        <div class=\"images__container\">\n");
      out.write("            <div class=\"panel\"\n");
      out.write("                style=\"background-image: url('https://images.unsplash.com/photo-1558979158-65a1eaa08691?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')\">\n");
      out.write("                <h3>Explore The World</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"panel\"\n");
      out.write("                style=\"background-image: url('https://images.unsplash.com/photo-1572276596237-5db2c3e16c5d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')\">\n");
      out.write("                <h3>Wild Forest</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"panel\"\n");
      out.write("                style=\"background-image: url('https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1353&q=80')\">\n");
      out.write("                <h3>Sunny Beach</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"panel\"\n");
      out.write("                style=\"background-image: url('https://images.unsplash.com/photo-1551009175-8a68da93d5f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')\">\n");
      out.write("                <h3>City on Winter</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"panel\"\n");
      out.write("                style=\"background-image: url('https://images.unsplash.com/photo-1549880338-65ddcdfd017b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')\">\n");
      out.write("                <h3>Mountains - Clouds</h3>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </section>\n");
      out.write("    <a href=\"#\" class=\"btn btn-cta btn-primary\" role=\"button\" data-bs-toggle=\"button\">Visit More</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- TESTIMONIALS -->\n");
      out.write("    <section class=\"section\" id=\"section--3\">\n");
      out.write("        <div class=\"section__title section__title--testimonials\">\n");
      out.write("            <h2 class=\"section__description\">Not sure yet?</h2>\n");
      out.write("            <h3 class=\"section__header\">\n");
      out.write("                Millions of Bankists are already making their lifes simpler.\n");
      out.write("            </h3>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"slider\">\n");
      out.write("            <div class=\"slide\">\n");
      out.write("                <div class=\"testimonial\">\n");
      out.write("                    <h5 class=\"testimonial__header\">Best financial decision ever!</h5>\n");
      out.write("                    <blockquote class=\"testimonial__text\">\n");
      out.write("                        Lorem ipsum dolor sit, amet consectetur adipisicing elit.\n");
      out.write("                        Accusantium quas quisquam non? Quas voluptate nulla minima\n");
      out.write("                        deleniti optio ullam nesciunt, numquam corporis et asperiores\n");
      out.write("                        laboriosam sunt, praesentium suscipit blanditiis. Necessitatibus\n");
      out.write("                        id alias reiciendis, perferendis facere pariatur dolore veniam\n");
      out.write("                        autem esse non voluptatem saepe provident nihil molestiae.\n");
      out.write("                    </blockquote>\n");
      out.write("                    <address class=\"testimonial__author\">\n");
      out.write("                        <img src=\"img/user-1.jpg\" alt=\"\" class=\"testimonial__photo\" />\n");
      out.write("                        <h6 class=\"testimonial__name\">Aarav Lynn</h6>\n");
      out.write("                        <p class=\"testimonial__location\">San Francisco, USA</p>\n");
      out.write("                    </address>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"slide\">\n");
      out.write("                <div class=\"testimonial\">\n");
      out.write("                    <h5 class=\"testimonial__header\">\n");
      out.write("                        The last step to becoming a complete minimalist\n");
      out.write("                    </h5>\n");
      out.write("                    <blockquote class=\"testimonial__text\">\n");
      out.write("                        Quisquam itaque deserunt ullam, quia ea repellendus provident,\n");
      out.write("                        ducimus neque ipsam modi voluptatibus doloremque, corrupti\n");
      out.write("                        laborum. Incidunt numquam perferendis veritatis neque repellendus.\n");
      out.write("                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Illo\n");
      out.write("                        deserunt exercitationem deleniti.\n");
      out.write("                    </blockquote>\n");
      out.write("                    <address class=\"testimonial__author\">\n");
      out.write("                        <img src=\"img/user-2.jpg\" alt=\"\" class=\"testimonial__photo\" />\n");
      out.write("                        <h6 class=\"testimonial__name\">Miyah Miles</h6>\n");
      out.write("                        <p class=\"testimonial__location\">London, UK</p>\n");
      out.write("                    </address>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"slide\">\n");
      out.write("                <div class=\"testimonial\">\n");
      out.write("                    <h5 class=\"testimonial__header\">\n");
      out.write("                        Finally free from old-school banks\n");
      out.write("                    </h5>\n");
      out.write("                    <blockquote class=\"testimonial__text\">\n");
      out.write("                        Debitis, nihil sit minus suscipit magni aperiam vel tenetur\n");
      out.write("                        incidunt commodi architecto numquam omnis nulla autem,\n");
      out.write("                        necessitatibus blanditiis modi similique quidem. Odio aliquam\n");
      out.write("                        culpa dicta beatae quod maiores ipsa minus consequatur error sunt,\n");
      out.write("                        deleniti saepe aliquid quos inventore sequi. Necessitatibus id\n");
      out.write("                        alias reiciendis, perferendis facere.\n");
      out.write("                    </blockquote>\n");
      out.write("                    <address class=\"testimonial__author\">\n");
      out.write("                        <img src=\"img/user-3.jpg\" alt=\"\" class=\"testimonial__photo\" />\n");
      out.write("                        <h6 class=\"testimonial__name\">Francisco Gomes</h6>\n");
      out.write("                        <p class=\"testimonial__location\">Lisbon, Portugal</p>\n");
      out.write("                    </address>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <button class=\"slider__btn slider__btn--left\">&larr;</button>\n");
      out.write("            <button class=\"slider__btn slider__btn--right\">&rarr;</button>\n");
      out.write("            <div class=\"dots\"></div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- FOOTER -->\n");
      out.write("    <footer class=\"py-3\">\n");
      out.write("        <ul class=\"nav justify-content-center border-bottom pb-3 mb-3\">\n");
      out.write("            <li class=\"nav-item\"><a href=\"index.jsp\" class=\"nav-link px-2 text-muted active\">Home</a></li>\n");
      out.write("            <li class=\"nav-item\"><a href=\"#\" class=\"nav-link px-2 text-muted\">Features</a></li>\n");
      out.write("            <li class=\"nav-item\"><a href=\"#\" class=\"nav-link px-2 text-muted\">Camp Sites</a></li>\n");
      out.write("            <li class=\"nav-item\"><a href=\"#\" class=\"nav-link px-2 text-muted\">FAQs</a></li>\n");
      out.write("        </ul>\n");
      out.write("        <p class=\"text-center text-muted\">© 2021 Company, Inc</p>\n");
      out.write("    </footer>");
      out.write("\n");
      out.write("    \n");
      out.write("    <script src=\"js/app.js\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("        integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
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

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                    ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                    ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                        <button class=\"btn btn-outline-primary ms-lg-2\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account.displayName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</button>\n");
        out.write("                        <a href=\"logout\" class=\"btn btn-outline-primary ms-lg-2\">Logout</a>\n");
        out.write("                    ");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                        <a href=\"login\" class=\"btn btn-outline-primary ms-lg-2\">Login</a>\n");
        out.write("                    ");
        int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
    return false;
  }
}
