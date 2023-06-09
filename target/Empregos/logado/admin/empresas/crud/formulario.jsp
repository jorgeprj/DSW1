<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Profissional</title>
</head>
<body>
    <div align="center">
        <h1>Gerenciamento de Empresas</h1>
        <h2>
            <a href="lista">Lista de Empresas</a>
        </h2>
    </div>

    <div align="center">
        <c:choose>
            <c:when test="${empresa != null}">
                <form action="atualizacao" method="post">
                    <%@include file="campos-edicao.jsp"%>
                </form>
            </c:when>
            <c:otherwise>
                <form action="insercao" method="post">
                    <%@include file="campos-insercao.jsp"%>
                </form>
            </c:otherwise>
        </c:choose>
    </div>

</body>
</html>