<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
    <div class="app-brand demo ">
            <a href="{{url('/Serveyor')}}" class="app-brand-link">
              <img src="{{asset('public/assets/img/logo.png')}}" style="width: 100%;"> 
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>
    
    <ul class="menu-inner">
     <li class="menu-item {{ (request()->is('Serveyor')) ? 'active' : '' }}">
        <a href="{{url('Serveyor')}}" class="menu-link">
          <i class="menu-icon tf-icons bx bx-home-circle"></i>
          <div data-i18n="Dashboards">Dashboards</div>
        </a>
      </li>
      
      <li class="menu-item {{ (request()->is('SpotReport/policy-report*')) ? 'active' : '' }}">
        <a href="javascript:void(0)" class="menu-link menu-toggle">
          <i class="menu-icon tf-icons bx bx-collection"></i>
          <div data-i18n="Reports">Reports</div>
        </a>
        <ul class="menu-sub">
          <li class="menu-item {{ (request()->is('SpotReport*')) ? 'active' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-user-circle"></i>
              <div data-i18n="Spot">Spot</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="{{url('SpotReport/policy-report')}}" class="menu-link">
                  <div data-i18n="Add New">Add New</div>
                </a>
              </li>
              <!-- <li class="menu-item">
                 <a href="#" class="menu-link">
                  <div data-i18n="InComplete">InComplete</div>
                </a>
              </li>
              <li class="menu-item">
               <a href="#" class="menu-link">
                  <div data-i18n="Pending">Pending</div>
                </a>
              </li> -->
            </ul>
          </li>
          <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-cog"></i>
              <div data-i18n="Interim">Interim</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="{{url('interim/policy-report')}}" class="menu-link">
                  <div data-i18n="Add New">Add New</div>
                </a>
              </li>
              <!-- <li class="menu-item">
                <a href="#" class="menu-link">
                  <div data-i18n="InComplete">InComplete</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="#" class="menu-link">
                  <div data-i18n="Pending">Pending</div>
                </a>
              </li> -->
            </ul>
          </li>
         
          <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bxs-buoy"></i>
              <div data-i18n="Final">Final</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="{{url('final/policy-report')}}" class="menu-link">
                  <div data-i18n="Add New">Add New</div>
                </a>
              </li>
              <!-- <li class="menu-item">
                <a href="#" class="menu-link">
                  <div data-i18n="InComplete">InComplete</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="#" class="menu-link">
                  <div data-i18n="Pending">Pending</div>
                </a>
              </li> -->
              
            </ul>
          </li>
         
        </ul>
      </li>
      <!-- Layouts -->
 

      <li class="menu-item">
        <a href="{{url('surveyor/serveyorInsurer')}}" class="menu-link">
          <i class="menu-icon tf-icons bx bx-home-circle"></i>
          <div data-i18n="Insurer">Insurer</div>
        </a>
      </li>

        <li class="menu-item">
        <a href="{{url('reports/add-album')}}" class="menu-link">
          <i class="menu-icon tf-icons bx bx-home-circle"></i>
          <div data-i18n="Album">Album</div> 
        </a>
      </li>

      <!-- <li class="menu-item">
        <a href="{{url('reports/album-design')}}" class="menu-link">
          <i class="menu-icon tf-icons bx bx-home-circle"></i>
          <div data-i18n="Album design">Album design</div> 
        </a>
      </li> -->

      <li class="menu-item">
        <a href="{{url('surveyor/serveyorBankAccounts')}}" class="menu-link">
          <i class="menu-icon tf-icons bx bx-home-circle"></i>
          <div data-i18n="Bank Accouts">Bank Accounts</div>
        </a>
      </li>

      <li class="menu-item">
        <a href="{{url('serveyor/urlGenerated')}}" class="menu-link">
          <i class="menu-icon tf-icons bx bx-home-circle"></i>
          <div data-i18n="url generator">Url generator</div>
        </a>
      </li>

      <li class="menu-item">
        <a href="javascript:void(0)" class="menu-link menu-toggle">
          <i class="menu-icon tf-icons bx bx-collection"></i>
          <div data-i18n="Reports">Report List</div>
        </a>
        <ul class="menu-sub">
          <li class="menu-item">
            <a href="javascript:void()" class="menu-link">
              <i class="menu-icon tf-icons bx bx-user-circle"></i>
              <div data-i18n="Spot">Complete</div>
            </a>
          </li>

           <li class="menu-item">
            <a href="javascript:void()" class="menu-link">
              <i class="menu-icon tf-icons bx bx-user-circle"></i>
              <div data-i18n="Spot">Uncomplete</div>
            </a>
          </li>

          <li class="menu-item">
            <a href="{{url('serveyor/report-list')}}" class="menu-link">
              <i class="menu-icon tf-icons bx bx-cog"></i>
              <div data-i18n="Interim">Pendding</div>
            </a>
          </li>
         
        </ul>
      </li>
 
    </ul>

</aside>