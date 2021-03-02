<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="The pure JavaScript ultimate datepicker">
    <meta name="author" content="MTR Design">
    <meta name="keywords" content="datepicker, mtr datepicker, mtr design, pure javascript, javascript datepicker, js datepicker">

    <title>Demo | MTR Datepicker - The pure JavaScript datepicker library</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/Date/libs/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/Date/demo/cosmo.bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/Date/dist/mtr-datepicker.min.css?rel=1452001556058" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/Date/dist/mtr-datepicker.default-theme.min.css?rel=1452001556059" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/Date/demo/jumbotron-narrow.css" />

    <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath }/resources/Date/apple-touch-icon.png?v=yyxxeK88Mx">
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/Date/images/favicons/favicon-32x32.png?v=yyxxeK88Mx" sizes="32x32">
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/Date/images/favicons/favicon-16x16.png?v=yyxxeK88Mx" sizes="16x16">
    <link rel="manifest" href="${pageContext.request.contextPath }/resources/Date/images/favicons/manifest.json?v=yyxxeK88Mx">
    <link rel="mask-icon" href="${pageContext.request.contextPath }/resources/Date/images/favicons/safari-pinned-tab.svg?v=yyxxeK88Mx" color="#5bbad5">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/Date/images/favicons/favicon.ico?v=yyxxeK88Mx">
    <meta name="apple-mobile-web-app-title" content="MTR Datepicker">
    <meta name="application-name" content="MTR Datepicker">
    <meta name="msapplication-config" content="${pageContext.request.contextPath }/resources/Date/images/favicons/browserconfig.xml?v=yyxxeK88Mx">
    <meta name="theme-color" content="#ffffff">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <h1 id="demo" class="text-center">Demo</h1>
      <hr />
      <div class="row marketing">

        <div class="col-sm-6 col-md-4">
          <div id="datepicker-demo-custom"></div>
        </div>
        <div class="col-sm-6 col-md-4">
          <h4>커스터마이징</h4>

          <label>
            <input id="datepicker-demo-input-show-datepicker" type="checkbox" checked />
            날짜
          </label>
          <br />
          <label>
            <input id="datepicker-demo-input-customize-future" type="checkbox" />
            앞으로의 날짜만
          </label>
          <br />
          <label>
            <input id="datepicker-demo-input-show-timepicker" type="checkbox" checked />
            시간
          </label>
          <br />
          <label>
            <input id="datepicker-demo-input-customize-smart-ampm" type="checkbox" />
            AM/PM 
          </label>
          <br />
          <label>
            <input id="datepicker-demo-input-customize-disable-ampm" type="checkbox" />
            24시간방식
          </label>
          <br />


          <br /><br />
          <a href="https://jsfiddle.net/mtr_datepicker/469qq7xv/" target="_blank">More customizable demo</a>
        </div>
        <div class="col-sm-6 col-sm-offset-6 col-md-4 col-md-offset-0">
          <h4>Export formats</h4>
          <div id="datepicker-demo-custom-export-formats"></div>
        </div>
      </div>

      <footer class="footer">

      </footer>

    </div> <!-- /container -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/Date/libs/bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/Date/scripts/mtr-datepicker-timezones.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/Date/scripts/mtr-datepicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/Date/demo/demo.js"></script>

    <script type="text/javascript">
      var initDate = new Date(2010, 10, 21);
      var demoDatepicker = MtrDatepickerDemo.init({
        target: 'datepicker-demo-custom',
        timestamp: initDate.getTime()
      }, {
        exportFormats: 'datepicker-demo-custom-export-formats',
        customizeFuture: 'datepicker-demo-input-customize-future',
        customizeSmartAmPm: 'datepicker-demo-input-customize-smart-ampm',
        customizeDisableAmPm: 'datepicker-demo-input-customize-disable-ampm',
        showDatePicker: 'datepicker-demo-input-show-datepicker',
        showTimePicker: 'datepicker-demo-input-show-timepicker',

        customizeMinutes: 'datepicker-demo-input-customize-minutes',
        customizeMinutesMin: 'datepicker-demo-input-customize-minutes-min',
        customizeMinutesMax: 'datepicker-demo-input-customize-minutes-max',
        customizeMinutesStep: 'datepicker-demo-input-customize-minutes-step',

        customizeMonths: 'datepicker-demo-input-customize-months',
        customizeMonthsMin: 'datepicker-demo-input-customize-months-min',
        customizeMonthsMax: 'datepicker-demo-input-customize-months-max',
        customizeMonthsStep: 'datepicker-demo-input-customize-months-step',

        customizeYears: 'datepicker-demo-input-customize-years',
        customizeYearsMin: 'datepicker-demo-input-customize-years-min',
        customizeYearsMax: 'datepicker-demo-input-customize-years-max',
        customizeYearsStep: 'datepicker-demo-input-customize-years-step',
      });
    </script>

    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-72115428-1', 'auto');
      ga('send', 'pageview');
    </script>

  </body>
</html>

