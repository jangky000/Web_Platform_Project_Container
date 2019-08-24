<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>File Management</title>
</head>
<body>
    <div align="center">
        <table border="1" width="600" height="500">
            <thead>
                <tr>
                    <td>
                        <table border="0" width="600">
                            <thead>
                                <tr align="center">
                                    <td>
                                        <h1>파일관리</h1>
                                    </td>
                                    <td>
                                        <img src="updown_logo.png" width="200" height="130" />
                                    </td>
                                </tr>
                            </thead>
                        </table>
                    </td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <table>
                            <thead>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <button onclick="location.href = 'file_management1.jsp'">웹플랫폼개발</button>
                                    </td>
                                    <td>
                                        <button onclick="location.href = 'file_management1.jsp'">종합설계</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <button onclick="location.href = 'file_management1.jsp'">파이썬프로그래밍</button>
                                    </td>
                                    <td>
                                        <button onclick="location.href = 'Team_Folder.jsp'">종합설계 : A팀</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <button onclick="location.href = 'share_folder.jsp'">공유 폴더</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td>
                                        <button onclick="location.href = 'share_view.jsp'">공유 조회</button>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
