package demo.controller;

import demo.domain.Request;
import demo.service.RequestService;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Sorin Andronic
 */
@Controller
public class RequestControler {
    
    @Autowired
    RequestService requestService;
    
    @RequestMapping(value = "/request", method = RequestMethod.GET)
    public String viewRequest() {
        return "request";
    }

    @RequestMapping(value = "/requests", method = RequestMethod.POST)
    @ResponseBody
    public Request addRequest(@ModelAttribute Request request) {
        request.setStatus("pending");
        requestService.persist(request);
        return request;
    }
    
    @RequestMapping(value = "/requests/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Request getRequest(@PathVariable("id") Long id) {
        return requestService.findById(id);
    }

    @RequestMapping(value = "/requests/{id}", method = RequestMethod.PUT)
    @ResponseBody
    public Request updateRequest(@ModelAttribute Request request, @PathVariable("id") Long id) {
        request.setId(id);

        requestService.merge(request);
        
        return request;
    }
    
    @RequestMapping("/viewRequests")
    public String viewStats(Map<String, Object> model) {
        List<Request> requests = requestService.getRequests();
        model.put("requests", requests);
        return "viewRequests";
    }
    
}
