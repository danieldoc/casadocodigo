<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: daniel
  Date: 26/11/17
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Livros de java, Android, Iphone, PHP, Ruby e muito mais - Casa do código</title>
    </head>
    <body>

        <form:form action="${spring:mvcUrl('PC#gravar').build()}" method="POST" commandName="produto">
            <div>
                <label>Titulo</label>
                <form:input path="titulo"/>
                <form:errors path="titulo"/>
            </div>

            <div>
                <label>descricao</label>
                <form:textarea rows="10" cols="20"  path="descricao"></form:textarea>
                <form:errors path="descricao"/>
            </div>

            <div>
                <label>Paginas</label>
                <form:input path="paginas"/>
                <form:errors path="paginas"/>
            </div>

            <div>
                <label>Data de Lançamento</label>
                <form:input path="dataLancamento"/>
                <form:errors path="dataLancamento"/>
            </div>

            <c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
                <div>
                    <label>${tipoPreco}</label>
                    <form:input path="precos[${status.index}].valor"/>
                    <form:hidden path="precos[${status.index}].tipo" value="${tipoPreco}"/>
                </div>
            </c:forEach>

            <button type="submit">Cadastrar</button>
        </form:form>

    </body>
</html>
