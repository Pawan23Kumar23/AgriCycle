<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Farmer Dashboard</title>

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<div class="dashboard">

    <!-- Sidebar -->

    <aside class="sidebar">

        <div class="sidebar-logo">
            🌾
            <span>Farmer Portal</span>
        </div>

        <nav>

            <a href="#" class="active">
                🏠 Dashboard
            </a>

            <a href="#">
                👤 My Profile
            </a>

            <a href="#">
                🌱 My Land
            </a>

            <a href="#">
                🌾 My Crops
            </a>

            <a href="#">
                💰 Market Prices
            </a>

            <a href="#">
                🏛 Government Schemes
            </a>

            <a href="#">
                🔔 Notifications
            </a>

            <a href="#">
                ⚙ Settings
            </a>

        </nav>

        <button id="logoutBtn" class="logout-btn">
            🚪 Logout
        </button>

    </aside>


    <!-- Main Content -->

    <main class="main-content">

        <header class="dashboard-header">

            <div>
                <h1>Dashboard</h1>

                <p>
                    Welcome back,
                    <strong id="farmerName">Farmer</strong> 👋
                </p>
            </div>

            <div class="profile-circle">
                👨‍🌾
            </div>

        </header>


        <!-- Cards -->

        <section class="stats">

            <div class="stat-card">
                <div class="stat-icon">🌱</div>

                <div>
                    <p>Land Area</p>
                    <h2>
                        <span id="landArea">0</span> Acres
                    </h2>
                </div>
            </div>


            <div class="stat-card">
                <div class="stat-icon">🌾</div>

                <div>
                    <p>Primary Crop</p>
                    <h2 id="cropName">Not Added</h2>
                </div>
            </div>


            <div class="stat-card">
                <div class="stat-icon">📍</div>

                <div>
                    <p>Location</p>
                    <h2 id="location">India</h2>
                </div>
            </div>


            <div class="stat-card">
                <div class="stat-icon">🔔</div>

                <div>
                    <p>Notifications</p>
                    <h2>3</h2>
                </div>
            </div>

        </section>


        <!-- Dashboard Grid -->

        <section class="dashboard-grid">

            <div class="dashboard-card">

                <h2>👨‍🌾 Farmer Information</h2>

                <div class="info-row">
                    <span>Farmer ID</span>
                    <strong id="farmerId">---</strong>
                </div>

                <div class="info-row">
                    <span>Mobile</span>
                    <strong id="mobile">---</strong>
                </div>

                <div class="info-row">
                    <span>Email</span>
                    <strong id="email">---</strong>
                </div>

                <div class="info-row">
                    <span>District</span>
                    <strong id="district">---</strong>
                </div>

            </div>


            <div class="dashboard-card">

                <h2>🌦 Weather</h2>

                <div class="weather">

                    <div class="weather-icon">
                        ☀️
                    </div>

                    <div>
                        <h1>28°C</h1>
                        <p>Sunny</p>
                    </div>

                </div>

                <p>
                    Good weather conditions for farming today.
                </p>

            </div>


            <div class="dashboard-card">

                <h2>💰 Market Prices</h2>

                <div class="price-row">
                    <span>Rice</span>
                    <strong>₹2,850 / Quintal</strong>
                </div>

                <div class="price-row">
                    <span>Wheat</span>
                    <strong>₹2,450 / Quintal</strong>
                </div>

                <div class="price-row">
                    <span>Potato</span>
                    <strong>₹1,800 / Quintal</strong>
                </div>

            </div>


            <div class="dashboard-card">

                <h2>🏛 Government Schemes</h2>

                <div class="scheme">
                    <strong>PM-KISAN</strong>
                    <p>Financial support for eligible farmers.</p>
                </div>

                <div class="scheme">
                    <strong>PMFBY</strong>
                    <p>Crop insurance scheme.</p>
                </div>

                <div class="scheme">
                    <strong>Kisan Credit Card</strong>
                    <p>Credit facility for farmers.</p>
                </div>

            </div>

        </section>

    </main>

</div>

<script src="js/auth.js"></script>
<script src="js/dashboard.js"></script>

</body>
</html>