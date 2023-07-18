package com.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri); // 전체 주소가 출력
		int idx = uri.lastIndexOf("/");
		uri = uri.substring(idx+1);
		System.out.println(uri);
		String url = "/WEB-INF/views/test2/";
		if("list".equals(uri)) {
			url += "test-list.jsp";
		}
		System.out.println(url);
		
		List<String> strList = new ArrayList<>();
		strList.add("strList 데이터 타입은");
		strList.add("List인데");
		strList.add("getAttribute 메서드 데이터 타입은");
		strList.add("Object라서");
		strList.add("이따 다시 캐스팅 해야함");
		request.setAttribute("strList", strList);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
