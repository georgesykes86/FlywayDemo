package com.auth0.samples;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

@RestController
public class CustomerController {

    @Autowired
    CustomerRepository customerRepository;

    @RequestMapping(path = "/customers/", method = RequestMethod.GET)
    public List<Customer> getCustomers() {
        return customerRepository.findAll();
    }

    @RequestMapping(path = "/customers/{customerId}/contacts/", method = RequestMethod.GET)
    public List<Contact> getCustomerContacts(@PathVariable("customerId") UUID customerId) {
        return customerRepository.findOne(customerId).getContacts();
    }

}
