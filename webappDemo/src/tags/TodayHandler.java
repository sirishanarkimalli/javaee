package tags;

import java.time.LocalDate;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class TodayHandler extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException {
		JspWriter out = this.getJspContext().getOut();
		try {
			out.println(LocalDate.now());			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
