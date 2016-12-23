<navbar>
  <!-- HTML MARKUP -->
  <nav>
    <div class="nav-wrapper">
      <a href="#!" class="brand-logo">Logo</a>
      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="sass.html">Sass</a></li>
        <li><a href="badges.html">Components</a></li>
        <li><a href="collapsible.html">Javascript</a></li>
        <li><a href="mobile.html">Mobile</a></li>
      </ul>
      <ul class="side-nav" id="mobile-demo">
        <li><a href="sass.html">Sass</a></li>
        <li><a href="badges.html">Components</a></li>
        <li><a href="collapsible.html">Javascript</a></li>
        <li><a href="mobile.html">Mobile</a></li>
      </ul>
    </div>
  </nav>





  <!-- CSS RULES -->
  <style>
    nav{
      background-color: rgba(0,0,0,.75);
    }
  </style>
  
  <!-- JS STUFF -->
  <script>
    this.on('mount', function(){
      // gain access to tag HTML elements after they have been mounted
      var $node = $(this.root);
      $node.find(".button-collapse").sideNav();  
    });
  </script>

</navbar>