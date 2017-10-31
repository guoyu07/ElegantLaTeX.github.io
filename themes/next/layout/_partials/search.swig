{% if theme.swiftype_key %}
  {% include 'search/swiftype.swig' %}
{% elseif theme.tinysou_Key %}
  {% include 'search/tinysou.swig' %}
{% else %}
  {% include 'search/local_search.swig' %}
{% endif %}
