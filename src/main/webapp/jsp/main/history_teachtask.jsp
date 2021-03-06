<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/2/27
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>教师教学档案管理系统</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="${ctx}/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="${ctx}/assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="${ctx}/assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="${ctx}/assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">教师教学档案管理系统</a>
        </div>

        <div class="header-right">

            <a href="${ctx}/jsp/login.jsp" class="btn btn-danger" title="退出"><i class="fa fa-exclamation-circle fa-2x"></i></a>

        </div>
    </nav>
    <!-- /. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <div class="user-img-div">
                        <img src="${ctx}/assets/img/njsjdx.jpg" class="img-thumbnail" />

                        <div class="inner-text">
                            ${currentInfo.name}
                        </div>
                    </div>

                </li>


                <li>
                    <a  href="${ctx}/jsp/main/index.jsp"><i class="fa fa-dashboard "></i>个人信息</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop "></i>教学任务<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse in">
                        <li>
                            <a href="${ctx}/jsp/main/new_teachtask.jsp" ><i class="fa fa-toggle-on"></i>本学期教学任务</a>
                        </li>
                        <li>
                            <a href="${ctx}/jsp/main/history_teachtask.jsp" class="active-menu"><i class="fa fa-bell "></i>历史教学任务</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>成绩管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${ctx}/jsp/main/grade_add.jsp"><i class="fa fa-coffee"></i>录入成绩</a>
                        </li>
                        <li>
                            <a href="${ctx}/jsp/main/grade_find.jsp"><i class="fa fa-flash "></i>成绩查询</a>
                        </li>

                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-flash "></i>论文管理<span class="fa arrow"></span> </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${ctx}/jsp/main/paper_add.jsp"><i class="fa fa-toggle-on"></i>上传论文</a>
                        </li>
                        <li>
                            <a href="${ctx}/jsp/main/paper_find.jsp"><i class="fa fa-bell "></i>论文查询</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bicycle "></i>作业、实验管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">

                        <li>
                            <a href="${ctx}/jsp/main/work_add.jsp"><i class="fa fa-desktop "></i>作业、实验上传</a>
                        </li>
                        <li>
                            <a href="${ctx}/jsp/main/work_find.jsp"><i class="fa fa-code "></i>作业、实验查询</a>
                        </li>


                    </ul>
                </li>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="col-md-12">
                <!--   Kitchen Sink -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        历史教学任务
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>任务编号</th>
                                    <th>课程名称</th>
                                    <th>开始时间</th>
                                    <th>结束时间</th>
                                    <th>地点</th>
                                    <th>上课时间</th>
                                    <th>学分</th>
                                    <th>课程类型</th>
                                    <th>附件</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>

                            <ul class="pager">
                                <li><a href="#" id="goLast">上一页</a></li>
                                <li id="nowPage">1</li>
                                <li>/</li>
                                <li id="totalPage">10</li>
                                <li><a href="#" id="goNext">下一页</a></li>
                            </ul>

                        </div>
                    </div>
                </div>
                <!-- End  Kitchen Sink -->
            </div>
        </div>
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->

<div id="footer-sec">
    &copy; 2019.FileManagement.com
</div>
<!-- /. FOOTER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="${ctx}/assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="${ctx}/assets/js/bootstrap.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="${ctx}/assets/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="${ctx}/assets/js/custom.js"></script>
<script>
    var pageNum=1;
    var nextPageNum=2;
    var lastPage=1;
    $(function (){

        $.ajax({
            type:"get",
            url:'/history_teachtasks/${currentUser.id}/'+pageNum,
            async:false,
            dataType:"json",
            contentType:"application/json",
            success: function(result){
                console.log(result);
                $.each(result.data.list, function(i,data) {
                    var str="<tr>";
                    str+="<td>"+data.id+"</td>";
                    str+="<td>"+data.courseTitle+"</td>";
                    data.timeBegin= timestampToTime(data.timeBegin);
                    str+="<td>"+data.timeBegin+"</td>";
                    data.timeEnd= timestampToTime(data.timeEnd);
                    str+="<td>"+data.timeEnd+"</td>";
                    str+="<td>"+data.location+"</td>";
                    str+="<td>"+data.classTime+"</td>";
                    str+="<td>"+data.credit+"</td>";
                    str+="<td>"+data.courseType+"</td>";
                    str+="<td><a href='/file/"+data.fileName+"'>"+data.fileName+"</a></td>";
                    str+="</tr>";
                    $("tbody").append(str);
                });
                nextPageNum=result.data.nextPage;
                pageNum=result.data.pageNum;
                lastPage=result.data.prePage;
                $("#nowPage").html(result.data.pageNum);
                $("#totalPage").html(result.data.pages);
            }
        });

    })
    $("#goNext").click(function(){
        $.ajax({
            type:"get",
            url:'/history_teachtasks/${currentUser.id}/'+nextPageNum,
            async:false,
            dataType:"json",
            contentType:"application/json",
            success: function(result){
                console.log(result);
                $("tbody").empty();
                $.each(result.data.list, function(i,data) {
                    var str="<tr>";
                    str+="<td>"+data.id+"</td>";
                    str+="<td>"+data.courseTitle+"</td>";
                    data.timeBegin= timestampToTime(data.timeBegin);
                    str+="<td>"+data.timeBegin+"</td>";
                    data.timeEnd= timestampToTime(data.timeEnd);
                    str+="<td>"+data.timeEnd+"</td>";
                    str+="<td>"+data.location+"</td>";
                    str+="<td>"+data.classTime+"</td>";
                    str+="<td>"+data.credit+"</td>";
                    str+="<td>"+data.courseType+"</td>";
                    str+="<td><a href='${ctx}/file/"+data.fileName+"'>"+data.fileName+"</a></td>";
                    str+="</tr>";
                    $("tbody").append(str);
                });
                nextPageNum=result.data.nextPage;
                pageNum=result.data.pageNum;
                lastPage=result.data.prePage;
                $("#nowPage").html(result.data.pageNum);
                $("#totalPage").html(result.data.pages);
            }
        });
    })


    $("#goLast").click(function(){

        $.ajax({
            type:"get",
            url:'/history_teachtasks/${currentUser.id}/'+lastPage,
            async:false,
            dataType:"json",
            contentType:"application/json",
            success: function(result){
                console.log(result);
                $("tbody").empty();
                $.each(result.data.list, function(i,data) {
                    var str="<tr>";
                    str+="<td>"+data.id+"</td>";
                    str+="<td>"+data.courseTitle+"</td>";
                    data.timeBegin= timestampToTime(data.timeBegin);
                    str+="<td>"+data.timeBegin+"</td>";
                    data.timeEnd = timestampToTime(data.timeEnd);
                    str+="<td>"+data.timeEnd+"</td>";
                    str+="<td>"+data.location+"</td>";
                    str+="<td>"+data.classTime+"</td>";
                    str+="<td>"+data.credit+"</td>";
                    str+="<td>"+data.courseType+"</td>";
                    str+="<td><a href='${ctx}/file/"+data.fileName+"'>"+data.fileName+"</a></td>";
                    str+="</tr>";
                    $("tbody").append(str);
                });
                nextPageNum=result.data.nextPage;
                pageNum=result.data.pageNum;
                lastPage=result.data.prePage;
                $("#nowPage").html(result.data.pageNum);
                $("#totalPage").html(result.data.pages);
            },
            error: function (result) {
                console.log(result);
            }
        });
    })


    function timestampToTime(timestamp) {
        var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
        var Y = date.getFullYear() + '-';
        var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
        var D = date.getDate() + ' ';
        var h = date.getHours() + ':';
        var m = date.getMinutes() + ':';
        var s = date.getSeconds();
        return Y + M + D;
    }

</script>


</body>
</html>

