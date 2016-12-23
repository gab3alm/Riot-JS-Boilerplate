<sample>
  <!-- HTML MARKUP -->
  <div class="container center-align">
    <h1 class="test">This is sample 1</h1>
    <a href="#sample2" class="btn btn-large teal lighten-2">Go to Sample 2</a>  
  </div>

  <!-- CSS RULES -->
  <style>
    .test{
      color:red;
    }
  </style>  

  <!-- JS STUFF -->
  <script>
    this.on('mount', function(){
      var $node = $(this.root);
      $node.find('h1').hide().fadeIn(1500);
    });
  </script>
</sample>