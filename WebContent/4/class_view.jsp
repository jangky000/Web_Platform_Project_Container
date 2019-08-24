<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Class View</title>
</head>
<body>
    <div align="center">
        <table border="1" width="600" height="500">
            <thead>
                <tr>
                    <td>
                        <table border="0" width="600">
                            <thead>
                                <tr>
                                    <td align="center">
                                        <h1>수강 과목 추가/삭제</h1>
                                    </td>
                                    <td>
                                        <img src="updown_logo.png" width="200" height="130" />
                                    </td>
                                </tr>
                            </thead>

                        </table>
                    </td>
                </tr>
                <tr align="center" height="60px">
                    <td>
                        <p align="center"><h3>수강 추가 <button onclick="location.href = 'class_add.jsp'">+</button></h3></p>
                    </td>
                </tr>
            </thead>
            <tbody>
                <tr valign="top">
                    <td>
                        <table border="0" width="600">
                            <thead>
                                <tr>
                                    <td><h2>수강 목록</h2></td>
                                </tr>
                            </thead>
                            <tbody valign="top">
                                <tr>
                                    <td>MME-4104-01</td>
                                    <td>웹플랫폼개발</td>
                                    <td>성연식</td>
                                    <td>
                                        <button>-</button>
                                    </td>
                                </tr>

                                <tr>
                                    <td>MME-4090-01</td>
                                    <td>종합설계</td>
                                    <td>정승원</td>
                                    <td>
                                        <button>-</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
            <tfoot>
            </tfoot>
        </table>
    </div>
</body>
</html>
