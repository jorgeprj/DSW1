<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Empresas</title>
    <link href="${pageContext.request.contextPath}/layout.css" rel="stylesheet" type="text/css"/>
</head>
<body>
        <h1>Lista de Empresas por Cidade</h1>
        <div align="center">
            <table border="1">
                <caption>Lista de Empresas por Cidade</caption>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CNPJ</th>
                    <th>Cidade</th>
                </tr>
                <c:forEach var="empresa" items="${requestScope.listaEmpresasCidade}">
                    <tr>
                        <td>${empresa.nome}</td>
                        <td>${empresa.email}</td>
                        <td>${empresa.cnpj}</td>
                        <td>${empresa.cidade}</td>
                    </tr>
                </c:forEach>
            </table>
            
            <div>
                <a href="${pageContext.request.contextPath}/logout.jsp">Voltar</a>
            </div>    
        </div>
</body>
</html>