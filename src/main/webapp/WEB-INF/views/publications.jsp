<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
							<p>Amrit Kumar Nayak, Anilkumar C, Sasmita Behera, Rameswar
								Prasad Sah, Roopa Lavanya G, Awadesh Kumar, Lambodar Behera and
								Muhammed Azharudheen TP (2022) Genetic dissection of grain size
								traits through GWAS using genic markers in rice. (Accepted for
								publication in Rice Science)</p>
							<br>

							<p>Priyadarshini K. 2021. Genetic diversity and trait
								association for Sitotroga cerealella resistance in rice using
								cgSSR markers. MSc Thesis, SIKSHA 'O' ANUSANDHAN, Deemed to be
								University, Bhubaneswar</p>
							<br>

							<p>Nayak AK. 2021. Association mapping for yield and yield
								attributing traits in rice. MSc Thesis, Sam Higginbottom
								University Of Agriculture, Technology And Sciences Prayagraj
								(U.P) - 211007.</p>
							<br>

							<p>Muhammed Azharudheen TP, RP Sah, KA Molla, Anilkumar C, SK
								Gritlahre, M Chakraborty and BC Marndi. Database of
								trait-specific candidate gene-based Simple Sequence Repeats
								(cgSSR) markers in Rice. NRRI Newsletter, January - March, 2021</p>
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