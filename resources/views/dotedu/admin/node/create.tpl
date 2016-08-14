{include file='admin/main.tpl'} 

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> 添加节点 <small>Add Node</small> </h1>
  </section>
  
  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div id="msg-success" class="alert alert-success alert-dismissable" style="display: none;">
          <button type="button" class="close" id="ok-close" aria-hidden="true">&times;</button>
          <h4><i class="icon fa fa-info"></i> 成功!</h4>
          <p id="msg-success-p"></p>
        </div>
        <div id="msg-error" class="alert alert-warning alert-dismissable" style="display: none;">
          <button type="button" class="close" id="error-close" aria-hidden="true">&times;</button>
          <h4><i class="icon fa fa-warning"></i> 出错了!</h4>
          <p id="msg-error-p"></p>
        </div>
      </div>
    </div>
    <div class="row"> 
      <!-- left column -->
      <div class="col-md-12"> 
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-body">
            <div class="form-horizontal">
              <div class="row">
                <fieldset class="col-sm-6">
                  <legend>连接信息</legend>
                  <div class="form-group">
                    <label for="title" class="col-sm-3 control-label">节点名称</label>
                    <div class="col-sm-9">
                      <input class="form-control" id="name" value="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="server" class="col-sm-3 control-label">节点地址</label>
                    <div class="col-sm-9">
                      <input class="form-control" id="server" value="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="method" class="col-sm-3 control-label">加密方式</label>
                    <div class="col-sm-9">
                      <select id="method" class="form-control">
                        <option value="rc4-md5">RC4-MD5</option>
                        <option value="rc4-md5-6">RC4-MD5-6</option>
                        <option value="aes-128-cfb">AES-128-CFB</option>
                        <option value="aes-192-cfb">AES-192-CFB</option>
                        <option value="aes-256-cfb">AES-256-CFB</option>
                        <option value="aes-128-ctr">AES-128-CTR</option>
                        <option value="aes-192-ctr">AES-192-CTR</option>
                        <option value="aes-256-ctr">AES-256-CTR</option>
                        <option value="camellia-128-cfb">CAMELLIA-128-CFB</option>
                        <option value="camellia-192-cfb">CAMELLIA-192-CFB</option>
                        <option value="camellia-256-cfb">CAMELLIA-256-CFB</option>
                        <option value="bf-cfb">BF-CFB</option>
                        <option value="cast5-cfb">CAST5-CFB</option>
                        <option value="des-cfb">DES-CFB</option>
                        <option value="des-ede3-cfb">DES-EDE3-CFB</option>
                        <option value="idea-cfb">IDEA-CFB</option>
                        <option value="rc2-cfb">RC2-CFB</option>
                        <option value="seed-cfb">SEED-CFB</option>
                        <option value="salsa20">SALSA20</option>
                        <option value="chacha20">CHACHA20</option>
                        <option value="chacha20-ietf">CHACHA20-IETF</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="protocol" class="col-sm-3 control-label">协议插件</label>
                    <div class="col-sm-9">
                      <select class="form-control" id="protocol">
                       <option value="origin">origin</option>
                      <option value="verify_simple">verify_simple</option>
                      <option value="verify_deflate">verify_deflate</option>
                      <option value="verify_sha1">verify_sha1</option>
                      <option value="verify_sha1_compatible">verify_sha1_compatible</option>
                      <option value="auth_simple">auth_simple</option>
                      <option value="auth_sha1">auth_sha1</option>
                      <option value="auth_sha1_compatible"> auth_sha1_compatible</option>
                      <option value="auth_sha1_v2">auth_sha1_v2</option>
                      <option value="auth_sha1_v2_compatible">auth_sha1_v2_compatible</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="obfs" class="col-sm-3 control-label">混淆插件</label>
                    <div class="col-sm-9">
                      <select class="form-control" id="obfs">
                       <option value="plain">plain</option>
                      <option value="http_simple">http_simple</option>
                      <option value="http_simple_compatible"> http_simple_compatible</option>
                      <option value="tls_simple">tls_simple</option>
                      <option value="tls_simple_compatible">tls_simple_compatible</option>
                      <option value="random_head">random_head</option>
                      <option value="random_head_compatible">random_head_compatible</option>
                      <option value="tls1.0_session_auth">tls1.0_session_auth</option>
                      <option value="tls1.0_session_auth_compatible">tls1.0_session_auth_compatible</option>
                      <option value="tls1.2_ticket_auth">tls1.2_ticket_auth</option>
                      <option value="tls1.2_ticket_auth_compatible">tls1.2_ticket_auth_compatible</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="rate" class="col-sm-3 control-label">流量比例</label>
                    <div class="col-sm-9">
                      <input class="form-control" id="rate" value="1">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="method" class="col-sm-3 control-label">自定义加密</label>
                    <div class="col-sm-9">
                      <select class="form-control" id="custom_method">
                        <option value="0" selected="selected"> 不支持 </option>
                        <option value="1"> 支持 </option>
                      </select>
                      <p class="help-block"> <a href="https://github.com/orvice/ss-panel/wiki/v3-custom-method">如何使用自定义加密?</a>| <a href="https://github.com/orvice/ss-panel/wiki/v3-traffic-rate">如何设置流量比例?</a> </p>
                    </div>
                  </div>
                </fieldset>
                <fieldset class="col-sm-6">
                  <legend>描述信息</legend>
                  <div class="form-group">
                    <label for="type" class="col-sm-3 control-label">是否显示</label>
                    <div class="col-sm-9">
                      <select class="form-control" id="type">
                        <option value="1" selected="selected">显示</option>
                        <option value="0">隐藏</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="status" class="col-sm-3 control-label">节点状态</label>
                    <div class="col-sm-9">
                      <input class="form-control" id="status" value="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="sort" class="col-sm-3 control-label">排序</label>
                    <div class="col-sm-9">
                      <input class="form-control" id="sort" type="number" value="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="info" class="col-sm-3 control-label">节点描述</label>
                    <div class="col-sm-9">
                      <textarea class="form-control" id="info" rows="3"></textarea>
                    </div>
                  </div>
                </fieldset>
              </div>
            </div>
          </div>
          <!-- /.box-body -->
          <div class="box-footer">
            <button type="submit" id="submit" name="action" value="add" class="btn btn-primary">添加</button>
          </div>
        </div>
        <!-- /.box --> 
      </div>
      <!-- /.row --> 
    </div>
    <!-- /.row --> 
  </section>
  <!-- /.content --> 
</div>
<!-- /.content-wrapper --> 

<script>
    $(document).ready(function () {
        function submit() {
            $.ajax({
                type: "POST",
                url: "/admin/node",
                dataType: "json",
                data: {
                    name: $("#name").val(),
                    server: $("#server").val(),
                    method: $("#method").val(),
                    protocol: $("#protocol").val(),
                    obfs: $("#obfs").val(),
					custom_method: $("#custom_method").val(),
                    rate: $("#rate").val(),
                    info: $("#info").val(),
                    type: $("#type").val(),
                    status: $("#status").val(),
                    sort: $("#sort").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#msg-error").hide(100);
                        $("#msg-success").show(100);
                        $("#msg-success-p").html(data.msg);
                        window.setTimeout("location.href='/admin/node'", 2000);
                    } else {
                        $("#msg-error").hide(10);
                        $("#msg-error").show(100);
                        $("#msg-error-p").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#msg-error").hide(10);
                    $("#msg-error").show(100);
                    $("#msg-error-p").html("发生错误：" + jqXHR.status);
                }
            });
        }

        $("html").keydown(function (event) {
            if (event.keyCode == 13) {
                login();
            }
        });
        $("#submit").click(function () {
            submit();
        });
        $("#ok-close").click(function () {
            $("#msg-success").hide(100);
        });
        $("#error-close").click(function () {
            $("#msg-error").hide(100);
        });
    })
</script> 
{include file='admin/footer.tpl'}