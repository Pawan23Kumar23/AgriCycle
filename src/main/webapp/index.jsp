<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Farmer Login</title>

    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="auth-container">

    <div class="auth-card">

        <div class="logo">🌾</div>

        <h1>Farmer Login</h1>
        <p class="subtitle">Login to your farmer account</p>

        <!-- Previous Accounts -->
        <div id="previousAccounts" class="previous-accounts"></div>

        <form id="loginForm">

            <div class="input-group">
                <label>Farmer ID / Username</label>

                <input
                    type="text"
                    id="username"
                    placeholder="Enter Farmer ID"
                    required
                >
            </div>

            <div class="input-group">
                <label>Password</label>

                <div class="password-box">
                    <input
                        type="password"
                        id="password"
                        placeholder="Enter password"
                        required
                    >

                    <button
                        type="button"
                        id="togglePassword"
                        class="password-toggle">
                        👁
                    </button>
                </div>
            </div>

            <div class="login-options">

                <label>
                    <input type="checkbox" id="rememberMe">
                    Remember Me
                </label>

                <a href="#">Forgot Password?</a>

            </div>

            <button type="submit" class="btn primary full">
                Login
            </button>

            <p id="loginMessage" class="message"></p>

        </form>

        <div class="divider">
            <span>OR</span>
        </div>

        <a href="register.html" class="btn secondary full">
            Create New Account
        </a>

        <a href="index.html" class="back-link">
            ← Back to Home
        </a>

    </div>

</div>

<script src="js/auth.js"></script>
<script src="js/login.js"></script>

</body>
</html>