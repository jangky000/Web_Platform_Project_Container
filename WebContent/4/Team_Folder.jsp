<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>File Management</title>
</head>
<body>
    <div align="center">
        <h1>웹플랫폼개발:에플삼킴<img src="updown_logo.png" width="200" height="130" align="center" /></h1>
        <h1>DRAG & DROP</h1>
        <table border="1" width="600" height="500">
            <thead>
                <tr align="center" height="60">
                    <td>
                        <input type="text" name="inputbox" value="ex)수정할 이름">
                        <button>수정</button>
                        <button>삭제</button>
                        <button>다운</button>
                    </td>
                </tr>
            </thead>
            <tbody>
                <tr valign="top">
                    <td>
                        <table border="0" width="600">
                            <thead>
                                <tr>
                                    <td><h2></h2></td>
                                    <td><h2>이름</h2></td>
                                    <td><h2>수정한 날짜</h2></td>
                                    <td><h2>크기</h2></td>
                                </tr>
                            </thead>
                            <tbody valign="top">
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>발표자료.pptx</td>
                                    <td>2019.04.09</td>
                                    <td>450KB</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>홈페이지.html</td>
                                    <td>2019.04.10</td>
                                    <td>4KB</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>프로젝트.exe</td>
                                    <td>2019.04.11</td>
                                    <td>4500KB</td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
