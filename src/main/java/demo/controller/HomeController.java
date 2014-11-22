package demo.controller;

import java.util.List;
import java.util.Map;

import demo.domain.Request;
import demo.service.RequestService;
import java.util.Iterator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Robert
 */
@Controller
public class HomeController {

    @Autowired
    RequestService requestService;

    @RequestMapping(value = {"/home", ""})
    public String viewStats(Map<String, Object> model) {
        List<Request> requests = requestService.getRequests();
        model.put("requests", requests);
        model.put("requestCount", requests.size());
        
        return "home";
    }

//    @RequestMapping("/messages")
//    public String viewMessages(Map<String, Object> model) {
//        Account account = new Account();
//        account.setEmail("gigel@yahoo.com");
//        account.setName("Za One");
//
//        model.put("x", account);
//
//        return "messages";
//    }
//
//    @RequestMapping(value = "/accounts", method = RequestMethod.POST)
//    public String addAccount(
//            @RequestParam("name") String name,
//            @RequestParam("email") String email) {
//
//        Account account = new Account();
//        account.setName(name);
//        account.setEmail(email);
//        try {
//            accountService.persist(account);
//        } catch (Exception e) {
//            // move on.... nothing to see here
//        }
//
//        return "redirect:/home";
//    }
    
}
