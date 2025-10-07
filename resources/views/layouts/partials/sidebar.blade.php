<!--sidebar wrapper -->
<div class="sidebar-wrapper" data-simplebar="true">
    <div class="sidebar-header">
        <div>
            <h4 class="logo-text">Niswarth</h4>
        </div>
        <div class="toggle-icon ms-auto"><i class='bx bx-arrow-back'></i></div>
    </div>

    <!--navigation-->
    <ul class="metismenu" id="menu">

        <!-- Dashboard -->
        <li>
            <a href="{{ route('main.dashboard') }}">
                <div class="parent-icon"><i class='bx bx-home-alt'></i></div>
                <div class="menu-title">Dashboard</div>
            </a>
        </li>

        <!-- Education -->
        <li>
            <a class="has-arrow" href="javascript:void(0);">
                <div class="parent-icon"><i class='bx bxs-graduation'></i></div>
                <div class="menu-title">Education</div>
            </a>
            <ul>
                <li><a href="{{ route('education.index') }}">Main</a></li>
                <li><a href="{{ route('educationsubcategory.index') }}">SubCategory</a></li>
                <li><a href="{{ route('educationchaildrencategory.index') }}">Children Category</a></li>
                <li><a href="{{ route('educationminichaildrencategory.index') }}">Mini Children Category</a></li>
            </ul>
        </li>

        <!-- Medicine -->
        <li>
            <a class="has-arrow" href="javascript:void(0);">
                <div class="parent-icon"><i class='bx bxs-capsule'></i></div>
                <div class="menu-title">Medicine</div>
            </a>
            <ul>
                <li><a href="{{ route('medicine.index') }}">Main</a></li>
                <li><a href="{{ route('medicinesubcategory.index') }}">SubCategory</a></li>
                <li><a href="{{ route('medicinechaildrencategory.index') }}">Children Category</a></li>
                <li><a href="{{ route('medicineminichaildrencategory.index') }}">Mini Children Category</a></li>
            </ul>
        </li>

        <!-- Food & Water -->
        <li>
            <a class="has-arrow" href="javascript:void(0);">
                <div class="parent-icon"><i class='bx bxs-droplet'></i></div>
                <div class="menu-title">Food & Weter</div>
            </a>
            <ul>
                <li><a href="{{ route('food-water.index') }}">Main</a></li>
                <li><a href="{{ route('foodwater.subcategories') }}">SubCategory</a></li>
                <li><a href="{{ route('foodwater.children') }}">Children Category</a></li>
                <li><a href="{{ route('foodwater.minichildren') }}">Mini Children Category</a></li>
            </ul>
        </li>
        <!-- Tree Installation -->
        <li>
            <a class="has-arrow" href="javascript:void(0);">
                <div class="parent-icon"><i class='bx bxs-tree'></i></div>
                <div class="menu-title">Tree Installation</div>
            </a>
            <ul>
                <li><a href="{{ route('tree-installation.index') }}">Main</a></li>
                <li><a href="{{ route('treeinstallationsubcategory.index') }}">SubCategory</a></li>
                <li><a href="{{ route('treeinstallationchaildrencategory.index') }}">Children Category</a></li>
                <li><a href="{{ route('treeinstallationminichaildrencategory.index') }}">Mini Children Category</a>
                </li>
            </ul>
        </li>

        <!-- Spiritual -->
        <li>
            <a class="has-arrow" href="javascript:void(0);">
                <div class="parent-icon"><i class='bx bxs-bible'></i></div>
                <div class="menu-title">Spiritual</div>
            </a>
            <ul>
                <li><a href="{{ route('spiritual.index') }}">Main</a></li>
                <li><a href="{{ route('spiritualsubcategory.index') }}">SubCategory</a></li>
                <li><a href="{{ route('spiritualchaildrencategory.index') }}">Children Category</a></li>
                <li><a href="{{ route('spiritualminichaildrencategory.index') }}">Mini Children Category</a></li>
            </ul>
        </li>

        <!-- Clothes -->
        <li>
            <a class="has-arrow" href="javascript:void(0);">
                <div class="parent-icon"><i class='bx bxs-t-shirt'></i></div>
                <div class="menu-title">Clothes</div>
            </a>
            <ul>
                <li><a href="{{ route('clothes.index') }}">Main</a></li>
                <li><a href="{{ route('clothessubcategory.index') }}">SubCategory</a></li>
                <li><a href="{{ route('clotheschaildrencategory.index') }}">Children Category</a></li>
                <li><a href="{{ route('clothesminichaildrencategory.index') }}">Mini Children Category</a></li>
            </ul>
        </li>

    </ul>
    <!--end navigation-->
</div>
<!--end sidebar wrapper -->
