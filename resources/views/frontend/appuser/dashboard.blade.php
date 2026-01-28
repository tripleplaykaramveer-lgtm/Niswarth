@extends('frontend.layout.index')

@section('main_contant')
    <style>
        .user-dashboard {
            display: flex;
            min-height: 100vh;
            background: #f5f6fa;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        /* SIDEBAR */
        .user-sidebar {
            width: 260px;
            background: #1f2933;
            color: #fff;
        }

        .user-sidebar .user-info {
            padding: 15px;
            background: #111827;
            font-weight: 600;
        }

        .user-sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .user-sidebar ul li {
            border-bottom: 1px solid rgba(255, 255, 255, 0.05);
        }

        .user-sidebar ul li a {
            display: block;
            padding: 12px 18px;
            color: #fff;
            text-decoration: none;
            font-size: 14px;
        }

        .user-sidebar ul li a.active,
        .user-sidebar ul li a:hover {
            background: #fbbf24;
            color: #000;
            font-weight: 600;
        }

        /* CONTENT */
        .dashboard-content {
            flex: 1;
            padding: 30px;
        }

        /* ALERT */
        .verify-alert {
            border: 1px solid #f87171;
            background: #fff5f5;
            padding: 12px;
            text-align: center;
            font-weight: 600;
            color: #111;
            margin-bottom: 25px;
            position: relative;
        }

        .verify-alert::before {
            content: "";
            position: absolute;
            left: 0;
            top: 0;
            width: 4px;
            height: 100%;
            background: #ef4444;
        }

        /* STATS */
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
        }

        .stat-card {
            background: #fbbf24;
            color: #fff;
            padding: 25px;
            border-radius: 4px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .stat-card h5 {
            margin: 0;
            font-size: 16px;
            font-weight: 600;
        }

        .stat-card h2 {
            margin: 5px 0 0;
            font-size: 32px;
            font-weight: 700;
        }

        .stat-icon {
            font-size: 40px;
            opacity: 0.9;
        }
    </style>
    <div class="container">
        <div class="user-dashboard">

            <!-- SIDEBAR -->
            <div class="user-sidebar">
                <div class="user-info">
                    👤 Test User
                </div>

                <ul>
                    <li><a href="#" class="active">Dashboard</a></li>
                    <li><a href="#">Events Booking</a></li>
                    <li><a href="#">All Donations</a></li>
                    <li><a href="#">Campaign List</a></li>
                    <li><a href="#">Campaign Gifts</a></li>
                    <li><a href="#">Withdraw Logs</a></li>
                    <li><a href="#">Community List</a></li>
                    <li><a href="#">Community Campaigns</a></li>
                    <li><a href="#">Joined Community</a></li>
                    <li><a href="#">All Contributions</a></li>
                    <li><a href="#">Contribution Withdraw Log</a></li>
                    <li><a href="#">Reward Points</a></li>
                    <li><a href="#">Reward Redeem Logs</a></li>
                    <li><a href="#">Following User Campaigns (0)</a></li>
                </ul>
            </div>

            <!-- CONTENT -->
            <div class="dashboard-content">

                <!-- ALERT -->
                <div class="verify-alert">
                    Not Verified
                </div>

                <!-- STATS -->
                <div class="stats-grid">

                    <div class="stat-card">
                        <div>
                            <h5>Events Booking</h5>
                            <h2>1</h2>
                        </div>
                        <div class="stat-icon">📅</div>
                    </div>

                    <div class="stat-card">
                        <div>
                            <h5>Total Donations</h5>
                            <h2>49</h2>
                        </div>
                        <div class="stat-icon">💰</div>
                    </div>

                    <div class="stat-card">
                        <div>
                            <h5>Total Campaigns</h5>
                            <h2>1</h2>
                        </div>
                        <div class="stat-icon">📌</div>
                    </div>

                    <div class="stat-card">
                        <div>
                            <h5>Total Reward Point</h5>
                            <h2>90</h2>
                        </div>
                        <div class="stat-icon">🎁</div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
