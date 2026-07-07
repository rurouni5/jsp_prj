<%@page import="java.util.Random"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%

session.setAttribute("sesName", null);
if( new Random().nextBoolean()){
session.setAttribute("sesName", "홍길동");
}//end if
%>