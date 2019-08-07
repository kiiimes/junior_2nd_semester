<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>텍스트 파일 읽기</title>
</head>
<body>
	//이부분은 그저 txt파일을 읽어서 보여주는 부분. 해당 아이디에 맞는 정보를 긁어오게 하는건 이부분이 아님!
	<%
		BufferedReader reader = null;
		try {
			String filePath = application.getRealPath("/WEB-INF/assignment.txt"); // input 파일을 연다.
			System.out.println(filePath);
			reader = new BufferedReader(new FileReader(filePath));
			while (true) {
				String str = reader.readLine(); // 한행의 텍스트 데이터를 읽는다.
				if (str == null)
					break;
				out.print(str + "</br>"); // 읽은 데이터를 모니터로 출력 한다.
			}
		} catch (FileNotFoundException fnfe) {
			out.print("파일이 존재 하지 않습니다.");
		} catch (IOException ioe) {
			out.print("파일을 읽을수 없습니다.");
		}

		finally {
			try {
				reader.close(); // 파일을 닫는다.
			} catch (Exception e) {

			}
		}
	%>
</body>
</html>