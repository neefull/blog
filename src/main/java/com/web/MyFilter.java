package com.web;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
public class MyFilter implements Filter {
	
   static String encode = "utf-8";

    public MyFilter() {
    }

	public void destroy() {
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		/**
		 * 编码问题
		 * **/
		System.out.println("设置编码前req:"+request.getCharacterEncoding());
		System.out.println("设置编码前res:"+response.getCharacterEncoding());
		request.setCharacterEncoding(encode);
		response.setCharacterEncoding(encode);
		chain.doFilter(request, response);
		System.out.println("设置编码后req:"+request.getCharacterEncoding());
		System.out.println("设置编码后res:"+response.getCharacterEncoding());
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
