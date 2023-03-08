package com.kh.shareOffice;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class HomeController {
	
	private IamportClient api;
	
	public HomeController() {
    	// REST API 키와 REST API secret 를 아래처럼 순서대로 입력한다.
		this.api = new IamportClient("8641070272615548","bAWtOvYVOozerUxmMbPtotimMi7AKFn37PqHvEwTr0s6eEdz9sLPh6Ks0Ez1endwfva21AliZVeoWgmb");
	}
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
		
	@ResponseBody
	@RequestMapping(value="/verifyIamport/{imp_uid}")
	public IamportResponse<Payment> paymentByImpUid(
			Model model
			, Locale locale
			, HttpSession session
			, @PathVariable(value= "imp_uid") String imp_uid) throws IamportResponseException, IOException
	{	
			return api.paymentByImpUid(imp_uid);
	}
	
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String reservation() {
		return "payment/reservation";
	}
	
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String payment(@RequestParam("userId") String userId) {
		// userId 넘겨서 user 객체 가져오고
		// model.addAttribute("user",user);
		
		return "payment/payment";
	}
	
	// 지점 관리 페이지
	@RequestMapping(value = "/office", method = RequestMethod.GET)
	public String office() {
		return "payment/office";
	}
	// 지점 목록 조회
	@RequestMapping(value = "/office/list", method = RequestMethod.GET)
	public String officeList() {
		
		return "payment/officeList";
	}
	// 지점 추가
	@RequestMapping(value = "/office/register", method = RequestMethod.GET)
	public String officeRegister() {
		return "payment/officeRegister";
	}
	// 지점 수정
	@RequestMapping(value = "/office/modify", method = RequestMethod.GET)
	public String officeModify() {
		return "payment/officeModify";
	}
	// 지점 삭제
	@RequestMapping(value = "/office/remove", method = RequestMethod.GET)
	public String officeRemove() {
		return "payment/officeRemove";
	}

	
	
	
	
}