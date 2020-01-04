<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="Chrome">
    <title>DP LABS Calendar Practice</title>
    <link rel=" shortcut icon" href="image/favicon.ico">

    <link rel="stylesheet" href="vendor/css/fullcalendar.min.css">
    <link rel="stylesheet" href="vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/css/select2.min.css">
    <link rel="stylesheet" href="vendor/css/bootstrap-datetimepicker.min.css">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <div class="container">

        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu" style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">약속날짜</a></li>
                <li><a tabindex="-1" href="#">여행</a></li>
                <li><a tabindex="-1" href="#">시험</a></li>
                <li><a tabindex="-1" href="#">다른일정</a></li>
                <li><a tabindex="-1" href="#">기념일</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">취소</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar" class="fc fc-unthemed fc-ltr"><div class="fc-toolbar fc-header-toolbar"><div class="fc-left"><button type="button" class="fc-today-button fc-button fc-state-default fc-corner-left fc-corner-right">오늘</button><button type="button" class="fc-prevYear-button fc-button fc-state-default fc-corner-left fc-corner-right" aria-label="prevYear"><span class="fc-icon fc-icon-left-double-arrow"></span></button><button type="button" class="fc-nextYear-button fc-button fc-state-default fc-corner-left fc-corner-right" aria-label="nextYear"><span class="fc-icon fc-icon-right-double-arrow"></span></button><button type="button" class="fc-viewWeekends-button fc-button fc-state-default fc-corner-left fc-corner-right">주말</button></div><div class="fc-right"><div class="fc-button-group"><button type="button" class="fc-month-button fc-button fc-state-default fc-corner-left fc-state-active">월</button><button type="button" class="fc-agendaWeek-button fc-button fc-state-default">주</button><button type="button" class="fc-agendaDay-button fc-button fc-state-default">일</button><button type="button" class="fc-listWeek-button fc-button fc-state-default fc-corner-right">일정목록</button></div></div><div class="fc-center"><button type="button" class="fc-prev-button fc-button fc-state-default fc-corner-left fc-corner-right" aria-label="prev"><span class="fc-icon fc-icon-left-single-arrow"></span></button><h2>2019년 5월</h2><button type="button" class="fc-next-button fc-button fc-state-default fc-corner-left fc-corner-right" aria-label="next"><span class="fc-icon fc-icon-right-single-arrow"></span></button></div><div class="fc-clear"></div></div><div class="fc-view-container" style=""><div class="fc-view fc-month-view fc-basic-view" style=""><table class=""><thead class="fc-head"><tr><td class="fc-head-container fc-widget-header"><div class="fc-row fc-widget-header"><table class=""><thead><tr><th class="fc-day-header fc-widget-header fc-sun"><span>일</span></th><th class="fc-day-header fc-widget-header fc-mon"><span>월</span></th><th class="fc-day-header fc-widget-header fc-tue"><span>화</span></th><th class="fc-day-header fc-widget-header fc-wed"><span>수</span></th><th class="fc-day-header fc-widget-header fc-thu"><span>목</span></th><th class="fc-day-header fc-widget-header fc-fri"><span>금</span></th><th class="fc-day-header fc-widget-header fc-sat"><span>토</span></th></tr></thead></table></div></td></tr></thead><tbody class="fc-body"><tr><td class="fc-widget-content"><div class="fc-scroller fc-day-grid-container" style="overflow: hidden; height: 491px;"><div class="fc-day-grid fc-unselectable"><div class="fc-row fc-week fc-widget-content" style="height: 81px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-other-month fc-past" data-date="2019-04-28"></td><td class="fc-day fc-widget-content fc-mon fc-other-month fc-past" data-date="2019-04-29"></td><td class="fc-day fc-widget-content fc-tue fc-other-month fc-past" data-date="2019-04-30"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2019-05-01"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2019-05-02"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2019-05-03"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2019-05-04"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-other-month fc-past" data-date="2019-04-28"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-04-28&quot;,&quot;type&quot;:&quot;day&quot;}">28</a></td><td class="fc-day-top fc-mon fc-other-month fc-past" data-date="2019-04-29"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-04-29&quot;,&quot;type&quot;:&quot;day&quot;}">29</a></td><td class="fc-day-top fc-tue fc-other-month fc-past" data-date="2019-04-30"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-04-30&quot;,&quot;type&quot;:&quot;day&quot;}">30</a></td><td class="fc-day-top fc-wed fc-past" data-date="2019-05-01"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-01&quot;,&quot;type&quot;:&quot;day&quot;}">1</a></td><td class="fc-day-top fc-thu fc-past" data-date="2019-05-02"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-02&quot;,&quot;type&quot;:&quot;day&quot;}">2</a></td><td class="fc-day-top fc-fri fc-past" data-date="2019-05-03"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-03&quot;,&quot;type&quot;:&quot;day&quot;}">3</a></td><td class="fc-day-top fc-sat fc-past" data-date="2019-05-04"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-04&quot;,&quot;type&quot;:&quot;day&quot;}">4</a></td></tr></thead></table></div></div><div class="fc-row fc-week fc-widget-content" style="height: 81px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2019-05-05"></td><td class="fc-day fc-widget-content fc-mon fc-past" data-date="2019-05-06"></td><td class="fc-day fc-widget-content fc-tue fc-past" data-date="2019-05-07"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2019-05-08"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2019-05-09"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2019-05-10"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2019-05-11"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2019-05-05"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-05&quot;,&quot;type&quot;:&quot;day&quot;}">5</a></td><td class="fc-day-top fc-mon fc-past" data-date="2019-05-06"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-06&quot;,&quot;type&quot;:&quot;day&quot;}">6</a></td><td class="fc-day-top fc-tue fc-past" data-date="2019-05-07"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-07&quot;,&quot;type&quot;:&quot;day&quot;}">7</a></td><td class="fc-day-top fc-wed fc-past" data-date="2019-05-08"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-08&quot;,&quot;type&quot;:&quot;day&quot;}">8</a></td><td class="fc-day-top fc-thu fc-past" data-date="2019-05-09"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-09&quot;,&quot;type&quot;:&quot;day&quot;}">9</a></td><td class="fc-day-top fc-fri fc-past" data-date="2019-05-10"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-10&quot;,&quot;type&quot;:&quot;day&quot;}">10</a></td><td class="fc-day-top fc-sat fc-past" data-date="2019-05-11"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-11&quot;,&quot;type&quot;:&quot;day&quot;}">11</a></td></tr></thead></table></div></div><div class="fc-row fc-week fc-widget-content" style="height: 81px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2019-05-12"></td><td class="fc-day fc-widget-content fc-mon fc-past" data-date="2019-05-13"></td><td class="fc-day fc-widget-content fc-tue fc-past" data-date="2019-05-14"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2019-05-15"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2019-05-16"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2019-05-17"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2019-05-18"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2019-05-12"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-12&quot;,&quot;type&quot;:&quot;day&quot;}">12</a></td><td class="fc-day-top fc-mon fc-past" data-date="2019-05-13"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-13&quot;,&quot;type&quot;:&quot;day&quot;}">13</a></td><td class="fc-day-top fc-tue fc-past" data-date="2019-05-14"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-14&quot;,&quot;type&quot;:&quot;day&quot;}">14</a></td><td class="fc-day-top fc-wed fc-past" data-date="2019-05-15"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-15&quot;,&quot;type&quot;:&quot;day&quot;}">15</a></td><td class="fc-day-top fc-thu fc-past" data-date="2019-05-16"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-16&quot;,&quot;type&quot;:&quot;day&quot;}">16</a></td><td class="fc-day-top fc-fri fc-past" data-date="2019-05-17"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-17&quot;,&quot;type&quot;:&quot;day&quot;}">17</a></td><td class="fc-day-top fc-sat fc-past" data-date="2019-05-18"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-18&quot;,&quot;type&quot;:&quot;day&quot;}">18</a></td></tr></thead></table></div></div><div class="fc-row fc-week fc-widget-content" style="height: 81px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2019-05-19"></td><td class="fc-day fc-widget-content fc-mon fc-past" data-date="2019-05-20"></td><td class="fc-day fc-widget-content fc-tue fc-past" data-date="2019-05-21"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2019-05-22"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2019-05-23"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2019-05-24"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2019-05-25"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2019-05-19"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-19&quot;,&quot;type&quot;:&quot;day&quot;}">19</a></td><td class="fc-day-top fc-mon fc-past" data-date="2019-05-20"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-20&quot;,&quot;type&quot;:&quot;day&quot;}">20</a></td><td class="fc-day-top fc-tue fc-past" data-date="2019-05-21"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-21&quot;,&quot;type&quot;:&quot;day&quot;}">21</a></td><td class="fc-day-top fc-wed fc-past" data-date="2019-05-22"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-22&quot;,&quot;type&quot;:&quot;day&quot;}">22</a></td><td class="fc-day-top fc-thu fc-past" data-date="2019-05-23"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-23&quot;,&quot;type&quot;:&quot;day&quot;}">23</a></td><td class="fc-day-top fc-fri fc-past" data-date="2019-05-24"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-24&quot;,&quot;type&quot;:&quot;day&quot;}">24</a></td><td class="fc-day-top fc-sat fc-past" data-date="2019-05-25"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-25&quot;,&quot;type&quot;:&quot;day&quot;}">25</a></td></tr></thead></table></div></div><div class="fc-row fc-week fc-widget-content" style="height: 81px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2019-05-26"></td><td class="fc-day fc-widget-content fc-mon fc-past" data-date="2019-05-27"></td><td class="fc-day fc-widget-content fc-tue fc-past" data-date="2019-05-28"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2019-05-29"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2019-05-30"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2019-05-31"></td><td class="fc-day fc-widget-content fc-sat fc-other-month fc-past" data-date="2019-06-01"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2019-05-26"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-26&quot;,&quot;type&quot;:&quot;day&quot;}">26</a></td><td class="fc-day-top fc-mon fc-past" data-date="2019-05-27"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-27&quot;,&quot;type&quot;:&quot;day&quot;}">27</a></td><td class="fc-day-top fc-tue fc-past" data-date="2019-05-28"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-28&quot;,&quot;type&quot;:&quot;day&quot;}">28</a></td><td class="fc-day-top fc-wed fc-past" data-date="2019-05-29"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-29&quot;,&quot;type&quot;:&quot;day&quot;}">29</a></td><td class="fc-day-top fc-thu fc-past" data-date="2019-05-30"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-30&quot;,&quot;type&quot;:&quot;day&quot;}">30</a></td><td class="fc-day-top fc-fri fc-past" data-date="2019-05-31"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-05-31&quot;,&quot;type&quot;:&quot;day&quot;}">31</a></td><td class="fc-day-top fc-sat fc-other-month fc-past" data-date="2019-06-01"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-06-01&quot;,&quot;type&quot;:&quot;day&quot;}">1</a></td></tr></thead></table></div></div><div class="fc-row fc-week fc-widget-content" style="height: 86px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-other-month fc-past" data-date="2019-06-02"></td><td class="fc-day fc-widget-content fc-mon fc-other-month fc-past" data-date="2019-06-03"></td><td class="fc-day fc-widget-content fc-tue fc-other-month fc-past" data-date="2019-06-04"></td><td class="fc-day fc-widget-content fc-wed fc-other-month fc-past" data-date="2019-06-05"></td><td class="fc-day fc-widget-content fc-thu fc-other-month fc-past" data-date="2019-06-06"></td><td class="fc-day fc-widget-content fc-fri fc-other-month fc-past" data-date="2019-06-07"></td><td class="fc-day fc-widget-content fc-sat fc-other-month fc-past" data-date="2019-06-08"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-other-month fc-past" data-date="2019-06-02"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-06-02&quot;,&quot;type&quot;:&quot;day&quot;}">2</a></td><td class="fc-day-top fc-mon fc-other-month fc-past" data-date="2019-06-03"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-06-03&quot;,&quot;type&quot;:&quot;day&quot;}">3</a></td><td class="fc-day-top fc-tue fc-other-month fc-past" data-date="2019-06-04"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-06-04&quot;,&quot;type&quot;:&quot;day&quot;}">4</a></td><td class="fc-day-top fc-wed fc-other-month fc-past" data-date="2019-06-05"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-06-05&quot;,&quot;type&quot;:&quot;day&quot;}">5</a></td><td class="fc-day-top fc-thu fc-other-month fc-past" data-date="2019-06-06"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-06-06&quot;,&quot;type&quot;:&quot;day&quot;}">6</a></td><td class="fc-day-top fc-fri fc-other-month fc-past" data-date="2019-06-07"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-06-07&quot;,&quot;type&quot;:&quot;day&quot;}">7</a></td><td class="fc-day-top fc-sat fc-other-month fc-past" data-date="2019-06-08"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-06-08&quot;,&quot;type&quot;:&quot;day&quot;}">8</a></td></tr></thead></table></div></div></div></div></td></tr></tbody></table></div></div></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class="allDayNewEvent" id="edit-allDay" type="checkbox">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title" required="required">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">구분</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                    <option value="약속날짜">약속날짜</option>
                                    <option value="여행">여행</option>
                                    <option value="시험">시험</option>
                                    <option value="다른일정">다른일정</option>
                                    <option value="기념일">기념일</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">설명</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc" id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">필터</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">구분별</label>
                    <div class="input-group">
                        <select class="filter select2-hidden-accessible" id="type_filter" multiple="" data-select2-id="type_filter" tabindex="-1" aria-hidden="true">
                            <option value="약속날짜">약속날짜</option>
                            <option value="여행">여행</option>
                            <option value="시험">시험</option>
                            <option value="다른일정">다른일정</option>
                            <option value="기념일">기념일</option>
                        </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 500px;"><span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1"><ul class="select2-selection__rendered"><li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="none" spellcheck="false" role="textbox" aria-autocomplete="list" placeholder="선택.." style="width: 498px;"></li></ul></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                    </div>
                </div>

                <div class="col-lg-6">
                    <label for="calendar_view">등록자별</label>
                    <div class="input-group">
                        <label class="checkbox-inline"><input class="filter" type="checkbox" value="규강" checked="">규강</label>
                        <label class="checkbox-inline"><input class="filter" type="checkbox" value="청현" checked="">청현</label>
                        <label class="checkbox-inline"><input class="filter" type="checkbox" value="탯레" checked="">탯레</label>
                        <label class="checkbox-inline"><input class="filter" type="checkbox" value="완기하라버지" checked="">완기하라버지</label>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.filter panel -->
    </div>
    <!-- /.container -->

    <script src="vendor/js/jquery.min.js"></script>
    <script src="vendor/js/bootstrap.min.js"></script>
    <script src="vendor/js/moment.min.js"></script>
    <script src="vendor/js/fullcalendar.min.js"></script>
    <script src="vendor/js/ko.js"></script>
    <script src="vendor/js/select2.min.js"></script>
    <script src="vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/addEvent.js"></script>
    <script src="js/editEvent.js"></script>
    <script src="js/etcSetting.js"></script>
</body>
</html>