<footing>
  <!-- ||||||||||||||||||||||||||||||||||||||||||| -->
  <!-- PRESENTATION MARKUP - BEGIN                 -->
  <!-- ||||||||||||||||||||||||||||||||||||||||||| -->
  <div class="container-fluid">
    <div class="row">

      <footer class="footer-wrapper">
        <section class="social-media-container">
          <virtual each={ social_link in social_media_items }>
            <a class="social_media_link" target="_blank" href={social_link.url}>
              <img class="tooltipped" data-position="top" data-delay="30" data-tooltip={social_link.title} src={social_link.src} alt={social_link.title}>
            </a>
            <img src='' alt=''>
          </virtual>
        </section>
      </footer>

    </div>
  </div>

  <!-- ||||||||||||||||||||||||||||||||||||||||||| -->
  <!-- STYLES BEGIN                                -->
  <!-- ||||||||||||||||||||||||||||||||||||||||||| -->
  <style>
    .footer-wrapper{
      /*background-color:rgba(0,0,0,.75);*/
      background-color:#282828;
      width:100%;
      height:55px;
      position:fixed;
      bottom:0px;
      left:0px;
      z-index:1002;
    }

    .social-media-container{
      /*border:2px solid green;*/
      height:100%;
      display:inline-block;
      float:right;
    }

    .social_media_link img{
      height:100%;
      padding:5%;
      /*border:2px solid green;*/
    }

  </style>


  <!-- ||||||||||||||||||||||||||||||||||||||||||| -->
  <!-- SCRIPTS BEGIN - LOGIC                       -->
  <!-- ||||||||||||||||||||||||||||||||||||||||||| -->
  <script>
    // right after the tag is mounted on the page
    this.on('mount', function() {
      var $node = $(this.root);
      $node.find('.tooltipped').tooltip({delay: 50});
    })

    this.social_media_items = [
    {title:'facebook', src: 'public/images/footer_assets/facebook.svg', url: '#!'},
    {title:'Instagram', src: 'public/images/footer_assets/instagram.svg', url: '#!placeulrhere'},
    {title:'Twitter', src: 'public/images/footer_assets/twitter.svg', url: '#!placeulrhere'},
    {title:'LinkedIn', src: 'public/images/footer_assets/linkedin.svg', url: '#!placeulrhere'},
    {title:'Youtube', src: 'public/images/footer_assets/youtube.svg', url: '#!placeulrhere'},
    ];
  </script>
</footing>
