package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class viewproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 String pname=request.getParameter("n1");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from computer where PNAME='"+pname+"'");
     
        
      out.write("\n");
      out.write("   \n");
      out.write("      <table border=2 align=\"center\">\n");
      out.write("         <tr>\n");
      out.write("             <th>CID</th>\n");
      out.write("             <th>Pname</th>\n");
      out.write("             <th>Qty</th>\n");
      out.write("             <th>Price</th>\n");
      out.write("             <th>Supplier</th>\n");
      out.write("             <th>Supmob</th>\n");
      out.write("             <th>Address</th>\n");
      out.write("             <th>Company</th>\n");
      out.write("         </tr>\n");
      out.write("         ");

             while(rs.next())
             {
                 
             
      out.write("\n");
      out.write("         <tr>\n");
      out.write("             <td>rs.getInt(1)</td>\n");
      out.write("             <td>rs.getString(2)</td>\n");
      out.write("             <td>rs.getInt(3)</td>\n");
      out.write("             <td>rs.getInt(4)</td>\n");
      out.write("             <td>rs.getString(5)</td>\n");
      out.write("             <td>rs.getInt(6)</td>\n");
      out.write("             <td>rs.getString(7)</td>\n");
      out.write("             <td>rs.getString(8)</td>\n");
      out.write("         </tr>\n");
      out.write("         ");

             }
         
      out.write("\n");
      out.write("         \n");
      out.write("     </table>\n");
      out.write("         \n");
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
