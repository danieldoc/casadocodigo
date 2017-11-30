<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: daniel
  Date: 27/11/17
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Livros de java, Android, Iphone, PHP, Ruby e muito mais - Casa do código</title>
    </head>
    <body>
        <h1></h1>

        <div>${sucesso}</div>

        <table>
            <thead>
                <th>
                    <td>Titulo</td>
                    <td>Descriçao</td>
                    <td>Paginas</td>
                </th>
            </thead>

            <tbody>
                <c:forEach items="${listaProduto}" var="listaProduto">
                    <tr>
                        <td>${listaProduto.titulo}</td>
                        <td>${listaProduto.descricao}</td>
                        <td>${listaProduto.paginas}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>