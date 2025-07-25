<main class="auth bg-light">

   <div class="container h-100 d-flex flex-column align-items-center justify-content-center">

      <div class="row bg-white overflow-hidden border rounded-4">

         <div class="col-xl-5 col-md-12">
            <div class="h-100 d-flex flex-column p-5 ps-0 pe-0 ps-lg-5 pe-lg-5">
               {include file="$template/$template/includes/logo.tpl" logoMode="both" classes="mb-5"}
                {if $loggedin && $innerTemplate}
                    {include file="$template/includes/alert.tpl" type="error" msg="{lang key='noPasswordResetWhenLoggedIn'}" textcenter=true}
                {else}
                    {if $successMessage}
                        {include file="$template/includes/alert.tpl" type="success" msg=$successTitle textcenter=true}
                        <p>{$successMessage}</p>
                    {else}
                        {if $innerTemplate}
                            {include file="$template/password-reset-$innerTemplate.tpl"}
                        {/if}
                    {/if}
                {/if}
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