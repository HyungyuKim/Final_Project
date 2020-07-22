package il.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import il.user.model.UserDAO;
import il.user.model.UserDTO;
import il.user.model.UserMailSendService;

@Controller
public class UserController {
   
   @Autowired
   private UserDAO userDao;
   @Autowired
   private UserMailSendService mailSender;
   
   
   
   @RequestMapping("/userJoin.do")
   public ModelAndView user() {
      
      ModelAndView mav = new ModelAndView();
      mav.setViewName("user/userJoin");
      return mav;
   }
   
   @RequestMapping(value="/userjoin.do",method=RequestMethod.POST)
   public ModelAndView userJoin(UserDTO dto,
         HttpServletRequest request) {
      int result = userDao.userJoin(dto);
         String msg = null;
         mailSender.mailSendWithUserKey(dto.getEmail(), dto.getId(), request);
         if(result==1) {
          
            msg =   "구경해방 사이트에 오신걸 환영합니다.";
         }else {
            msg = "회원가입에 실패하셨습니다.";
         }
         ModelAndView mav = new ModelAndView();
         mav.addObject("msg",msg);   
         mav.setViewName("user/userMsg");
         
         return mav;
   }
  
   @RequestMapping("/idCheck.do")
   public ModelAndView check(
         @RequestParam(value="id")String id){
    
      int result = userDao.idCheck(id);
      String msg = null;
      if(result==0) {
         msg = "<span style=color:blue>사용가능한 아이디입니다.</span>";
      }else {
         msg = "<span style=color:red>중복된 아이디입니다.</span>";
      }
    
      ModelAndView mav = new ModelAndView();
      mav.addObject("msg", msg);
      mav.setViewName("user/idCheckOk");
      
      return mav;
   }
   
   @RequestMapping("/nicknameCheck.do")
   public ModelAndView nicknameCheck(
         @RequestParam(value="nickname")String nickname) {
      
      int result = userDao.nicknameCheck(nickname);
      String msg = null;
      
      if(result==0) {
         msg = "<span style=color:blue>사용가능한 닉네임입니다.</span>";
      }else {
         msg = "<span style=color:red>중복된 닉네임입니다.</span>";
      }
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("msg", msg);
      mav.setViewName("user/idCheckOk");
      return mav;
   }
   
   
   @RequestMapping("/loginForm.do")
   public ModelAndView loginForm() {
      ModelAndView mav = new ModelAndView();
      mav.setViewName("user/login");
      return mav;
   }
   
   @RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/login");
		return mav;
	}
   
   @RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView loginSubmit(
			@RequestParam("userid") String userid,
			@RequestParam("userpwd") String userpwd,
			HttpSession session) {
			
	   	ModelAndView mav = new ModelAndView();
		String pwd = userDao.loginCheck(userid);
		if(pwd != null && pwd.equals(userpwd)) {
			String username = userDao.getUserInfo(userid);
			String echeck = userDao.emailCheck(userid);
			int usertype = userDao.userType(userid);
			if(echeck.equals("Y")) {
			session.setAttribute("usertype", usertype);
			session.setAttribute("id", userid);
			session.setAttribute("name", username);
			
			mav.addObject("goUrl","index.do");
			mav.setViewName("/indexMain");
			} else {
				mav.addObject("msg","이메일 인증을 해주세요!");
				mav.setViewName("user/userMsg");
			}
		} else {
			mav.addObject("msg","로그인실패!");
			mav.addObject("goUrl", "login.do");
			mav.setViewName("user/userMsg");
		}
		return mav;
   }
   
   @RequestMapping("/logout.do")
   public ModelAndView logout(
		   HttpServletRequest req) {
	   
	   HttpSession session = req.getSession();
	   session.invalidate();  
	   ModelAndView mav = new ModelAndView();
	   mav.setViewName("redirect:/index.do");
	   return mav;
   }
   
   @RequestMapping("/key_alter.do")
   public ModelAndView emailCheck(
         @RequestParam("user_id")String id,
         @RequestParam("user_key")String key) {
      
     userDao.alter_userKey(id, key);
     
     ModelAndView mav = new ModelAndView();
     mav.addObject("userid", id);
     mav.setViewName("user/regSuccess");
     return mav;
   }
   
}