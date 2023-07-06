<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<fmt:bundle basename="message">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vagas de Emprego</title>
        <link href="${pageContext.request.contextPath}/layout.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <h1><fmt:message key="login.page" />:</h1>
        <c:if test="${mensagens.existeErros}">
            <div id="erro">
                <ul>
                    <c:forEach var="erro" items="${mensagens.erros}">
                        <li>${erro}</li>
                    </c:forEach>
                </ul>
            </div>
        </c:if>
        <form method="post" action="index.jsp">
            <table>
                <tr>
                    <th><fmt:message key="user.login" />:</th>
                    <td><input type="text" name="email" value="${param.email}"/></td>
                </tr>
                <tr>
                    <th><fmt:message key="user.password" />:</th>
                    <td><input type="password" name="senha" /></td>
                </tr>
                <tr>
                    <td colspan="2"> 
                        <input type="submit" name="bOK" value="<fmt:message key="user.login"/>">
                    </td>
                </tr>
            </table>
        </form>

        <div align="center">
            <table border="1">
                <caption>Lista de Empresas</caption>
                <tr>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Cidade</th>
                </tr>
                <c:forEach var="empresa" items="${requestScope.listaEmpresas}">
                        <tr>
                            <td>${empresa.nome}</td>
                            <td>${empresa.email}</td>
                            <td>${empresa.cidade}</td>
                        </tr>
                    </c:forEach>
            </table>
        </div>
    </body>
</fmt:bundle>
</html>
