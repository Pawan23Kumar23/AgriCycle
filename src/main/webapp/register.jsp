<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Farmer Registration</title>

    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="auth-container">

    <div class="auth-card register-card">

        <div class="logo">🌱</div>

        <h1>Farmer Registration</h1>
        <p class="subtitle">Create your farmer account</p>

        <form id="registerForm">

            <div class="form-grid">

                <div class="input-group">
                    <label>Full Name *</label>
                    <input
                        type="text"
                        id="fullName"
                        placeholder="Enter full name"
                        required
                    >
                </div>

                <div class="input-group">
                    <label>Mobile Number *</label>
                    <input
                        type="tel"
                        id="mobile"
                        placeholder="Enter mobile number"
                        maxlength="10"
                        required
                    >
                </div>

                <div class="input-group">
                    <label>Email</label>
                    <input
                        type="email"
                        id="email"
                        placeholder="Enter email"
                    >
                </div>

                <div class="input-group">
                    <label>Farmer ID / Username *</label>
                    <input
                        type="text"
                        id="username"
                        placeholder="Create Farmer ID"
                        required
                    >
                </div>

                <div class="input-group">
                    <label>Password *</label>
                    <input
                        type="password"
                        id="password"
                        placeholder="Create password"
                        required
                    >
                </div>

                <div class="input-group">
                    <label>Confirm Password *</label>
                    <input
                        type="password"
                        id="confirmPassword"
                        placeholder="Confirm password"
                        required
                    >
                </div>

                <div class="input-group full-width">
                    <label>Address *</label>
                    <textarea
                        id="address"
                        placeholder="Enter your address"
                        required></textarea>
                </div>

                <div class="input-group">
                    <label>Village *</label>
                    <input
                        type="text"
                        id="village"
                        placeholder="Village"
                        required
                    >
                </div>

                <div class="input-group">
                    <label>District *</label>
                    <input
                        type="text"
                        id="district"
                        placeholder="District"
                        required
                    >
                </div>

                <div class="input-group">
                    <label>State *</label>
                    <input
                        type="text"
                        id="state"
                        placeholder="State"
                        required
                    >
                </div>

                <div class="input-group">
                    <label>Pincode *</label>
                    <input
                        type="text"
                        id="pincode"
                        placeholder="Pincode"
                        maxlength="6"
                        required
                    >
                </div>

                <div class="input-group">
                    <label>Land Area (Acres)</label>
                    <input
                        type="number"
                        id="landArea"
                        placeholder="Example: 5"
                        min="0"
                    >
                </div>

                <div class="input-group">
                    <label>Primary Crop</label>

                    <select id="crop">
                        <option value="">Select Crop</option>
                        <option value="Rice">Rice</option>
                        <option value="Wheat">Wheat</option>
                        <option value="Corn">Corn</option>
                        <option value="Potato">Potato</option>
                        <option value="Tomato">Tomato</option>
                        <option value="Cotton">Cotton</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

            </div>

            <button type="submit" class="btn primary full">
                Create Farmer Account
            </button>

            <p id="registerMessage" class="message"></p>

        </form>

        <p class="account-text">
            Already have an account?
            <a href="login.jsp">Login</a>
        </p>

    </div>

</div>

<script src="js/auth.js"></script>
<script src="js/register.js"></script>

</body>
</html>