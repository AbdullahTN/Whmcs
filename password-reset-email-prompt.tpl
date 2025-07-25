<h1 class="h5 mt-2 text-center">{lang key='pwreset'}</h1>
<p class="text-center">{lang key='pwresetemailneeded'}</p>
<form method="post" action="{routePath('password-reset-validate-email')}" role="form" class="row gy-4 p-3 needs-validation" novalidate>
   <input type="hidden" name="action" value="reset" />
   <div class="t-separator mt-4">
      <span class="t-separator-line"></span>
      <span class="t-separator-text">{lang key='pwreset'}</span>
   </div>
   <div class="col-md-12 mt-0">
      {if $errorMessage}
      {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
      {/if}
   </div>
   <div class="col-md-12 mt-0">
      <label for="inputEmail">{lang key='loginemail'}</label>
      <div class="input-group mt-2">
         <div class="input-group-prepend">
            <span class="input-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-envelope"></i></span>
         </div>
         <input type="email" id="inputEmail" name="email" class="form-control" placeholder="name@example.com" required autofocus>
      </div>
   </div>
   {if $captcha->isEnabled()}
   <div class="col-md-12">
      <div class="text-center margin-bottom">
         {include file="$template/includes/captcha.tpl"}
      </div>
   </div>
   {/if}
   <div class="col-md-12">
      <button type="submit" class="btn btn-outline-skyblue hover-skyblue w-100 rounded-1 p-2{$captcha->getButtonClass($captchaForm)}">{lang key='pwresetsubmit'}</button>
   </div>
</form>
<span class="mt-auto text-center">{lang key='alreadyregistered'} <a href="{$WEB_ROOT}/login.php" class="text-blue">{lang key='loginbutton'}</a></span>