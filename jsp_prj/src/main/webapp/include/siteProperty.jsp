<%@page import="java.io.FileInputStream"%>
<%@page import="java.awt.Taskbar.Feature"%>
<%@page import="kr.co.sist.site_property.SiteProperty"%>
<%@page import="kr.co.sist.site_property.SitePropertyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	StringBuilder flagURL=(StringBuilder)application.getAttribute("CommonURL");
	if(flagURL == null){
		SitePropertyVO spVO=SiteProperty.spVO;
	
 		
		StringBuilder commonUrl=new StringBuilder();
		commonUrl.append(spVO.getProtocol())
		.append(spVO.getServerName())
		//.append(spVO.getServerPort())
		.append(spVO.getContextRoot());
		
		application.setAttribute("CommonURL", commonUrl);
		application.setAttribute("upoloadDir", spVO.getUploadDir());
	}//end if
	
%>