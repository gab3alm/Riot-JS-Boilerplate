<sample>
  <h1 class="test">This is sample 1</h1>

  <style>
    .test{
      color:red;
    }
  </style>  

  <script>
    this.on('mount', function(){
      var $node = $(this.root);
      $node.find('h1').hide().fadeIn(1500);
    });

  </script>
</sample>