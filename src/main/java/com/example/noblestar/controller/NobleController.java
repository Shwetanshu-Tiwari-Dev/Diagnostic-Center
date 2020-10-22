package com.example.noblestar.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.noblestar.dao.NobleRepo1;
import com.example.noblestar.dao.NobleRepo2;
import com.example.noblestar.dao.NobleRepo3;
import com.example.noblestar.model.OnlineAppointmentDetails;
import com.example.noblestar.model.PatientDetails;
import com.example.noblestar.model.PatientQuestions;

@Controller
public class NobleController {

	@Autowired
	NobleRepo1 repo1;
	@Autowired
	NobleRepo2 repo2;
	@Autowired
	NobleRepo3 repo3;
	
	private String id;
	
	public void currentUser(Principal principal)
	{
		id=principal.getName();
	}
	
	@RequestMapping("/")
	public String home()
	{
		return "index";
	}
	

	@RequestMapping("/onlineappointment")
	public String onlineAppointment()
	{
		return "onlineappointment";
	}
	
	@PostMapping("/onlineappointmentbooked")
	public String onlineAppointmentBooking(OnlineAppointmentDetails oad)
	{
		repo1.save(oad);
		return "appointmentbooked";
	}
	
	@RequestMapping("/report")
	public String report()
	{
		return "reports";
	}
	
	@GetMapping("/checkreport")
	public ModelAndView checkReport(@RequestParam("mobile") String mb)
	{
	ModelAndView mv=new ModelAndView();
	if(repo1.existsById(mb))
	{
	mv.addObject("data",repo1.getOne(mb));
	mv.setViewName("checkreport");
	}
	else
	{
		mv.addObject("data", "NO");
		mv.setViewName("noreportavailable");	
	}
	return mv;
	}
	
	@GetMapping("/checkallreport")
	public ModelAndView checkAllReport()
	{
		ModelAndView mv=new ModelAndView();
		List<OnlineAppointmentDetails> list=repo1.findAll();
		mv.addObject("data",list);
		mv.setViewName("checkallreport");
		return mv;
	}
	
	@RequestMapping("/department")
	public String department()
	{
		return "departments";
	}
	
	@RequestMapping("/radiology")
	public String rad()
	{
		return "radiology";
	}
	
	@RequestMapping("/pathology")
	public String pat()
	{
		return "pathology";
	}
	
	@RequestMapping("/cardiology")
	public String car()
	{
		return "cardiology";
	}
	
	@RequestMapping("/neurology")
	public String neu()
	{
		return "neurology";
	}
	
	@RequestMapping("/offer")
	public String offer()
	{
		return "offers";
	}
	
	@RequestMapping("/aboutus")
	public String about()
	{
		return "aboutus";
	}
	@RequestMapping("/contactus")
	public String contact()
	{
		return "contactus";
	}
	
	@RequestMapping("/askme")
	public String askMe()
	{
		return "askme"; 
	}
	
	@PostMapping("/questionsubmitted")
	public String quesSub(PatientQuestions pq)
	{
		repo3.save(pq);
		return "questionsubmitted"; 
	}
	
	@RequestMapping("/login")
	public String login()
	{
		return "loginpage";
	} 
	
	@RequestMapping("/logout")
	public String logout()
	{
		return "loginpage";
	}
	
	@RequestMapping("/profile")
	public ModelAndView profile(Principal principal)
	{
		ModelAndView mv = new ModelAndView();
		currentUser(principal);
		PatientDetails pd =repo2.getOne(id);
		mv.addObject("data", pd);
		mv.setViewName("profile");
		return mv;
	}
	
//	@GetMapping("/logincred")
//	public ModelAndView loginProcess(@RequestParam("username") String id, @RequestParam("password") String pass)
//	{
//		ModelAndView mv=new ModelAndView();
//		
//		if(id!=null && pass!=null)
//		{
//		   if(repo2.existsById(id))
//		   {
//           PatientDetails pd=repo2.getOne(id);
//           if(pass.equals(pd.getPassword()))
//           {
//			   mv.addObject("data", id);
//			   mv.setViewName("profile");
//           }
//           else
//           {
//        	mv.addObject("message", "Invalid Credentials");
//   			mv.setViewName("loginpage");  
//           }
//		   }
//		   else
//		   {
//			   mv.addObject("message", "ID Does Not Exist");
//			   mv.setViewName("loginpage");  
//		   }
//		}
//		else
//		{
//			mv.addObject("message", "Invalid Credentials");
//			mv.setViewName("loginpage");
//
//		}
//		return mv;
//	}
	
	@RequestMapping("/createaccount")
	public String createAccount()
	{
		return "createaccount";
	}
	
	@PostMapping("/accountcreated")
	public ModelAndView accountCreated(PatientDetails pd)
	{
		ModelAndView mv=new ModelAndView("loginpage");
		repo2.save(pd);
		/*mv.addObject("data", pd);
		mv.setViewName("profile");*/
		return mv;
	}
	
	@RequestMapping("/forgotpassword")
	public String forgotPassword()
	{
		return "forgotpassword";
	}
	
	@GetMapping("/checkid")
	public ModelAndView checkId(@RequestParam("id") String id)
	{
		ModelAndView mv=new ModelAndView();
		if(repo2.existsById(id))
		{
		  mv.addObject("data", id);
		  mv.setViewName("enterpassword");
		}	
		else
		{
			mv.addObject("message", "ID Does Not Exist");
			mv.setViewName("loginpage");
		}
		return mv;
	}
	
	@PostMapping("/passwordchanged")
	public ModelAndView checkId(@RequestParam("id") String id, @RequestParam("newpass") String np, @RequestParam("conpass") String cp)
	{
		ModelAndView mv=new ModelAndView();
		if(np.equals(cp))
		{
		  PatientDetails pd=repo2.getOne(id);
		  pd.setPassword(np);
		  repo2.saveAndFlush(pd);
		  mv.addObject("message", "Password Is Changed Successfully");
		  mv.setViewName("loginpage");
		}	
		else
		{
			mv.addObject("message", "Password Didn't Match");
			mv.setViewName("passworderror");
		}
		return mv;
	}
}
