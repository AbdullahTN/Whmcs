<p>{lang key='pwresetenternewpw'}</p>

<form method="post" action="{routePath('password-reset-change-perform')}" class="row gy-4 p-3 reset-password-form using-password-strength needs-validation" novalidate>
    <input type="hidden" name="answer" id="answer" value="{$securityAnswer}" />
    <div class="t-separator mt-4">
        <span class="t-separator-line"></span>
        <span class="t-separator-text">{lang key='pwreset'}</span>
    </div>
    <div class="col-md-12 mt-0">
    {if $errorMessage}
    {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
    {/if}
    </div>
    <div class="col-md-12 mt-3">
        <label for="inputNewPassword1">{lang key='newpassword'}</label>
        <div class="input-group mt-2">
        <div class="input-group-prepend">
            <span class="input-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-file-lock"></i></span>
        </div>
        <input type="password" id="inputNewPassword1" name="newpw" class="form-control" required placeholder="{lang key='loginpassword'}">
        </div>
    </div>
    <div class="col-md-12 mt-3">
        <label for="inputNewPassword2">{lang key='confirmnewpassword'}</label>
        <div class="input-group mt-2">
        <div class="input-group-prepend">
            <span class="input-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-file-lock"></i></span>
        </div>
        <input type="password" id="inputNewPassword2" name="confirmpw" class="form-control" required placeholder="{lang key='loginpassword'}" autocomplete="off">
        </div>
    </div>
    <div class="col-md-12">
        <div class="form-group">
            <label class="control-label">{lang key='pwstrength'}</label>
            {include file="$template/includes/pwstrength.tpl"}
        </div>
    </div>
    <div class="col-md-12">
        <button type="submit" class="btn btn-outline-skyblue hover-skyblue w-100 rounded-1 p-2 mb-2">{lang key='clientareasavechanges'}</button>
        <button type="reset" class="btn btn-outline-skyblue hover-skyblue w-100 rounded-1 p-2">{lang key='cancel'}</button>
    </div>
</form>
<span class="mt-auto text-center">{lang key='alreadyregistered'} <a href="{$WEB_ROOT}/login.php" class="text-blue">{lang key='loginbutton'}</a></span>