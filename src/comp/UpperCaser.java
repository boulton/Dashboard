package comp;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class UpperCaser extends SimpleTagSupport {

	private String mot = "";

	public void doTag() throws IOException {

		JspWriter out = getJspContext().getOut();
		out.println(  LocalDateTime.now() ) ;

	}

	public String getMot() {
		return mot;
	}

	public void setMot(String mot) {
		this.mot = mot;
	}

}