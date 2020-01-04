package tags;

import java.time.LocalTime;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class NowHandler extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException {
		JspWriter out = this.getJspContext().getOut();
		try {
			out.println(LocalTime.now());			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
