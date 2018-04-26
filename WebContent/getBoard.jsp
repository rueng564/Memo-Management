<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="inha.ac.kr.Board" %>
<%@ page import="inha.ac.kr.DBconn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	Connection conn=DBconn.getConnection();
	Statement st=conn.createStatement();
	String sql="Select * from board";
	ResultSet rs=st.executeQuery(sql);
	String str="[";
	while(rs.next()) {
		int r_bID=rs.getInt("boardid");
		String r_bname=rs.getString("boardname");
		String r_boardbgcolor=rs.getString("boardbgcolor");
		str+=Board.getData(r_bID,r_bname,r_boardbgcolor);
		str+=",";
	}
	StringBuilder json=new StringBuilder(str);
	json.setCharAt(str.length()-1, ']');
	System.out.println(json);
%><%=json%>