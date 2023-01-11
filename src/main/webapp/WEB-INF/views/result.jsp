<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
int pageNo = request.getParameter("pageNo") == null ? 0 : Integer.parseInt(request.getParameter("pageNo"));
int i = 0;
String trait_associated = request.getParameter("trait_associated") == null ? "" : request.getParameter("trait_associated");
String username = "root";
String password = "Welcome@123";
String url = "jdbc:mysql://localhost:3306/db_trait";
String query = "SELECT COUNT(*) FROM trait";
int total = 0;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, username, password);
	PreparedStatement pstmt = conn.prepareStatement(query);
	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		total = rs.getInt(1);
	}
} catch (Exception e) {

}
%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Trait-specific genic-marker database for rice</title>
<!-- base:css -->
<link rel="stylesheet"
	href="/resources/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="/resources/vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="/resources/css/style.css">
<!-- endinject -->
<!-- <link rel="shortcut icon" href="images/favicon.png" /> -->
</head>

<body>
	<div class="container-scroller">
		<!-- partial:partials/_horizontal-navbar.html -->
		<div class="horizontal-menu">
			<nav class="navbar top-navbar col-lg-12 col-12 p-0">
				<div class="container-fluid">
					<div
						class="navbar-menu-wrapper d-flex align-items-center justify-content-between">

						<div
							class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
							<a class="navbar-brand brand-logo" href="/trait/index"
								style="font-weight: bold;">Trait-specific genic-marker
								database for rice</a>
						</div>
						<ul class="navbar-nav navbar-nav-right">
							<li class="nav-item dropdown  d-lg-flex d-none">
								<button type="button" class="btn btn-inverse-primary btn-sm">Product
								</button>
							</li>
							<li class="nav-item dropdown d-lg-flex d-none"><a
								class="dropdown-toggle show-dropdown-arrow btn btn-inverse-primary btn-sm"
								id="nreportDropdown" href="#" data-bs-toggle="dropdown">
									Reports </a>
								<div
									class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
									aria-labelledby="nreportDropdown">
									<p class="mb-0 font-weight-medium float-left dropdown-header">Reports</p>
									<a class="dropdown-item"> <i
										class="mdi mdi-file-pdf text-primary"></i> Pdf
									</a> <a class="dropdown-item"> <i
										class="mdi mdi-file-excel text-primary"></i> Exel
									</a>
								</div></li>
							<li class="nav-item dropdown d-lg-flex d-none">
								<button type="button" class="btn btn-inverse-primary btn-sm">Settings</button>
							</li>
							<li class="nav-item nav-profile dropdown"><a
								class="nav-link dropdown-toggle" href="#"
								data-bs-toggle="dropdown" id="profileDropdown"> <span
									class="nav-profile-name">User</span> <span
									class="online-status"></span> <!-- <img src="images/faces/face28.png" alt="profile" /> -->
							</a>
								<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
									aria-labelledby="profileDropdown">
									<a class="dropdown-item"> <i
										class="mdi mdi-settings text-primary"></i> Settings
									</a> <a class="dropdown-item"> <i
										class="mdi mdi-logout text-primary"></i> Logout
									</a>
								</div></li>
						</ul>
						<button
							class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
							type="button" data-toggle="horizontal-menu-toggle">
							<span class="mdi mdi-menu"></span>
						</button>
					</div>
				</div>
			</nav>
			<nav class="bottom-navbar">
				<div class="container">
					<ul class="nav page-navigation">
						<li class="nav-item"><a class="nav-link" href="/trait/index">
								<!-- <i class="mdi mdi-file-document-box menu-icon"></i> --> <span
								class="menu-title">Home</span>
						</a></li>
						<li class="nav-item"><a href="/trait/methodology"
							class="nav-link"> <!-- <i class="mdi mdi-chart-areaspline menu-icon"></i> -->
								<span class="menu-title">Methodology</span> <i
								class="menu-arrow"></i>
						</a></li>
						<li class="nav-item"><a href="/trait/overview"
							class="nav-link"> <!-- <i class="mdi mdi-finance menu-icon"></i> -->
								<span class="menu-title">Overview</span> <i class="menu-arrow"></i>
						</a></li>
						<li class="nav-item"><a href="/trait/search_trait"
							class="nav-link"> <!-- <i class="mdi mdi-grid menu-icon"></i> -->
								<span class="menu-title">Search</span> <i class="menu-arrow"></i>
						</a></li>
						<li class="nav-item"><a href="/trait/publications"
							class="nav-link"> <!-- <i class="mdi mdi-emoticon menu-icon"></i> -->
								<span class="menu-title">Publications</span> <i
								class="menu-arrow"></i>
						</a></li>
						<li class="nav-item"><a href="" class="nav-link"> <!-- <i class="mdi mdi-file-document-box-outline menu-icon"></i> -->
								<span class="menu-title">Contact Us</span>
						</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<br>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<div class="main-panel">
				<div class="col-12 grid-margin" id="doc-intro">
					<div class="card">
						<div class="card-body">
							<h3 class="text-center">Search Result</h3>
							<br>

							<div class="card">
								<div class="card-body">
									<div class="table-responsive pt-3">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>ID</th>
													<th>GENE</th>
													<th>CHROMOSOME</th>
													<th>MSU ID</th>
													<th>RAP ID</th>
													<th>PUTATIVE FUNCTION</th>
													<th>TRAIT ASSOCIATED</th>
													<th>SPECIFIC TRAIT ASSOCIATED</th>
													<th>SSR</th>
													<th>SSR LOCATION GENE PREMIER</th>
													<th>CGSSR PREMIER</th>
													<th>TM</th>
													<th>ECPECTED AMPLICON</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="trait" items="${listtrait}">
													<tr>
														<td>${trait.id}</td>
														<td>${trait.gene}</td>
														<td>${trait.chromosome}</td>
														<td>${trait.msu_id}</td>
														<td>${trait.rap_id}</td>
														<td>${trait.putative_function}</td>
														<td>${trait.trait_associated}</td>
														<td>${trait.specific_trait_associated}</td>
														<td>${trait.ssr}</td>
														<td>${trait.ssr_location_gene_sequence}</td>
														<td>${trait.cgssr_premier}</td>
														<td>${trait.tm}</td>
														<td>${trait.expected_amplicon}</td>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<br>
									<% if(trait_associated.equals("all")) { %>
									<ul class="pagination justify-content-center">
									<% if (pageNo > 0) { %>
									<a href="advance_search?chromosome=all&trait_associated=all&specific_trait_associated=all&pageNo=<%=(pageNo - 1)%>" class="btn btn-danger">Previous</a>&nbsp;
									<% } %>
									<%
									for (i = 1; i < total/400; i++) { %>
                                        <a href="advance_search?chromosome=all&trait_associated=all&specific_trait_associated=all&pageNo=<%=i%>" class="btn btn-primary"><%=i%></a>&nbsp;
                                    <% } %>
                                    <% if (i > pageNo) { %>
									<a href="advance_search?chromosome=all&trait_associated=all&specific_trait_associated=all&pageNo=<%=(pageNo + 1)%>" class="btn btn-danger">Next</a>&nbsp;
									<% } %>
									</ul>
									<% } %><br>
									<button class="btn form-control">
										<a href="/trait/search_trait">Go Back</a>
									</button>
								</div>
							</div>
							<br>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<footer class="footer fixed-bottom">
					<div class="footer-wrap">
						<div
							class="d-sm-flex justify-content-center justify-content-sm-between">
							<span
								class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright
								� 2022</span> <span
								class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">NRRI</span>
						</div>
					</div>
				</footer>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>

	<!-- container-scroller -->
	<!-- base:js -->
	<script src="/resources/vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="/resources/js/template.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<!-- End plugin js for this page -->
	<script src="/resources/vendors/chart.js/Chart.min.js"></script>
	<script src="/resources/vendors/progressbar.js/progressbar.min.js"></script>
	<script
		src="/resources/vendors/chartjs-plugin-datalabels/chartjs-plugin-datalabels.js"></script>
	<script src="/resources/vendors/justgage/raphael-2.1.4.min.js"></script>
	<script src="/resources/vendors/justgage/justgage.js"></script>
	<script src="/resources/js/jquery.cookie.js" type="text/javascript"></script>
	<!-- Custom js for this page-->
	<script src="/resources/js/dashboard.js"></script>
	<!-- End custom js for this page-->
</body>

</html>