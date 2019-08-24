<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<%String id = request.getParameter("id");%>
<html>
    <head>
        <title>project_join_information page</title>
        <!-- <meta content = "text/html"; charset="euc-kr"> -->
    </head>
    <body>
        <table>
            <tr>
                <td>
                    <a href="main5.jsp?id=<%=id%>"><img src="main_logo.PNG" width="150" height="60"></a>
                </td>

                <td width = "300"></td>
                <td>
                    <form action="search.jsp">
                        <br>
                        <input type="text"  name ="search" placeholder="검색">
                        <input type="submit" value="검색">
                    </form>
                </td>
            </tr>
        </table>
        <div>
            <table  width="400">
                <tr>
                  <th align="left"><u><a href="main5.jsp">프로젝트 둘러보기</a></u></th>
                  <th align="left"><u><a href="project_recruit.jsp">프로젝트 모집</a></u></th>
                  <th align="left"><u><a href="my_project.jsp">내 프로젝트</a></u></th>
                </tr>
            </table>
        </div>

        <hr>

        <br><br>
        <!-- 프로젝트 기본정보 -->
        <div>
            <table align="center" width="98%">
                <tr>
                    <td colspan="2"><b><u>뇌파를 이용한 외부환경 제어 인터페이스 개발</u><img src="project_logo.png" width="30" height="30"/></b><br></td>
                    <td align="right"><form><input type="submit" value="수정"></form></td>
                </tr>
                <tr>
                    <td><img src="image_sample.jpg" width="300" height="200"></td>
                    <td width=80%>
                      <ul>
                              <li>프로젝트 예상 시작일 : 2019 / 05 / 06</li><br><br>

                              <li>모집인원 : 6명</li><br><br>

                              <li>카테고리 : 아두이노</li>
                      </ul>

                    </td>
                    <td></td>
                </tr>
            </table>
        </div>

        <br><br>

        <!-- 프로젝트 상세 -->
        <div>
            <!-- 프로젝트 하위 메뉴 -->
            <div>
                <table  width="400">
                    <tr>
                      <th align="left" id = "menu"><u><a href="#summary">프로젝트 개요</a></u></th>
                      <th align="left"><u><a href="#join">참여 신청</a></u></th>


                    </tr>
                </table>
            </div>
            <br><br>
            <strong id = "summary"><프로젝트 개요></strong>

            <hr>


            <div>
                <table  width="98%" align="center">
                    <tr>

                        <th align="right"><form><input type="submit" value="저장"></form></th>
                    </tr>


                </table>


            </div>

            <div>
                <table  width="98%" align="center">
                    <tr>
                        <th align="left" width=80%><u>Reference</u></th>

                    </tr>
                    <tr>
                        <td colspan="2">
                            <ul>
                                <li>뇌파 데이터를 통한 딥러닝 분석, 뇌파를 통한 아두이노 프로그램</li>
                            </ul>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td bgcolor="lightgreen">
                            <blockquote>
                                    뇌-컴퓨터 인터페이스(Brain Computer Interface, BCI)는 뇌파(Brain Wave)를 통해 컴퓨터를 제어하는 기술로서,
                                    신체적 결함이나 장애로 인해, 자신의 의사를 표현, 전달 할 수 없는 사람들에게 새로운 의사소통 수단을 제공하는 연구 분야이다.
                                    생각만으로 컴퓨터를 제어하고 이와 연결된 각종 조작기구들을 동작시키기 위해서는 뇌세포의 전기적인 신경 신호를 읽어,
                                    특정 패턴을 제어 신호로 빠르고, 정확하게 입력할 수 있어야 한다.
                                    본 연구는 뇌파의 경향을 기계 학습하는 알고리즘을 통해 보다 안정적으로 외부 디바이스를 제어할 수 있는 신호를 추출할 수 있도록 돕는 모델을 만들기 위한 것이다.<br>
                            </blockquote>
                        </td>
                    </tr>
                </table>
                <br><br><br>
                <a href="#menu">Go to the menu</a>
            </div>

            <div>
                <br><br><br>
                <strong id = "join"><참여 신청></strong>

                <hr>


                <div>
                    <table  width="98%" align="center">
                        <tr>

                            <th align="right"><form action="recruit_apply_click_modification.jsp"><input type="submit" value="수정"></form></th>
                        </tr>


                    </table>


                </div>

                <div>
                <table border = "2">
                    <tr>
                    <td width = "19%" bgcolor = "yellow">이름</td>
                    <td width = "700">박oo</td>
                    </tr>


                    <tr>
                    <td  bgcolor = "yellow">학번</td>
                    <td>201315426</td>
                    </tr>


                    <tr>
                    <td bgcolor = "yellow">학과</td>
                    <td>멀티미디어공학과</td>
                    </tr>


                    <tr>
                    <td bgcolor = "yellow">역량</td>
                    <td>HTML, javascript, jsp, servlet, css 가능합니다.</td>
                    </tr>


                </table>
                </div>

            </div>
            <br><br><br>
            <a href="#menu">Go to the menu</a>

        </div>
    </body>
</html>
