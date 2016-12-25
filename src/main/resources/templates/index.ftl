<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>${_plugin.name} - V${_plugin.version}</title>

    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/css/jquery.gritter.css"/>

    <script src="assets/js/jquery-2.0.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <script src="assets/js/jquery.gritter.min.js"></script>
    <script src="js/set_update.js"></script>
    <script>
        $(document).ready(function() {
            $("#testEmailService").click(function(e){
                $.get("testEmailService",function(data){
                    if(data.success || data.status==200){
                        $.gritter.add({
                            title: '测试邮件发送成功...',
                            class_name: 'gritter-success' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : ''),
                        });
                    }else{
                        $.gritter.add({
                            title: '测试邮件发送失败...',
                            class_name: 'gritter-error' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : ''),
                        });
                    }
                })
            })
        });
    </script>
</head>
<body>
<div class="col-xs-8">
    <div class="page-header">
        <h3>
            邮件服务
            <small>让你更快的了解网站情况</small>
        </h3>
        <div class="text-right">
            <button class="btn" type="button" id="testEmailService">
                测试一下
            </button>
        </div>
    </div>
    <form id="ajaxemailServiceMsg" class="form-horizontal" role="form">
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right"> 登陆名 </label>

            <div class="col-sm-4">
                <input type="text" class="form-control" value="${from!''}" name="from">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right"> SMTP服务器 </label>

            <div class="col-sm-4">
                <input type="text" class="form-control" value="${smtpServer!''}"
                       name="smtpServer">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right"> 密码 </label>

            <div class="col-sm-4">
                <input type="password" class="form-control" value="${password!''}"
                       name="password">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right"> 端口 </label>

            <div class="col-sm-1">
                <input type="text" class="form-control" value="${port!'25'}" name="port"
                       maxlength="5">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right"> 收件邮件地址 </label>

            <div class="col-sm-4">
                <input type="text" class="form-control" value="${to!''}" name="to">
            </div>
        </div>
        <hr/>
        <div class="col-md-offset-3 col-md-9">
            <button class="btn btn-info" type="button" id="emailServiceMsg">
                <i class="icon-ok bigger-110"></i> 提交
            </button>
        </div>
    </form>
</div>
<input id="gritter-light" checked="" type="checkbox" style="display:none"/>
</body>
</html>