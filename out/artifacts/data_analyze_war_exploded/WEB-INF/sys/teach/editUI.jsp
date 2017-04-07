<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>本科教学工作量-编辑</title>
	<!--[if lt IE 9]>


    <script src="${pageContext.request.contextPath}/resource/sys/Javascript/Flot/excanvas.js"></script>
    <![endif]-->
	<!-- The Fonts -->

	<!-- The Main CSS File -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/sys/CSS/style.css" />
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/jQuery/jquery-1.7.2.min.js"></script>


	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/sys/jquery-easyui/themes/default/easyui.css">

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/sys/jquery-easyui/themes/icon.css">

	<script type="text/javascript" src="${pageContext.request.contextPath}/resource/sys/jquery-easyui/jquery.min.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resource/sys/jquery-easyui/jquery.easyui.min.js"></script>




<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
	<!-- Change Pattern -->
	<div class="changePattern">
		<span id="pattern1"></span>
		<span id="pattern2"></span>
		<span id="pattern3"></span>
		<span id="pattern4"></span>
		<span id="pattern5"></span>
		<span id="pattern6"></span>
	</div>
	<!-- Top Panel -->
	<div class="top_panel">
		<div class="wrapper">
			<div class="user">
				<img src="${pageContext.request.contextPath}/resource/sys/Images/user_avatar.png" alt="user_avatar" class="user_avatar" />
				<span class="label">您好！管理员用户</span>
				<!-- Top Tooltip -->
				<div class="top_tooltip">
					<div>
						<ul class="user_options">

							<li class="i_16_logout"><a href="Login.html" title="注销"></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="top_links">
				<ul>
					<li class="i_22_search search_icon">
						<div class="top_tooltip right_direction">
							<div>
								<form class="top_search_form"/>
									<input type="text" class="top_search_input" />
									<input type="submit" class="top_search_submit" value="" />
								</form>
							</div>
						</div>
					</li>

				</ul>
			</div>
		</div>
	</div>
	<header class="main_header">
		<div class="wrapper">
			<div class="logo">
				<a href="#" style="text-decoration: none;color: #83888b;font-size: 30px" title="Kanrisha Home">
					数据专家数据维护系统
				</a>
			</div>

		</div>
	</header>


	<div class="wrapper contents_wrapper">
		
		<aside class="sidebar">
			<ul class="tab_nav">
				<li class="active_tab i_32_dashboard">
					<a href="${pageContext.request.contextPath}/sys_home.do" title="General Info">
						<span class="tab_label">主面板</span>
						<span class="tab_info"></span>
					</a>
				</li>

				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_teacher/selectPageList.do" title="Some Rows">
						<span class="tab_label">教师基本信息</span>
					</a>
				</li>


				<li class="i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_teach/selectUI.do" title="Some Rows">
						<span class="tab_label">本科教学工作量</span>
					</a>
				</li>

				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_teachsum/selectUI.do" title="Some Rows">
						<span class="tab_label">研究生教学工作量</span>
					</a>
				</li>


				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_papers/selectUI.do" title="Some Rows">
						<span class="tab_label">学术论文</span>
					</a>
				</li>

				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_projects/selectUI.do" title="Some Rows">
						<span class="tab_label">科研项目</span>
					</a>
				</li>


			</ul>
		</aside>

		<div class="contents">
			<div class="grid_wrapper">

				<div class="g_6 contents_header">
					<h3 class="i_16_dashboard tab_label">控制面板</h3>
					<div><span class="label"></span></div>
				</div>

				<div class="g_12">

					<div class="easyui-panel" title="${sessionScope.SELECT}-编辑" style="width:100%;max-width:400px;padding:30px 60px;">
						<form id="ff" method="post" action="${pageContext.request.contextPath}/sys_teach/update_dynamic.do?id=${teach._id}">
							<div style="margin-bottom:20px">

								<label>工资号</label>

								<input class="easyui-textbox" name="salary_id" value="${teach.salary_id}" style="width:100%" data-options="required:true">
							</div>
							<div style="margin-bottom:20px">
								<label>姓名</label>

								<input class="easyui-textbox" name="name" style="width:100%" value="${teach.name}" data-options="required:true">
							</div>
							<div style="margin-bottom:20px">
								<label>职称</label>

								<input class="easyui-textbox" name="rank" style="width:100%" value="${teach.rank}" data-options="required:true">
							</div>
							<div style="margin-bottom:20px">
								<label>职务</label>

								<input class="easyui-textbox" name="duty" style="width:100%" value="${teach.duty}" data-options="required:true">
					        </div>

							<div style="margin-bottom:20px">
								<label>理论课折合学时(上半年)</label>
								<input class="easyui-textbox" name="theory_fs" style="width:100%" value="${teach.theory_fs}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>专业技术人员兼职补贴学时(上)</label>

								<input class="easyui-textbox" name="profession_fs" style="width:100%" value="${teach.profession_fs}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">

								<label>准备实验学时(上)</label>

								<input class="easyui-textbox" name="ready_fs" style="width:100%" value="${teach.ready_fs}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>指导实验学时(上)</label>

								<input class="easyui-textbox" name="guide_fs" style="width:100%" value="${teach.guide_fs}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>毕业论文、设计学时；实习、课程设计、社会调查学时(上)</label>

								<input class="easyui-textbox" name="graduation_fs" style="width:100%" value="${teach.graduation_fs}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>上半年合计</label>

								<input class="easyui-textbox" name="first_sum" style="width:100%" value="${teach.first_sum}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>理论课折合学时(下半年)</label>

								<input class="easyui-textbox" name="theory_ss" style="width:100%" value="${teach.theory_ss}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>专业技术人员兼职补贴学时(下)</label>

								<input class="easyui-textbox" name="profession_ss" value="${teach.profession_ss}" style="width:100%" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>准备实验学时(下)</label>

								<input class="easyui-textbox" name="ready_ss" value="${teach.ready_ss}" style="width:100%" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>指导实验学时(下)</label>

								<input class="easyui-textbox" name="guide_ss" style="width:100%" value="${teach.guide_ss}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>毕业论文、设计学时；实习、课程设计、社会调查学时(下)</label>

								<input class="easyui-textbox" name="graduation_ss" style="width:100%" value="${teach.graduation_ss}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>下半年合计</label>

								<input class="easyui-textbox" name="second_sum" style="width:100%" value="${teach.second_sum}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>备注(关键岗)</label>

								<input class="easyui-textbox" name="remark_job" style="width:100%" value="${teach.remark_job}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>全年度合计</label>

								<input class="easyui-textbox" name="year_sum" style="width:100%" value="${teach.year_sum}" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>二类通识课，重修班，个性课单独开班课程工作量</label>

								<input class="easyui-textbox" name="second_etc" value="${teach.second_etc}" style="width:100%" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>创新课程工作量</label>

								<input class="easyui-textbox" name="innovative_course" value="${teach.innovative_course}" style="width:100%" data-options="required:true">
							</div>

							<div style="margin-bottom:20px">
								<label>学院算岗贴工作量</label>

								<input class="easyui-textbox" name="college_workload" value="${teach.college_workload}" style="width:100%" data-options="required:true">
							</div>


							<div style="text-align:center;padding:5px 0">
								<input type="submit" class="easyui-linkbutton" style="width:80px"/>
							</div>


						</form>

					</div>


				</div>

				<!-- Separator -->
				<div class="g_12 separator"><span></span></div>

			</div>
		</div>

	</div>

	<footer>
		<div class="wrapper">
			<span class="copyright">
				&copy; Copyright &copy; 2017.南昌大学信息工程学院 All rights reserved.
			</span>
		</div>
	</footer>
</body>
</html>
