<main class="registerauth-container">
    <div class="registerlogin-layout">
        <!-- Giriş Kutusu -->
        <div class="registerlogin-wrapper">
            <div class="registerlogin-box">
                <div class="registerlogo-wrapper">
                    <img src="https://whmcs.vexa.net.tr/templates/inexus/inexus/assets/img/logos/logo-blue.svg" alt="Vexa Logo">
                </div>
                <h2 class="text-center mb-2">Kayıt Ol</h2>
                <p class="text-center text-muted mb-4">Aramıza hoş geldiniz!</p>
                <form method="post" class="row gy-4 p-3 using-password-strength" action="{$smarty.server.PHP_SELF}" role="form" name="orderfrm" id="frmCheckout">
                            <input type="hidden" name="register" value="true"/>
                            {if ($linkableProviders || $hasLinkedProvidersEnabled)}
                                <div class="col-md-12">
                                    {include file="$template/includes/linkedaccounts.tpl" linkContext="registration"}
                                </div>
                            {/if}
                            {if $errormessage}
                                <div class="col-md-12">
                                    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
                                </div>
                            {/if}
                            <div class="col-md-12" id="containerNewUserSignup">
                                <div class="t-separator mt-4">
                                    <span class="t-separator-line"></span>
                                    <span class="t-separator-text">{lang key='orderForm.personalInformation'}</span>
                                </div>
                                <div class="row gy-3 mt-2">
                                    <div class="col-md-6">
                                        <label for="inputFirstName">{lang key='orderForm.firstName'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-person"></i></span>
                                            </div>
                                            <input type="text" name="firstname" id="inputFirstName" class="field registerform-control" placeholder="{lang key='orderForm.firstName'}" value="{$clientfirstname}" {if !in_array('firstname', $optionalFields)}required{/if} autofocus>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputLastName">{lang key='orderForm.lastName'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-person"></i></span>
                                            </div>
                                            <input type="text" name="lastname" id="inputLastName" class="field registerform-control" placeholder="{lang key='orderForm.lastName'}" value="{$clientlastname}" {if !in_array('lastname', $optionalFields)}required{/if}>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputEmail">{lang key='orderForm.emailAddress'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-envelope"></i></span>
                                            </div>
                                            <input type="email" name="email" id="inputEmail" class="field registerform-control" placeholder="{lang key='orderForm.emailAddress'}" value="{$clientemail}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputPhone">{lang key='orderForm.phoneNumber'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend d-none">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-telephone"></i></span>
                                            </div>
                                            <input type="tel" name="phonenumber" id="inputPhone" class="field" placeholder="{lang key='orderForm.phoneNumber'}" value="{$clientphonenumber}">
                                        </div>
                                    </div>
                                </div>
                                <div class="t-separator mt-4">
                                    <span class="t-separator-line"></span>
                                    <span class="t-separator-text">{lang key='orderForm.billingAddress'}</span>
                                </div>
                                <div class="row gy-3 mt-2">
                                    <div class="col-md-12">
                                        <label for="inputCompanyName">{lang key='orderForm.companyName'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-building"></i></span>
                                            </div>
                                            <input type="text" name="companyname" id="inputCompanyName" class="field registerform-control" placeholder="{lang key='orderForm.companyName'} ({lang key='orderForm.optional'})" value="{$clientcompanyname}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputAddress1">{lang key='orderForm.streetAddress'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-geo-alt"></i></span>
                                            </div>
                                            <input type="text" name="address1" id="inputAddress1" class="field registerform-control" placeholder="{lang key='orderForm.streetAddress'}" value="{$clientaddress1}"  {if !in_array('address1', $optionalFields)}required{/if}>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputAddress2">{lang key='orderForm.streetAddress2'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-geo-alt"></i></span>
                                            </div>
                                            <input type="text" name="address2" id="inputAddress2" class="field registerform-control" placeholder="{lang key='orderForm.streetAddress2'}" value="{$clientaddress2}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputCity">{lang key='orderForm.city'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-geo-alt"></i></span>
                                            </div>
                                            <input type="text" name="city" id="inputCity" class="field registerform-control" placeholder="{lang key='orderForm.city'}" value="{$clientcity}"  {if !in_array('city', $optionalFields)}required{/if}>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="state">{lang key='orderForm.state'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-geo-alt"></i></span>
                                            </div>
                                            <input type="text" name="state" id="state" class="field registerform-control" placeholder="{lang key='orderForm.state'}" value="{$clientstate}"  {if !in_array('state', $optionalFields)}required{/if}>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputPostcode">{lang key='orderForm.postcode'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-geo-alt"></i></span>
                                            </div>
                                            <input type="text" name="postcode" id="inputPostcode" class="field registerform-control" placeholder="{lang key='orderForm.postcode'}" value="{$clientpostcode}" {if !in_array('postcode', $optionalFields)}required{/if}>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputCountry">{lang key='orderForm.country'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-geo-alt"></i></span>
                                            </div>
                                            <select name="country" id="inputCountry" class="field registerform-control">
                                                {foreach $clientcountries as $countryCode => $countryName}
                                                    <option value="{$countryCode}"{if (!$clientcountry && $countryCode eq $defaultCountry) || ($countryCode eq $clientcountry)} selected="selected"{/if}>
                                                        {$countryName}
                                                    </option>
                                                {/foreach}
                                            </select>
                                        </div>
                                    </div>
                                    {if $showTaxIdField}
                                    <div class="col-md-6">
                                        <label for="inputTaxId">{lang key='tax.taxLabel'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-cash-coin"></i></span>
                                            </div>
                                            <input type="text" name="tax_id" id="inputTaxId" class="field" placeholder="{$taxLabel} ({lang key='orderForm.optional'})" value="{$clientTaxId}">
                                        </div>
                                    </div>
                                    {/if}
                                </div>
                                {if $customfields || $currencies}
                                <div class="t-separator mt-4">
                                    <span class="t-separator-line"></span>
                                    <span class="t-separator-text">{lang key='orderadditionalrequiredinfo'}<br><small>{lang key='orderForm.requiredField'}</small></span>
                                </div>
                                <div class="row gy-3 mt-2">
                                    {if $customfields}
                                        {foreach $customfields as $customfield}
                                            <div class="col-md-6">
                                                <label for="customfield{$customfield.id}">{$customfield.name} {$customfield.required}</label>
                                                <div class="registerinput-group mt-2">
                                                    {$customfield.input}
                                                    {if $customfield.description}
                                                        <span class="field-help-text w-100 mt-1 mb-1">{$customfield.description}</span>
                                                    {/if}
                                                </div>
                                            </div>
                                        {/foreach}
                                    {/if}
                                    {if $customfields && count($customfields)%2 > 0 }
                                        <div class="clearfix"></div>
                                    {/if}
                                    {if $currencies}
                                        <div class="col-md-6">
                                            <label for="inputCurrency">{lang key='choosecurrency'}</label>
                                            <div class="registerinput-group mt-2">
                                                <div class="registerinput-group-prepend">
                                                    <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-geo-alt"></i></span>
                                                </div>
                                                <select id="inputCurrency" name="currency" class="field registerform-control">
                                                    {foreach $currencies as $curr}
                                                        <option value="{$curr.id}"{if !$smarty.post.currency && $curr.default || $smarty.post.currency eq $curr.id } selected{/if}>{$curr.code}</option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                        </div>
                                    {/if}
                                </div>
                                {/if}
                            </div>
                            <div class="col-md-12" id="containerNewUserSecurity" {if $remote_auth_prelinked && !$securityquestions } class="w-hidden"{/if}>
                                <div class="t-separator mt-4">
                                    <span class="t-separator-line"></span>
                                    <span class="t-separator-text">{lang key='orderForm.accountSecurity'}</span>
                                </div>
                                <div class="row gy-3 mt-2{if $remote_auth_prelinked && $securityquestions} hidden{/if}" id="containerPassword">
                                    <div class="col-md-6">
                                        <label for="inputNewPassword1">{lang key='clientareapassword'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-file-lock"></i></span>
                                            </div>
                                            <input type="password" name="password" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="field registerform-control" placeholder="{lang key='clientareapassword'}" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputNewPassword2">{lang key='clientareaconfirmpassword'}</label>
                                        <div class="registerinput-group mt-2">
                                            <div class="registerinput-group-prepend">
                                                <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-file-lock"></i></span>
                                            </div>
                                            <input type="password" name="password2" id="inputNewPassword2" class="field registerform-control" placeholder="{lang key='clientareaconfirmpassword'}" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <button type="button" class="btn btn-default btn-sm btn-sm-block generate-password border" data-targetfields="inputNewPassword1,inputNewPassword2">
                                                {lang key='generatePassword.btnLabel'}
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="password-strength-meter">
                                            <div class="progress">
                                                <div class="progress-bar bg-success bg-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar">
                                                </div>
                                            </div>
                                            <p class="text-center small text-muted" id="passwordStrengthTextLabel">{lang key='pwstrength'}: {lang key='pwstrengthenter'}</p>
                                        </div>
                                    </div>
                                </div>
                                {if $securityquestions}
                                    <div class="row gy-3 mt-2">
                                        <div class="col-md-6">
                                            <label for="inputSecurityQId">{lang key='clientareasecurityquestion'}</label>
                                            <div class="registerinput-group mt-2">
                                                <div class="registerinput-group-prepend">
                                                    <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-question-lg"></i></span>
                                                </div>
                                                <select name="securityqid" id="inputSecurityQId" class="field registerform-control">
                                                    <option value="">{lang key='clientareasecurityquestion'}</option>
                                                    {foreach $securityquestions as $question}
                                                        <option value="{$question.id}"{if $question.id eq $securityqid} selected{/if}>
                                                            {$question.question}
                                                        </option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="inputSecurityQAns">{lang key='clientareasecurityanswer'}</label>
                                            <div class="registerinput-group mt-2">
                                                <div class="registerinput-group-prepend">
                                                    <span class="registerregisterinput-group-text bg-light p-2 ps-3 pe-3"><i class="bi bi-question-lg"></i></span>
                                                </div>
                                                <input type="password" name="securityqans" id="inputSecurityQAns" class="field registerform-control" placeholder="{lang key='clientareasecurityanswer'}" autocomplete="off">
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                            </div>
                            {if $showMarketingEmailOptIn}
                               <div class="col-md-12">
                                    <div class="border rounded-1 p-3">
                                        <h4 class="card-title">{lang key='emailMarketing.joinOurMailingList'}</h4>
                                        <p>{$marketingEmailOptInMessage}</p>
                                        <input type="checkbox" name="marketingoptin" value="1"{if $marketingEmailOptIn} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
                                    </div>
                                </div>
                            {/if}
                            <div class="col-md-12">
                                {include file="$template/includes/captcha.tpl"}
                            </div>
                            {if $accepttos}
                                <div class="col-md-12">
                                    <p class="text-center d-flex">
                                        <label class="form-check">
                                            <input type="checkbox" name="accepttos" class="form-check-input accepttos">
                                            {lang key='ordertosagreement'} <a href="{$tosurl}" target="_blank">{lang key='ordertos'}</a>
                                        </label>
                                    </p>
                                </div>
                            {/if}
                            <div class="col-md-12 mt-3">
                                <input class="btn btn-outline-skyblue hover-skyblue w-100 rounded-1 p-2{$captcha->getButtonClass($captchaForm)}" type="submit" value="{lang key='clientregistertitle'}"/>
                            </div>
                </form>
                 <div class="text-center mt-4 small text-muted">
                       Zaten bir hesabınız var mı?
                    </div>
                    <div class="text-center mt-1">
                        <a href="{$WEB_ROOT}/login.php" class="text-link fw-bold">
                            <i class="bi bi-person-plus"></i> Giriş Yapın
                        </a>
                    </div>
            </div>
        </div>
    </div>
</main>
