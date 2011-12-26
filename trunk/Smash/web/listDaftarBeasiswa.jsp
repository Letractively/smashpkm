<%-- 
    Document   : listDaftarBeasiswa
    Created on : Dec 23, 2011, 9:52:08 PM
    Author     : yosua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border=0>
            <tr>
                <td>
                    <form method='post' action='DispatcherBeasiswa?page=listPilihBeasiswa'>
                        <input type='submit' value='Daftar' >
                    </form>
                </td>
                <td>
                    <form method='post' action='DispatcherMahasiswa?page=home&&nrp=${mahasiswa.nrp}'>
                        <input type='submit' value='Menu Utama' >
                    </form>
                </td>
                <td>
                    <form method='post' action='DispatcherMahasiswa?page=logout&&nrp=${mahasiswa.nrp}'>
                        <input type='submit' value='Logout' >
                    </form>
                </td>
            </tr>
        </table>
        <h1>List Daftar Beasiswa</h1>
    </body><table border="1">
        <thead>
            <tr>
                <th>
                    No.
                </th>
                <th>
                    Beasiswa
                </th>
                <th>
                    Tanggal pengajuan
                </th>               
            </tr>
        </thead>
        <tbody>
            <%int i = 1;%>
        <form method='post' action="DispatcherBeasiswa?page=daftarBeasiswa">
            <c:forEach items="${list_pengajuan}" var="bsw">
            </form>
            <tr>
                <td>
                    <%out.print(i);%>
                    <%i++;%>
                </td>
                <td>
                    ${bsw.idbeasiswa.namabeasiswa}
                </td>
                <td>
                    ${bsw.tanggalpengajuan}
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</html>
