package il.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommuController {

	@RequestMapping("/commuNotice.do")
	public ModelAndView c_info() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("community/commuNotice");
		return mav;
	}
}
