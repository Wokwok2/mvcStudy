<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=utf-8" language="java" %>

<%
    MemberRepository memberRepository = MemberRepository.getInstance();
    List<Member> members = memberRepository.findAll();
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<a href="/index.html">메인</a>
<table>
    <thead>
</thead>
<tbody>
<%
    for (Member member : members) {
        out.write(" <tr>");
        out.write(" <td>" + member.getId() + "</td>");
        out.write(" <td>" + member.getUsername() + "</td>");
        out.write(" <td>" + member.getAge() + "</td>");
        out.write(" </tr>");
    }
%>
</tbody>
</table>
</body>
</html>