{% if theme.mathjax and page.mathjax %}
  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
      tex2jax: {
        inlineMath: [ ['$','$'], ["\\(","\\)"]  ],
        processEscapes: true,
        skipTags: ['script', 'noscript', 'style', 'textarea', 'pre', 'code']
      }
    });
  </script>

  <script type="text/x-mathjax-config">
    MathJax.Hub.Queue(function() {
      var all = MathJax.Hub.getAllJax(), i;
      for (i=0; i < all.length; i += 1) {
        all[i].SourceElement().parentNode.className += ' has-jax';
      }
    });
  </script>

  <script type="text/x-mathjax-config">
  MathJax.Hub.Config({
    TeX: { equationNumbers: { autoNumber: "AMS" } }
  });
  </script>

  <script type="text/x-mathjax-config">
  MathJax.Hub.Config({
    TeX: {
    extensions: ["AMSmath.js", "AMSsymbols.js", "autobold.js"]
  }
  });
  </script>

  <script type="text/javascript">
  $(document).ready(function(){
    $("code").map(function(){
      match = /^\$(.*)\$$/.exec($(this).html());
      if (match){
        //$(this).after("<span class=mathjax_inline>" + match + "</span>");
        //$(this).hide();
        $(this).replaceWith("<span class=hpl_mathjax_inline>" + $(this).html() + "</span>");
        MathJax.Hub.Queue(["Typeset",MathJax.Hub,$(this).get(0)]);
      }
    });
  });
  </script>

  <script type="text/javascript">
  $(document).ready(function(){
    $("code").map(function(){
      match = /^\$\$/.exec($(this).html());
      if (match){
        //$(this).after("<span class=mathjax_inline>" + match + "</span>");
        //$(this).hide();
        $(this).replaceWith("<span class=hpl_mathjax_inline>" + $(this).html() + "</span>");
        MathJax.Hub.Queue(["Typeset",MathJax.Hub,$(this).get(0)]);
      }
    });
  });
  </script>

  <script type="text/javascript">
  $(document).ready(function(){
    $("code").map(function(){
      match = /^\\begin/.exec($(this).html());
      if (match){
        //$(this).after("<span class=mathjax_inline>" + match + "</span>");
        //$(this).hide();
        $(this).replaceWith("<span class=hpl_mathjax_inline>" + $(this).html() + "</span>");
        MathJax.Hub.Queue(["Typeset",MathJax.Hub,$(this).get(0)]);
      }
    });
  });
  </script>

  {% if config.language === 'zh-Hans' %}
    <!--
    <script type="text/javascript" src="http://cdn.staticfile.org/mathjax/2.4.0/MathJax.js"></script>
    <script type="text/javascript" src="http://cdn.staticfile.org/mathjax/2.4.0/config/TeX-AMS-MML_HTMLorMML.js"></script>
    -->
    <script src="//cdn.bootcss.com/mathjax/2.6.1/MathJax.js"></script>
    <script src="//cdn.bootcss.com/mathjax/2.6.1/config/TeX-AMS-MML_HTMLorMML.js"></script>
  {% else %}
    <script type="text/javascript" src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
  {% endif %}
{% endif %}
