<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>修改一条成员信息</title>
</head>
<body>
<h3 align="center">修改成员</h3>
<form action="/edit" method="post">
    <table border="0" align="center" width="40%" style="margin-left: 100px">
        <tr>
            <td width="100px">名字</td>
            <td width="40%">
                <label>
                    <input type="text" name="name" value="${customer.name}">
                </label>
            </td>
        </tr>
        <tr>
            <td>性别</td>
            <td>
                <input type="radio" name="gender" value="男" id="male">
                <label for="male">男</label>
                <input type="radio" name="gender" value="女" id="female">
                <label for="female">女</label>
            </td>
        </tr>
        <tr>
            <td>身份</td>
            <td>
                <label for="role"></label><input type="text" name="role" id="role" value="${customer.role}" />
            </td>
        </tr>
        <tr>
            <td>班级</td>
            <td>
                <label>
                    <input type="text" name="classId" value="${customer.classId}"/>
                </label>
            </td>
        </tr>
        <tr>
            <td>学号</td>
            <td>
                <label for="number"></label><input type="text" name="number" id="number" value="${customer.number}"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="submit" value="提交"/>
                <input type="reset" name="reset" value="重置">
                <input type="button" value="后退"  onclick="history.go(-1)"/>
            </td>
        </tr>
        <label>
            <input type="text" name="uid" hidden="hidden" value="${customer.uid}">
        </label>
    </table>

</form>
</body>
</html>
