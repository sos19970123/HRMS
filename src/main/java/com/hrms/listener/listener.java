package com.hrms.listener;

import org.springframework.web.context.ContextLoaderListener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;

public class listener extends ContextLoaderListener {

    @Override
    public void contextInitialized(ServletContextEvent event) {

        ServletContext servletContext = event.getServletContext();
        servletContext.setAttribute("ctp",servletContext.getContextPath());

    }

}
