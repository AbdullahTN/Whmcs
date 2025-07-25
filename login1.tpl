<main class="auth bg-light">

   <div class="container h-100 d-flex flex-column align-items-center justify-content-center">

      <div class="row bg-white overflow-hidden border rounded-4">

         <div class="col-xl-5 col-md-12">
            <div class="h-100 d-flex flex-column p-5 ps-0 pe-0 ps-lg-5 pe-lg-5">
               {include file="$template/$template/includes/logo.tpl" logoMode="both" classes="mb-5"}
               <h1 class="h5 mt-2 text-center">{lang key='cartexistingclientlogin'}</h1>
               <p class="text-center">{lang key='userLogin.signInToContinue'}</p>
               <form method="post" action="{routePath('login-validate')}" role="form" class="row gy-4 p-3 login-form needs-validation" novalidate>
                  <div class="t-separator">
                     <span class="t-separator-line"></span>
                     <span class="t-separator-text">{lang key='loginbutton'}</span>
                  </div>
                  <div class="providerLinkingFeedback"></div>
                  {include file="$template/includes/flashmessage.tpl"}
                  <div class="col-md-12 mt-0">
                     <label for="inputEmail">Email</label>
                     <div class="input-group mt-2">
                        <div class="input-group-prepend">
                           <span class="input-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-envelope"></i></span>
                        </div>
                        <input type="email" id="inputEmail" name="username" class="form-control" placeholder="name@example.com" required autofocus>
                     </div>
                  </div>
                  <div class="col-md-12">
                     <div class="row">
                        <div class="col-sm-3 d-flex align-items-center justify-content-start"><label for="inputPassword">{lang key='clientareapassword'}</label></div>
                        <div class="col-sm-9 d-flex align-items-center justify-content-end forgot-password mt-1 mb-1"><a href="{routePath('password-reset-begin')}" class="link">{lang key='forgotpw'}</a></div>
                     </div>
                     <div class="input-group mt-2">
                        <div class="input-group-prepend">
                           <span class="input-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-file-lock"></i></span>
                        </div>
                        <input type="password" id="inputPassword" name="password" class="form-control" required placeholder="{lang key='loginpassword'}">
                     </div>
                  </div>
                  <div class="col-md-12 d-flex align-items-center justify-content-start mt-3">
                     <input class="form-check-input m-0" type="checkbox" name="rememberme" value="" id="rebember">
                     <label class="form-check-label ms-1" for="rebember">{lang key='loginrememberme'}</label>
                  </div>
                    {if $captcha->isEnabled()}
                    <div class="col-md-12">
                        {include file="$template/includes/captcha.tpl"}
                    </div>
                    {/if}
                  <div class="col-md-12">
                     <button type="submit" id="login" class="btn btn-outline-skyblue hover-skyblue w-100 rounded-1 p-2{$captcha->getButtonClass($captchaForm)}">{lang key='loginbutton'}</button>
                  </div>
                  {if $linkableProviders || $hasLinkedProvidersEnabled && $linkContext == 'linktable'}
                  <div class="col-md-12">
                     <div class="t-separator mt-4">
                        <span class="t-separator-line"></span>
                        <span class="t-separator-text">{lang key='or'}</span>
                     </div>
                     {include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}
                  </div>
                  {/if}
               </form>
               <span class="mt-auto text-center">{lang key='userLogin.notRegistered'} <a href="{$WEB_ROOT}/register.php" class="link">{lang key='userLogin.createAccount'}</a></span>
            </div>
         </div>

         <div class="col-md-7 auth-info bg-blue-01 border-start">
            <div class="h-100 d-flex flex-column align-items-center justify-content-center p-5">
               <div class="owl-carousel overflow-hidden text-start justify-content-center align-items-center" data-slider-loop="on" data-slider-items="1" data-slider-autoplay="on" data-slider-autoplay-timeout="3000" data-slider-dots="on">
                  <div class="d-flex align-items-center justify-content-center align-self-center">
                     <div class="d-flex flex-column rounded p-5 text-center">
                        <div class="content-img d-flex align-self-center mb-5"><img src="{$WEB_ROOT}/templates/{$template}/{$template}/assets/img/design/dashboard-img.png" alt="Dashboard Preview"></div>
                        <span class="h4 font-weight-normal">Our dashboard has a new look</span>
                        <span>Check the news on the dashboard</span>
                     </div>
                  </div>
               </div>
            </div>
         </div>

      </div>

      <div class="row auth-footer g-2 mt-2 mb-2">

         <div class="col-md-6 d-flex text-md-center">
            <div class="d-flex align-items-center justify-content-start">
               <p class="m-0">{lang key="copyrightFooterNotice" year=$date_year company=$companyname}</p>
            </div>
         </div>

         <div class="col-md-6 text-md-center">
            <div class="d-flex align-items-end justify-content-end">
               <nav class="navbar navbar-expand-lg p-0">
                  <ul class="navbar-nav">
                     <li class="nav-item ms-2"><a href="privacy-policy.html" class="nav-link pe-0">Privacy Policy</a></li>
                     <li class="nav-item ms-2"><a href="terms-of-service.html" class="nav-link pe-0">Terms of Service</a></li>
                  </ul>
               </nav>
            </div>
         </div>

      </div>

   </div>

</main>