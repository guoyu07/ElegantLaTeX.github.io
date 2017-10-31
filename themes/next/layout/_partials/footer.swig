<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} -- {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="icon-next-heart fa fa-heart"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
</div>

<div class="powered-by">
  Hosted by <a href="https://pages.coding.me" >Coding Pages</a>
</div>

<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="http://hexo.io">Hexo</a>') }}
</div>

<div class="theme-info">
  {{ __('footer.theme') }} -
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">
    NexT{% if theme.scheme %}.{{ theme.scheme }}{% endif %}
  </a>
  {% if theme.busuanzi %}
  <span id="busuanzi_container_site_pv" style='display:none'>
  &nbsp;&nbsp; | &nbsp;&nbsp;
  您是本站第 <span id="busuanzi_value_site_pv"></span> 位访问者
  </span>
  {% endif %}
</div>

{% if theme.busuanzi %}
<!-- 不蒜子 -->
<script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>
<!-- 不蒜子计数初始值纠正 -->
<script>
    $(document).ready(function() {
        var int = setInterval(fixCount, 100);
        var busuanziSiteOffset = parseInt({{ theme.busuanzi_site_offset }});
       function fixCount() {
         if ($("#busuanzi_container_site_pv").css("display") != "none") {
              clearInterval(int);
              $("#busuanzi_value_site_pv").html(parseInt($("#busuanzi_value_site_pv").html()) + busuanziSiteOffset);
         }
     }
    });
</script>
{% endif %}

{% if hasSearch %}
<script type="text/javascript" src="/js/local_search.js"></script>
{% endif %}

{% block footer %}{% endblock %}
