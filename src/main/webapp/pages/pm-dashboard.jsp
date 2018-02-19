<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Sample</title>
	<link href="https://fonts.googleapis.com/css?family=Titillium+Web" rel="stylesheet">
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
	<link href="../../css/kanbanwa.css" rel="stylesheet">
	<style type="text/css">
		.project .header {
			background-color: white;
		    position: relative;
		    padding: 0;
		    margin: 0;
		    display: grid;
		    grid-template-columns: repeat(4, 1fr);
		    height: 60px;
		    box-shadow: -1px -1px 4px 1px rgba(0,0,0,0.2);
		}

		.project > .header > div {
		    text-align: center;
		    position: relative;
		}

		.project > .header > div > .item {
		    position: absolute;
		    bottom: 10px;
		    left: 0;
		    right: 0;
		    font-size: 20px;
		    font-weight: bold;
		    text-transform: uppercase;
		    color: var(--header-text);
		}

		.project-tasks {
			display: grid;
			grid-template-columns: repeat(4, 1fr);
		}

		.project-phase {
		    min-height: 600px;
		    height: auto !important;
		    padding: 15px;
		}

		.project-phase:nth-child(odd) {
			background-color: #fafafa;
		}

		.task {
			font-size: 14px;
		    padding: 10px;
		    background-color: white;
		    border-radius: 4px;
		    margin-bottom: 10px;
		    border-left: 10px solid var(--primary);
		    box-shadow: 1px 3px 8px 0 rgba(0,0,0,0.2);
		}

		.task:hover {
			box-shadow: 3px 4px 16px 0 rgba(0,0,0,0.2);
		}

		.todo-phase .task {
			border-left-color: var(--todo);
		}

		.development-phase .task {
			border-left-color: var(--development);
		}

		.testing-phase .task {
			border-left-color: var(--testing);
		}

		.deploy-phase .task {
			border-left-color: var(--deploy);
		}

		.task-title {
		    font-size: 20px;
		    font-weight: bold;
		}

		.task-description {
		    margin-bottom: 5px;
		}

		.task-due {
		    font-weight: bold;
		    color: var(--text-light);
		    margin-bottom: 5px;
		}

		.task-detail {
		    margin-right: 5px;
		}

		.todo-phase .task-detail {
			color: var(--todo);
		}

		.development-phase .task-detail {
			color: var(--development);
		}

		.testing-phase .task-detail {
			color: var(--testing);
		}

		.deploy-phase .task-detail {
			color: var(--deploy);
		}

		.task-detail > i {
		    font-size: 16px;
		    align-self: center;
		    text-align: center;
		}

		.task-detail > span {
		    font-weight: bold;
		}
	</style>
</head>
<body>
	<div class="page">
		<div class="top-nav">
			<div class="title">Project Undivided</div>
		</div>
		<div class="page-content">
			<div class="container">
				<div class="project">
					<div class="header">
						<div><span class="item">Todo</span></div>
						<div><span class="item">Development</span></div>
						<div><span class="item">Testing</span></div>
						<div><span class="item">Deploy</span></div>
					</div>
					<div class="project-tasks">
						<div class="project-phase todo-phase">
							<?php for($i = 0; $i < 1; $i++) {?>
								<div class="task">
									<div class="task-title">Create UI for J2EE</div>
									<div class="task-description">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua.
									</div>
									<div class="task-due">
										Due Date: Jan 24, 2018
									</div>
									<div class="task-extra">
										<div class="task-details">
											<label class="task-detail">
												<i class="fas fa-check-circle" modal-open="#sampleModal"></i>
												<span> (1/3)</span>
											</label>
											<label class="task-detail">
												<i class="fas fa-flag"></i>
												<span> (5)</span>
											</label>
											<label class="task-detail">
												<i class="fas fa-tasks"></i>
												<span> (2)</span>
											</label>
										</div>
									</div>
								</div>
							<?php }?>
						</div>
						<div class="project-phase development-phase">
							<?php for($i = 0; $i < 2; $i++) {?>
								<div class="task">
									<div class="task-title">Create UI for J2EE</div>
									<div class="task-description">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua.
									</div>
									<div class="task-due">
										Due Date: Jan 24, 2018
									</div>
									<div class="task-extra">
										<div class="task-details">
											<label class="task-detail">
												<i class="fas fa-check-circle" modal-open="#sampleModal"></i>
												<span> (1/3)</span>
											</label>
											<label class="task-detail">
												<i class="fas fa-flag"></i>
												<span> (5)</span>
											</label>
											<label class="task-detail">
												<i class="fas fa-tasks"></i>
												<span> (2)</span>
											</label>
										</div>
									</div>
								</div>
							<?php }?>
						</div>
						<div class="project-phase testing-phase">
							<?php for($i = 0; $i < 2; $i++) {?>
								<div class="task">
									<div class="task-title">Create UI for J2EE</div>
									<div class="task-description">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua.
									</div>
									<div class="task-due">
										Due Date: Jan 24, 2018
									</div>
									<div class="task-extra">
										<div class="task-details">
											<label class="task-detail">
												<i class="fas fa-check-circle" modal-open="#sampleModal"></i>
												<span> (1/3)</span>
											</label>
											<label class="task-detail">
												<i class="fas fa-flag"></i>
												<span> (5)</span>
											</label>
											<label class="task-detail">
												<i class="fas fa-tasks"></i>
												<span> (2)</span>
											</label>
										</div>
									</div>
								</div>
							<?php }?>
						</div>
						<div class="project-phase deploy-phase">
							<?php for($i = 0; $i < 4; $i++) {?>
								<div class="task">
									<div class="task-title">Create UI for J2EE</div>
									<div class="task-description">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua.
									</div>
									<div class="task-due">
										Due Date: Jan 24, 2018
									</div>
									<div class="task-extra">
										<div class="task-details">
											<label class="task-detail">
												<i class="fas fa-check-circle" modal-open="#sampleModal"></i>
												<span> (1/3)</span>
											</label>
											<label class="task-detail">
												<i class="fas fa-flag"></i>
												<span> (5)</span>
											</label>
											<label class="task-detail">
												<i class="fas fa-tasks"></i>
												<span> (2)</span>
											</label>
										</div>
									</div>
								</div>
							<?php }?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="modal" id="sampleModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<div class="modal-title">
							Sample Modal
						</div>
						<span class="modal-close"><i class="fas fa-times" modal-close="#sampleModal"></i></span>
					</div>
					<div class="modal-body">
						Hello
						<div class="btn btn-wde">
							<button>Click me</button>
						</div>

						<div class="btn btn-dbl">
							<button class="btn-pos">Confirm</button>
							<button class="btn-neg">Cancel</button>
						</div>

						<div class="lbl">Label:</div>
						<input type="text" name="text" class="inpt" placeholder="Input">
						<textarea class="txtarea" placeholder="Text Area"></textarea>
						<div class="btntxt">
							<input type="text" name="text" placeholder="Btntxt placeholder">
							<div class="btn btn-wde">
								<button>Click me</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
	  	src="http://code.jquery.com/jquery-3.3.1.min.js"
	  	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  	crossorigin="anonymous">
	</script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="../../js/kanbanwa.js"></script>
</body>
</html>