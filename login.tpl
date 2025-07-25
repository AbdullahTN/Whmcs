<main class="auth-container">
    <div class="login-layout">
        <!-- Giriş Kutusu -->
        <div class="login-wrapper">
            <div class="login-box">
                <div class="logo-wrapper">
                    <img src="https://whmcs.vexa.net.tr/templates/inexus/inexus/assets/img/logos/logo-blue.svg" alt="Vexa Logo">
                </div>
                <h2 class="text-center mb-2">Oturum Aç</h2>
                <p class="text-center text-muted mb-4">Müşteri panelinize erişmek için oturum açın.</p>

                <form method="post" action="{routePath('login-validate')}" role="form" class="needs-validation" novalidate>
                    {include file="$template/includes/flashmessage.tpl"}

                    <div class="form-group mb-3">
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-envelope"></i></span>
                            <input type="email" id="inputEmail" name="username" class="form-control" placeholder="E-Posta Adresi" required autofocus>
                        </div>
                    </div>

                    <div class="form-group mb-3">
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-lock"></i></span>
                            <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Parola" required>
                        </div>
                    </div>

                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="rememberme" name="rememberme">
                            <label class="form-check-label" for="rememberme">Beni Hatırla</label>
                        </div>
                        <a href="{routePath('password-reset-begin')}" class="small text-link">Parola Sıfırlama</a>
                    </div>

                    {if $captcha->isEnabled()}
                    <div class="mb-3">
                        {include file="$template/includes/captcha.tpl"}
                    </div>
                    {/if}

                    <button type="submit" class="btn btn-primary w-100 py-2">
                        <i class="bi bi-box-arrow-in-right me-1"></i> Giriş Yap
                    </button>

                    <div class="text-center mt-4 small text-muted">
                        HENÜZ HESABINIZ YOK MU?
                    </div>
                    <div class="text-center mt-1">
                        <a href="{$WEB_ROOT}/register.php" class="text-link fw-bold">
                            <i class="bi bi-person-plus"></i> Yeni Bir Hesap Oluşturun
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>
