<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:param name="html.stylesheet" />

  <!-- content to be included in the header for each page -->
  <xsl:template name="user.head.content">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <script type="text/javascript">var NREUMQ=NREUMQ||[];NREUMQ.push(["mark","firstbyte",new Date().getTime()]);</script>
    <script>var eucookie = true;</script>
    <link rel="shortcut icon" href="http://www.elasticsearch.org/content/themes/elasticsearch-org/favicon.ico" />
    <meta property="og:locale" content="en_US" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Reference Guide | Elasticsearch" />
    <meta property="og:url" content="http://www.elasticsearch.org/guide/" />
    <meta property="og:site_name" content="" />
    <link rel="stylesheet" id="prettify-gc-syntax-highlighter-css" href="http://www.elasticsearch.org/content/plugins/prettify-gc-syntax-highlighter/prettify.css?ver=3.5.2" type="text/css" media="all" />
    <link rel="stylesheet" id="appStyles-css" href="http://www.elasticsearch.org/content/themes/elasticsearch-org/css/main.css?ver=1377893249" type="text/css" media="all" />
    <script type="text/javascript" src="http://www.elasticsearch.org/wp-includes/js/jquery/jquery.js?ver=1.8.3" />
    <script type="text/javascript" src="http://www.elasticsearch.org/content/themes/elasticsearch-org/js/vendor/modernizr-2.6.1.min.js?ver=1" />
    <script type="text/javascript" src="http://www.elasticsearch.org/content/themes/elasticsearch-org/js/vendor/selectivizr-min.js?ver=1" />
    <script type="text/javascript" src="http://www.elasticsearch.org/content/themes/elasticsearch-org/js/plugins.min.js?ver=1377889871" />
    <script type="text/javascript">
      jQuery(function() {
        jQuery('div.navheader+div').css('minHeight',jQuery('div.toc').height()+'px');
        jQuery('article.guide_content a[id]').each(function() { this.href='#'+this.id });
      });
    </script>
    <link rel="stylesheet" type="text/css" href="styles.css" />
  </xsl:template>

  <!-- Wraps the content in required divs -->
  <xsl:template name="local.body.wrapper">
    <xsl:param name="doc" select="self::*" />
    <xsl:param name="prev" />
    <xsl:param name="next" />
    <xsl:param name="nav.context" />
    <xsl:param name="content" />
    <xsl:apply-templates select="." mode="class.attribute">
      <xsl:with-param name="class" select="'single single-guide'" />
    </xsl:apply-templates>
    <script type="text/javascript">if(jQuery('body').data('cookie') != "eu" || jQuery.cookie('allowCookies')){
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-12395217-2']);
        _gaq.push(['_trackPageview']);
        (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    }</script>
    <xsl:comment>[if lt IE 8]&gt;<![CDATA[
        <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
      <![endif]]]></xsl:comment>
    <header>
      <div class="container">
        <div id="header-inner">
          <nav role="navigation" id="main-nav-container">
            <ul id="top-nav" class="menu">
              <li id="menu-item-7" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7">
                <a href="/overview/">Overview</a>
                <ul class="sub-menu">
                  <li id="menu-item-68760" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68760">
                    <a href="/overview/">Elasticsearch</a>
                  </li>
                  <li id="menu-item-68758" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68758">
                    <a href="/overview/kibana/">Kibana</a>
                  </li>
                  <li id="menu-item-68756" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68756">
                    <a href="/overview/kibana/installation/">Kibana Installation</a>
                  </li>
                  <li id="menu-item-68757" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68757">
                    <a href="/overview/kibana/support/">Kibana Support</a>
                  </li>
                  <li id="menu-item-68759" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68759">
                    <a href="/overview/logstash/">Logstash</a>
                  </li>
                </ul>
              </li>
              <li id="menu-item-55" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-55">
                <a href="/resources/">Resources</a>
                <ul class="sub-menu">
                  <li id="menu-item-51762" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-51762">
                    <a href="/webinars/">Webinars</a>
                  </li>
                  <li id="menu-item-4841" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4841">
                    <a href="/guide/">Documentation</a>
                  </li>
                  <li id="menu-item-4843" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4843">
                    <a href="/videos/">Videos</a>
                  </li>
                  <li id="menu-item-4842" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4842">
                    <a href="/tutorials/">Tutorials</a>
                  </li>
                </ul>
              </li>
              <li id="menu-item-728" class="guide_menu_item menu-item menu-item-type-post_type menu-item-object-page menu-item-728">
                <a href="/guide/">Guide</a>
              </li>
              <li id="menu-item-657" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-657">
                <a href="/community/">Community</a>
              </li>
              <li id="menu-item-68802" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68802">
                <a href="/case-studies/">Case Studies</a>
              </li>
              <li id="menu-item-45" class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-45">
                <a href="/blog/">Blog</a>
              </li>
              <li id="menu-item-12" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12">
                <a target="_blank" href="http://elasticsearch.com">.COM</a>
              </li>
            </ul>
          </nav>
          <h1 id="header-logo">
            <a class="faux" href="http://www.elasticsearch.org">Elasticsearch</a>
          </h1>
          <div class="slide-trigger navigation" id="nav-trigger">
            <span class="bar" />
            <span class="bar" />
            <span class="bar" />
          </div>
          <a class="btn btn-primary" href="/download/">Download</a>
          <hr />
        </div>
      </div>
    </header>
    <div class="global_wrapper">
      <div id="index" class="page_content">
        <div class="container">
          <section id="search_container" class="active">
            <form id="blog_search" role="search" action="/" method="get">
              <div class="blog_search_wrapper">
                <input id="s" name="s" class="search_term" type="text" placeholder="search" autocomplete="off" />
                <input type="submit" class="search_submit" value=" " />
                <ul id="results" />
              </div>
            </form>
          </section>
          <section class="full_width guide">
            <article class="guide_content">
              <!-- include content -->
              <xsl:call-template name="local.body.content">
                <xsl:with-param name="node" select="$doc" />
                <xsl:with-param name="prev" select="$prev" />
                <xsl:with-param name="next" select="$next" />
                <xsl:with-param name="nav.context" select="$nav.context" />
                <xsl:with-param name="content" select="$content" />
              </xsl:call-template>
              <!-- content done -->
            </article>
          </section>
        </div>
      </div>
    </div>
    <!-- global wrapper -->
    <footer>
      <div id="drawer_container" class="full_wrapper">
        <div id="drawer_inner" class="container">
          <div class="block">
            <img class="creeper" src="http://www.elasticsearch.org/content/uploads/2013/03/training_icon.png" alt="" />
            <h3>Training</h3>
            <p>
              Want to
              <span class="oomph">learn</span>
              from the creators and advance your data-driven
              <span class="oomph">superpowers?</span>
            </p>
            <a target="_blank" href="http://elasticsearch.com/services/training/" class="btn-expose drawer_toggle">More</a>
            <span class="arrow" />
            <div class="block_content">
              <h1 style="text-align: center;">We have training all over the world</h1>
              <p style="text-align: center;">
                <a class="btn btn-secondary" href="http://elasticsearch.com/services/training/" target="_blank">Visit Training Page</a>
              </p>
              <div class="training_list">
                <table>
                  <tr>
                    <td class="title">London, United Kingdom</td>
                    <td class="date">September 9-10, 2013</td>
                    <td class="action">
                      <a class="btn-small btn-primary" target="_blank" href="http://elasticsearch.com/services/training/">Register</a>
                    </td>
                  </tr>
                  <tr>
                    <td class="title">New York, United States</td>
                    <td class="date">September 9-10, 2013</td>
                    <td class="action">
                      <span class="sold_out">Sold Out</span>
                    </td>
                  </tr>
                  <tr>
                    <td class="title">Paris, France</td>
                    <td class="date">September 16-17, 2013</td>
                    <td class="action">
                      <a class="btn-small btn-primary" target="_blank" href="http://elasticsearch.com/services/training/">Register</a>
                    </td>
                  </tr>
                  <tr>
                    <td class="title">San Francisco, United States</td>
                    <td class="date">September 23-24, 2013</td>
                    <td class="action">
                      <a class="btn-small btn-primary" target="_blank" href="http://elasticsearch.com/services/training/">Register</a>
                    </td>
                  </tr>
                  <tr>
                    <td class="title">Cologne, Germany</td>
                    <td class="date">October 17-18, 2013</td>
                    <td class="action">
                      <a class="btn-small btn-primary" target="_blank" href="http://elasticsearch.com/services/training/">Register</a>
                    </td>
                  </tr>
                  <tr>
                    <td class="title">Washington DC, United States</td>
                    <td class="date">October 21-22, 2013</td>
                    <td class="action">
                      <a class="btn-small btn-primary" target="_blank" href="http://elasticsearch.com/services/training/">Register</a>
                    </td>
                  </tr>
                  <tr>
                    <td class="title">San Francisco, United States</td>
                    <td class="date">October 24-25, 2013</td>
                    <td class="action">
                      <a class="btn-small btn-primary" target="_blank" href="http://elasticsearch.com/services/training/">Register</a>
                    </td>
                  </tr>
                  <tr>
                    <td class="title">Zurich, Switzerland</td>
                    <td class="date">October 29-10, 2013</td>
                    <td class="action">
                      <a class="btn-small btn-primary" target="_blank" href="http://elasticsearch.com/services/training/">Register</a>
                    </td>
                  </tr>
                </table>
              </div>
              <a target="_blank" class="more_events" href="http://elasticsearch.com/services/training/">See more upcoming events!</a>
            </div>
          </div>
          <div class="block">
            <img class="creeper" src="http://www.elasticsearch.org/content/uploads/2013/03/dev_icon.png" alt="" />
            <h3>Dev Support</h3>
            <p>
              Need help with
              <span class="oomph">architectural advice</span>
            </p>
            <p>
              or
              <span class="oomph">design validation</span>
              ?
            </p>
            <a target="_blank" href="http://elasticsearch.com/support/subscription/" class="btn-expose drawer_toggle">More</a>
            <span class="arrow" />
            <div class="block_content">
              <h1 style="text-align: center;">Get development help from our core team!</h1>
              <p>Want more information about our Development Support? Let us know how to get a hold of you and we’ll be in touch soon.</p>
              <div class="gf_browser_chrome gform_wrapper" id="gform_wrapper_1">
                <a id="gf_1" name="gf_1" class="gform_anchor" />
                <form method="post" enctype="multipart/form-data" target="gform_ajax_frame_1" id="gform_1" action="/guide/#gf_1">
                  <div class="gform_body">
                    <ul id="gform_fields_1" class="gform_fields top_label description_below">
                      <li id="field_1_1" class="gfield    icon name           gfield_contains_required">
                        <label class="gfield_label" for="input_1_1">
                          First Name
                          <span class="gfield_required">*</span>
                        </label>
                        <div class="ginput_container">
                          <input name="input_1" id="input_1_1" type="text" value="" class="medium" tabindex="1" />
                        </div>
                      </li>
                      <li id="field_1_7" class="gfield    icon name           gfield_contains_required">
                        <label class="gfield_label" for="input_1_7">
                          Last Name
                          <span class="gfield_required">*</span>
                        </label>
                        <div class="ginput_container">
                          <input name="input_7" id="input_1_7" type="text" value="" class="medium" tabindex="2" />
                        </div>
                      </li>
                      <li id="field_1_2" class="gfield    icon company">
                        <label class="gfield_label" for="input_1_2">Company</label>
                        <div class="ginput_container">
                          <input name="input_2" id="input_1_2" type="text" value="" class="medium" tabindex="3" />
                        </div>
                      </li>
                      <li id="field_1_3" class="gfield    icon email           gfield_contains_required">
                        <label class="gfield_label" for="input_1_3">
                          Email
                          <span class="gfield_required">*</span>
                        </label>
                        <div class="ginput_container">
                          <input name="input_3" id="input_1_3" type="email" value="" class="medium" tabindex="4" />
                        </div>
                      </li>
                      <li id="field_1_4" class="gfield    icon job">
                        <label class="gfield_label" for="input_1_4">Job Title</label>
                        <div class="ginput_container">
                          <input name="input_4" id="input_1_4" type="text" value="" class="medium" tabindex="5" />
                        </div>
                      </li>
                      <li id="field_1_5" class="gfield    icon phone">
                        <label class="gfield_label" for="input_1_5">Phone</label>
                        <div class="ginput_container">
                          <input name="input_5" id="input_1_5" type="text" value="" class="medium" tabindex="6" />
                        </div>
                      </li>
                      <li id="field_1_6" class="gfield    full">
                        <label class="gfield_label">I'm inquiring about...</label>
                        <div class="ginput_container">
                          <ul class="gfield_checkbox" id="input_1_6">
                            <li class="gchoice_6_1">
                              <input name="input_6.1" type="checkbox" value="Interest_Dev_Support__c" checked="checked" id="choice_6_1" tabindex="7" />
                              <label for="choice_6_1">Dev support</label>
                            </li>
                            <li class="gchoice_6_2">
                              <input name="input_6.2" type="checkbox" value="Interest_Training__c" id="choice_6_2" tabindex="8" />
                              <label for="choice_6_2">Training</label>
                            </li>
                            <li class="gchoice_6_3">
                              <input name="input_6.3" type="checkbox" value="Interest_Product_Support__c" id="choice_6_3" tabindex="9" />
                              <label for="choice_6_3">Production support</label>
                            </li>
                            <li class="gchoice_6_4">
                              <input name="input_6.4" type="checkbox" value="Interest_Newsletter_Updates__c" checked="checked" id="choice_6_4" tabindex="10" />
                              <label for="choice_6_4">Newsletter Updates</label>
                            </li>
                          </ul>
                        </div>
                      </li>
                      <li id="field_1_10" class="gfield    icon comments full">
                        <label class="gfield_label" for="input_1_10">Comments</label>
                        <div class="ginput_container">
                          <textarea name="input_10" id="input_1_10" class="textarea medium" tabindex="11" rows="10" cols="50" />
                        </div>
                      </li>
                      <li id="field_1_8" class="gfield     gform_hidden">
                        <input name="input_8" id="input_1_8" type="hidden" class="gform_hidden" value="813-MAM-392" />
                      </li>
                      <li id="field_1_9" class="gfield     gform_hidden">
                        <input name="input_9" id="input_1_9" type="hidden" class="gform_hidden" value="WEB.org" />
                      </li>
                      <li id="field_1_11" class="gfield     gform_hidden">
                        <input name="input_11" id="input_1_11" type="hidden" class="gform_hidden" value="WEB.org - Home - Dev Support" />
                      </li>
                      <li id="field_1_12" class="gfield     gform_hidden">
                        <input name="input_12" id="input_1_12" type="hidden" class="gform_hidden" value="-1" />
                      </li>
                      <li id="field_1_13" class="gfield     gform_hidden">
                        <input name="input_13" id="input_1_13" type="hidden" class="gform_hidden" value="55" />
                      </li>
                      <li id="field_1_14" class="gfield     gform_hidden">
                        <input name="input_14" id="input_1_14" type="hidden" class="gform_hidden" value="1005" />
                      </li>
                    </ul>
                  </div>
                  <div class="gform_footer top_label">
                    <input type="submit" id="gform_submit_button_1" class="button gform_button" value="Submit" tabindex="12" />
                    <input type="hidden" name="gform_ajax" value="form_id=1&amp;title=&amp;description=" />
                    <input type="hidden" class="gform_hidden" name="is_submit_1" value="1" />
                    <input type="hidden" class="gform_hidden" name="gform_submit" value="1" />
                    <input type="hidden" class="gform_hidden" name="gform_unique_id" value="" />
                    <input type="hidden" class="gform_hidden" name="state_1" value="WyJhOjA6e30iLCJmMjE2MmM2ZjUxYmQ4M2Q3ZmMzNzVlNmY2ODYyZTI2NCJd" />
                    <input type="hidden" class="gform_hidden" name="gform_target_page_number_1" id="gform_target_page_number_1" value="0" />
                    <input type="hidden" class="gform_hidden" name="gform_source_page_number_1" id="gform_source_page_number_1" value="1" />
                    <input type="hidden" name="gform_field_values" value="" />
                  </div>
                </form>
              </div>
              <iframe style="display:none;width:0px; height:0px;" src="about:blank" name="gform_ajax_frame_1" id="gform_ajax_frame_1" />
              <script type="text/javascript">
                <xsl:text disable-output-escaping="yes">//&lt;![CDATA[<![CDATA[
function gformInitSpinner_1(){jQuery('#gform_1').submit(function(){if(jQuery('#gform_ajax_spinner_1').length == 0){jQuery('#gform_submit_button_1, #gform_wrapper_1 .gform_previous_button, #gform_wrapper_1 .gform_next_button, #gform_wrapper_1 .gform_image_button').attr('disabled', true); jQuery('#gform_submit_button_1, #gform_wrapper_1 .gform_next_button, #gform_wrapper_1 .gform_image_button').after('<' + 'img id="gform_ajax_spinner_1"  class="gform_ajax_spinner" src="http://www.elasticsearch.org/content/plugins/gravityforms/images/spinner.gif" alt="" />'); }} );}jQuery(document).ready(function($){gformInitSpinner_1();jQuery('#gform_ajax_frame_1').load( function(){var contents = jQuery(this).contents().find('*').html();var is_postback = contents.indexOf('GF_AJAX_POSTBACK') >= 0;if(!is_postback){return;}var form_content = jQuery(this).contents().find('#gform_wrapper_1');var is_redirect = contents.indexOf('gformRedirect(){') >= 0;jQuery('#gform_submit_button_1').removeAttr('disabled');var is_form = !(form_content.length <= 0 || is_redirect);if(is_form){jQuery('#gform_wrapper_1').html(form_content.html());jQuery(document).scrollTop(jQuery('#gform_wrapper_1').offset().top);if(window['gformInitDatepicker']) {gformInitDatepicker();}if(window['gformInitPriceFields']) {gformInitPriceFields();}var current_page = jQuery('#gform_source_page_number_1').val();gformInitSpinner_1();jQuery(document).trigger('gform_page_loaded', [1, current_page]);}else if(!is_redirect){var confirmation_content = jQuery(this).contents().find('#gforms_confirmation_message').html();if(!confirmation_content){confirmation_content = contents;}setTimeout(function(){jQuery('#gform_wrapper_1').replaceWith('<' + 'div id=\'gforms_confirmation_message\' class=\'gform_confirmation_message_1\'' + '>' + confirmation_content + '<' + '/div' + '>');jQuery(document).scrollTop(jQuery('#gforms_confirmation_message').offset().top);jQuery(document).trigger('gform_confirmation_loaded', [1]);}, 50);}else{jQuery('#gform_1').append(contents);if(window['gformRedirect']) {gformRedirect();}}jQuery(document).trigger('gform_post_render', [1, current_page]);} );} );</script><script type='text/javascript'> jQuery(document).ready(function(){jQuery(document).trigger('gform_post_render', [1, 1]) } );
]]>//]]&gt;</xsl:text>
              </script>
            </div>
          </div>
          <div class="block">
            <img class="creeper" src="http://www.elasticsearch.org/content/uploads/2013/03/prod_icon.png" alt="" />
            <h3>Production Support</h3>
            <p>Have Elasticsearch live in production</p>
            <p>
              and looking for
              <span class="oomph">SLA-based support</span>
              ?
            </p>
            <a target="_blank" href="http://elasticsearch.com/support/subscription/" class="btn-expose drawer_toggle">More</a>
            <span class="arrow" />
            <div class="block_content">
              <h1 style="text-align: center;">In production? We’ve got your back, 24/7</h1>
              <p>We’d love to talk to you about our Production Support. Let us know how to get a hold of you and we’ll be in touch soon.</p>
              <ul class="drawer_highlights">
                <li>
                  <div class="img">
                    <img alt="clock" src="http://www.elasticsearch.org/content/uploads/2013/03/clock.png" />
                  </div>
                  <p>24/7 response time available always</p>
                </li>
                <li class="wide">
                  <div class="img">
                    <img alt="flag" src="http://www.elasticsearch.org/content/uploads/2013/03/flag.png" />
                  </div>
                  <p>Support from team that built Elasticsearch</p>
                </li>
                <li>
                  <div class="img">
                    <img alt="star" src="http://www.elasticsearch.org/content/uploads/2013/03/star.png" />
                  </div>
                  <p>Expert-level solutions</p>
                </li>
              </ul>
              <div class="gf_browser_chrome gform_wrapper" id="gform_wrapper_2">
                <a id="gf_2" name="gf_2" class="gform_anchor" />
                <form method="post" enctype="multipart/form-data" target="gform_ajax_frame_2" id="gform_2" action="/guide/#gf_2">
                  <div class="gform_body">
                    <ul id="gform_fields_2" class="gform_fields top_label description_below">
                      <li id="field_2_1" class="gfield    icon name           gfield_contains_required">
                        <label class="gfield_label" for="input_2_1">
                          First Name
                          <span class="gfield_required">*</span>
                        </label>
                        <div class="ginput_container">
                          <input name="input_1" id="input_2_1" type="text" value="" class="medium" tabindex="1" />
                        </div>
                      </li>
                      <li id="field_2_7" class="gfield    icon name           gfield_contains_required">
                        <label class="gfield_label" for="input_2_7">
                          Last Name
                          <span class="gfield_required">*</span>
                        </label>
                        <div class="ginput_container">
                          <input name="input_7" id="input_2_7" type="text" value="" class="medium" tabindex="2" />
                        </div>
                      </li>
                      <li id="field_2_2" class="gfield    icon company">
                        <label class="gfield_label" for="input_2_2">Company</label>
                        <div class="ginput_container">
                          <input name="input_2" id="input_2_2" type="text" value="" class="medium" tabindex="3" />
                        </div>
                      </li>
                      <li id="field_2_3" class="gfield    icon email           gfield_contains_required">
                        <label class="gfield_label" for="input_2_3">
                          Email
                          <span class="gfield_required">*</span>
                        </label>
                        <div class="ginput_container">
                          <input name="input_3" id="input_2_3" type="email" value="" class="medium" tabindex="4" />
                        </div>
                      </li>
                      <li id="field_2_4" class="gfield    icon job">
                        <label class="gfield_label" for="input_2_4">Job Title</label>
                        <div class="ginput_container">
                          <input name="input_4" id="input_2_4" type="text" value="" class="medium" tabindex="5" />
                        </div>
                      </li>
                      <li id="field_2_5" class="gfield    icon phone">
                        <label class="gfield_label" for="input_2_5">Phone</label>
                        <div class="ginput_container">
                          <input name="input_5" id="input_2_5" type="text" value="" class="medium" tabindex="6" />
                        </div>
                      </li>
                      <li id="field_2_6" class="gfield    full">
                        <label class="gfield_label">I'm inquiring about...</label>
                        <div class="ginput_container">
                          <ul class="gfield_checkbox" id="input_2_6">
                            <li class="gchoice_6_1">
                              <input name="input_6.1" type="checkbox" value="Interest_Dev_Support__c" id="choice_6_1" tabindex="7" />
                              <label for="choice_6_1">Dev support</label>
                            </li>
                            <li class="gchoice_6_2">
                              <input name="input_6.2" type="checkbox" value="Interest_Training__c" id="choice_6_2" tabindex="8" />
                              <label for="choice_6_2">Training</label>
                            </li>
                            <li class="gchoice_6_3">
                              <input name="input_6.3" type="checkbox" value="Interest_Product_Support__c" checked="checked" id="choice_6_3" tabindex="9" />
                              <label for="choice_6_3">Production support</label>
                            </li>
                            <li class="gchoice_6_4">
                              <input name="input_6.4" type="checkbox" value="Interest_Newsletter_Updates__c" checked="checked" id="choice_6_4" tabindex="10" />
                              <label for="choice_6_4">Newsletter Updates</label>
                            </li>
                          </ul>
                        </div>
                      </li>
                      <li id="field_2_10" class="gfield    icon comments full">
                        <label class="gfield_label" for="input_2_10">Comments</label>
                        <div class="ginput_container">
                          <textarea name="input_10" id="input_2_10" class="textarea medium" tabindex="11" rows="10" cols="50" />
                        </div>
                      </li>
                      <li id="field_2_8" class="gfield     gform_hidden">
                        <input name="input_8" id="input_2_8" type="hidden" class="gform_hidden" value="813-MAM-392" />
                      </li>
                      <li id="field_2_9" class="gfield     gform_hidden">
                        <input name="input_9" id="input_2_9" type="hidden" class="gform_hidden" value="WEB.org" />
                      </li>
                      <li id="field_2_11" class="gfield     gform_hidden">
                        <input name="input_11" id="input_2_11" type="hidden" class="gform_hidden" value="WEB.org - Home - Production Support" />
                      </li>
                    </ul>
                  </div>
                  <div class="gform_footer top_label">
                    <input type="submit" id="gform_submit_button_2" class="button gform_button" value="Submit" tabindex="12" />
                    <input type="hidden" name="gform_ajax" value="form_id=2&amp;title=&amp;description=" />
                    <input type="hidden" class="gform_hidden" name="is_submit_2" value="1" />
                    <input type="hidden" class="gform_hidden" name="gform_submit" value="2" />
                    <input type="hidden" class="gform_hidden" name="gform_unique_id" value="" />
                    <input type="hidden" class="gform_hidden" name="state_2" value="WyJhOjA6e30iLCJmMjE2MmM2ZjUxYmQ4M2Q3ZmMzNzVlNmY2ODYyZTI2NCJd" />
                    <input type="hidden" class="gform_hidden" name="gform_target_page_number_2" id="gform_target_page_number_2" value="0" />
                    <input type="hidden" class="gform_hidden" name="gform_source_page_number_2" id="gform_source_page_number_2" value="1" />
                    <input type="hidden" name="gform_field_values" value="" />
                  </div>
                </form>
              </div>
              <iframe style="display:none;width:0px; height:0px;" src="about:blank" name="gform_ajax_frame_2" id="gform_ajax_frame_2" />
              <script type="text/javascript">
                <xsl:text disable-output-escaping="yes">//&lt;![CDATA[<![CDATA[
function gformInitSpinner_2(){jQuery('#gform_2').submit(function(){if(jQuery('#gform_ajax_spinner_2').length == 0){jQuery('#gform_submit_button_2, #gform_wrapper_2 .gform_previous_button, #gform_wrapper_2 .gform_next_button, #gform_wrapper_2 .gform_image_button').attr('disabled', true); jQuery('#gform_submit_button_2, #gform_wrapper_2 .gform_next_button, #gform_wrapper_2 .gform_image_button').after('<' + 'img id="gform_ajax_spinner_2"  class="gform_ajax_spinner" src="http://www.elasticsearch.org/content/plugins/gravityforms/images/spinner.gif" alt="" />'); }} );}jQuery(document).ready(function($){gformInitSpinner_2();jQuery('#gform_ajax_frame_2').load( function(){var contents = jQuery(this).contents().find('*').html();var is_postback = contents.indexOf('GF_AJAX_POSTBACK') >= 0;if(!is_postback){return;}var form_content = jQuery(this).contents().find('#gform_wrapper_2');var is_redirect = contents.indexOf('gformRedirect(){') >= 0;jQuery('#gform_submit_button_2').removeAttr('disabled');var is_form = !(form_content.length <= 0 || is_redirect);if(is_form){jQuery('#gform_wrapper_2').html(form_content.html());jQuery(document).scrollTop(jQuery('#gform_wrapper_2').offset().top);if(window['gformInitDatepicker']) {gformInitDatepicker();}if(window['gformInitPriceFields']) {gformInitPriceFields();}var current_page = jQuery('#gform_source_page_number_2').val();gformInitSpinner_2();jQuery(document).trigger('gform_page_loaded', [2, current_page]);}else if(!is_redirect){var confirmation_content = jQuery(this).contents().find('#gforms_confirmation_message').html();if(!confirmation_content){confirmation_content = contents;}setTimeout(function(){jQuery('#gform_wrapper_2').replaceWith('<' + 'div id=\'gforms_confirmation_message\' class=\'gform_confirmation_message_2\'' + '>' + confirmation_content + '<' + '/div' + '>');jQuery(document).scrollTop(jQuery('#gforms_confirmation_message').offset().top);jQuery(document).trigger('gform_confirmation_loaded', [2]);}, 50);}else{jQuery('#gform_2').append(contents);if(window['gformRedirect']) {gformRedirect();}}jQuery(document).trigger('gform_post_render', [2, current_page]);} );} );</script><script type='text/javascript'> jQuery(document).ready(function(){jQuery(document).trigger('gform_post_render', [2, 1]) } );
]]>//]]&gt;</xsl:text>
              </script>
            </div>
          </div>
        </div>
        <div id="drawer_lower">
          <div id="support_details">
            <div class="container">
              <a href="#" class="close">
                <i class="icon-remove" />
              </a>
              <div class="drawer_content" />
            </div>
          </div>
        </div>
      </div>
      <div id="mobile_learn_more">
        <div class="container">
          <div class="gf_browser_chrome gform_wrapper more_info_wrapper" id="gform_wrapper_3">
            <a id="gf_3" name="gf_3" class="gform_anchor" />
            <form method="post" enctype="multipart/form-data" target="gform_ajax_frame_3" id="gform_3" class="more_info" action="/guide/#gf_3">
              <div class="gform_body">
                <ul id="gform_fields_3" class="gform_fields top_label description_below">
                  <li id="field_3_2" class="gfield               gfield_contains_required">
                    <label class="gfield_label" for="input_3_2">
                      Need more info? We'll email some more your way!
                      <span class="gfield_required">*</span>
                    </label>
                    <div class="ginput_container">
                      <input name="input_2" id="input_3_2" type="email" value="" class="medium" tabindex="1" />
                    </div>
                  </li>
                  <li id="field_3_3" class="gfield     gform_hidden">
                    <input name="input_3" id="input_3_3" type="hidden" class="gform_hidden" value="813-MAM-392" />
                  </li>
                  <li id="field_3_4" class="gfield     gform_hidden">
                    <input name="input_4" id="input_3_4" type="hidden" class="gform_hidden" value="WEB.org" />
                  </li>
                  <li id="field_3_5" class="gfield     gform_hidden">
                    <input name="input_5" id="input_3_5" type="hidden" class="gform_hidden" value="WEB.org - Home - Mobile" />
                  </li>
                </ul>
              </div>
              <div class="gform_footer top_label">
                <input type="submit" id="gform_submit_button_3" class="button gform_button" value="Submit" tabindex="2" />
                <input type="hidden" name="gform_ajax" value="form_id=3&amp;title=&amp;description=" />
                <input type="hidden" class="gform_hidden" name="is_submit_3" value="1" />
                <input type="hidden" class="gform_hidden" name="gform_submit" value="3" />
                <input type="hidden" class="gform_hidden" name="gform_unique_id" value="" />
                <input type="hidden" class="gform_hidden" name="state_3" value="WyJhOjA6e30iLCJmMjE2MmM2ZjUxYmQ4M2Q3ZmMzNzVlNmY2ODYyZTI2NCJd" />
                <input type="hidden" class="gform_hidden" name="gform_target_page_number_3" id="gform_target_page_number_3" value="0" />
                <input type="hidden" class="gform_hidden" name="gform_source_page_number_3" id="gform_source_page_number_3" value="1" />
                <input type="hidden" name="gform_field_values" value="" />
              </div>
            </form>
          </div>
          <iframe style="display:none;width:0px; height:0px;" src="about:blank" name="gform_ajax_frame_3" id="gform_ajax_frame_3" />
          <script type="text/javascript">
            <xsl:text disable-output-escaping="yes">//&lt;![CDATA[<![CDATA[
function gformInitSpinner_3(){jQuery('#gform_3').submit(function(){if(jQuery('#gform_ajax_spinner_3').length == 0){jQuery('#gform_submit_button_3, #gform_wrapper_3 .gform_previous_button, #gform_wrapper_3 .gform_next_button, #gform_wrapper_3 .gform_image_button').attr('disabled', true); jQuery('#gform_submit_button_3, #gform_wrapper_3 .gform_next_button, #gform_wrapper_3 .gform_image_button').after('<' + 'img id="gform_ajax_spinner_3"  class="gform_ajax_spinner" src="http://www.elasticsearch.org/content/plugins/gravityforms/images/spinner.gif" alt="" />'); }} );}jQuery(document).ready(function($){gformInitSpinner_3();jQuery('#gform_ajax_frame_3').load( function(){var contents = jQuery(this).contents().find('*').html();var is_postback = contents.indexOf('GF_AJAX_POSTBACK') >= 0;if(!is_postback){return;}var form_content = jQuery(this).contents().find('#gform_wrapper_3');var is_redirect = contents.indexOf('gformRedirect(){') >= 0;jQuery('#gform_submit_button_3').removeAttr('disabled');var is_form = !(form_content.length <= 0 || is_redirect);if(is_form){jQuery('#gform_wrapper_3').html(form_content.html());jQuery(document).scrollTop(jQuery('#gform_wrapper_3').offset().top);if(window['gformInitDatepicker']) {gformInitDatepicker();}if(window['gformInitPriceFields']) {gformInitPriceFields();}var current_page = jQuery('#gform_source_page_number_3').val();gformInitSpinner_3();jQuery(document).trigger('gform_page_loaded', [3, current_page]);}else if(!is_redirect){var confirmation_content = jQuery(this).contents().find('#gforms_confirmation_message').html();if(!confirmation_content){confirmation_content = contents;}setTimeout(function(){jQuery('#gform_wrapper_3').replaceWith('<' + 'div id=\'gforms_confirmation_message\' class=\'gform_confirmation_message_3\'' + '>' + confirmation_content + '<' + '/div' + '>');jQuery(document).scrollTop(jQuery('#gforms_confirmation_message').offset().top);jQuery(document).trigger('gform_confirmation_loaded', [3]);}, 50);}else{jQuery('#gform_3').append(contents);if(window['gformRedirect']) {gformRedirect();}}jQuery(document).trigger('gform_post_render', [3, current_page]);} );} );</script><script type='text/javascript'> jQuery(document).ready(function(){jQuery(document).trigger('gform_post_render', [3, 1]) } );
]]>//]]&gt;</xsl:text>
          </script>
        </div>
      </div>
      <div id="footer_container" class="full_wrapper">
        <div class="container">
          <nav role="navigation">
            <ul id="footer_nav" class="menu">
              <li id="menu-item-36" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-36">
                <a target="_blank" href="http://elasticsearch.com">.COM</a>
              </li>
              <li id="menu-item-727" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-727">
                <a href="/guide/">Guide</a>
              </li>
              <li id="menu-item-3106" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3106">
                <a href="/terms-of-use/">Terms</a>
              </li>
              <li id="menu-item-3107" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3107">
                <a href="/privacy-and-cookie-policy/">Privacy</a>
              </li>
              <li id="menu-item-3105" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3105">
                <a href="/contact/">Contact</a>
              </li>
              <li id="menu-item-39" class="menu-item menu-item-type-post_type menu-item-object-page current_page_parent menu-item-39">
                <a href="/blog/">Blog</a>
              </li>
            </ul>
          </nav>
          <div id="social">
            <a href="https://twitter.com/elasticsearch" class="social_icons" target="_blank">
              <i class="twitter" />
            </a>
            <a href="https://www.facebook.com/elasticsearch" class="social_icons" target="_blank">
              <i class="facebook" />
            </a>
          </div>
          <div id="footer_form">
            <label class="form_label">Sign up for updates!</label>
            <div class="gf_browser_chrome gform_wrapper" id="gform_wrapper_4">
              <a id="gf_4" name="gf_4" class="gform_anchor" />
              <form method="post" enctype="multipart/form-data" target="gform_ajax_frame_4" id="gform_4" action="/guide/#gf_4">
                <div class="gform_body">
                  <ul id="gform_fields_4" class="gform_fields top_label description_below">
                    <li id="field_4_6" class="gfield               gfield_contains_required">
                      <label class="gfield_label" for="input_4_6">
                        enter you email
                        <span class="gfield_required">*</span>
                      </label>
                      <div class="ginput_container">
                        <input name="input_6" id="input_4_6" type="email" value="" class="medium" tabindex="50" />
                      </div>
                    </li>
                    <li id="field_4_2" class="gfield     gform_hidden">
                      <input name="input_2" id="input_4_2" type="hidden" class="gform_hidden" value="813-MAM-392" />
                    </li>
                    <li id="field_4_3" class="gfield     gform_hidden">
                      <input name="input_3" id="input_4_3" type="hidden" class="gform_hidden" value="WEB.org" />
                    </li>
                    <li id="field_4_4" class="gfield     gform_hidden">
                      <input name="input_4" id="input_4_4" type="hidden" class="gform_hidden" value="WEB.org - Footer - Updates" />
                    </li>
                  </ul>
                </div>
                <div class="gform_footer top_label">
                  <input type="submit" id="gform_submit_button_4" class="button gform_button" value="Submit" tabindex="51" />
                  <input type="hidden" name="gform_ajax" value="form_id=4&amp;title=&amp;description=" />
                  <input type="hidden" class="gform_hidden" name="is_submit_4" value="1" />
                  <input type="hidden" class="gform_hidden" name="gform_submit" value="4" />
                  <input type="hidden" class="gform_hidden" name="gform_unique_id" value="" />
                  <input type="hidden" class="gform_hidden" name="state_4" value="WyJhOjA6e30iLCJmMjE2MmM2ZjUxYmQ4M2Q3ZmMzNzVlNmY2ODYyZTI2NCJd" />
                  <input type="hidden" class="gform_hidden" name="gform_target_page_number_4" id="gform_target_page_number_4" value="0" />
                  <input type="hidden" class="gform_hidden" name="gform_source_page_number_4" id="gform_source_page_number_4" value="1" />
                  <input type="hidden" name="gform_field_values" value="" />
                </div>
              </form>
            </div>
            <iframe style="display:none;width:0px; height:0px;" src="about:blank" name="gform_ajax_frame_4" id="gform_ajax_frame_4" />
            <script type="text/javascript">
              <xsl:text disable-output-escaping="yes">//&lt;![CDATA[<![CDATA[
function gformInitSpinner_4(){jQuery('#gform_4').submit(function(){if(jQuery('#gform_ajax_spinner_4').length == 0){jQuery('#gform_submit_button_4, #gform_wrapper_4 .gform_previous_button, #gform_wrapper_4 .gform_next_button, #gform_wrapper_4 .gform_image_button').attr('disabled', true); jQuery('#gform_submit_button_4, #gform_wrapper_4 .gform_next_button, #gform_wrapper_4 .gform_image_button').after('<' + 'img id="gform_ajax_spinner_4"  class="gform_ajax_spinner" src="http://www.elasticsearch.org/content/plugins/gravityforms/images/spinner.gif" alt="" />'); }} );}jQuery(document).ready(function($){gformInitSpinner_4();jQuery('#gform_ajax_frame_4').load( function(){var contents = jQuery(this).contents().find('*').html();var is_postback = contents.indexOf('GF_AJAX_POSTBACK') >= 0;if(!is_postback){return;}var form_content = jQuery(this).contents().find('#gform_wrapper_4');var is_redirect = contents.indexOf('gformRedirect(){') >= 0;jQuery('#gform_submit_button_4').removeAttr('disabled');var is_form = !(form_content.length <= 0 || is_redirect);if(is_form){jQuery('#gform_wrapper_4').html(form_content.html());jQuery(document).scrollTop(jQuery('#gform_wrapper_4').offset().top);if(window['gformInitDatepicker']) {gformInitDatepicker();}if(window['gformInitPriceFields']) {gformInitPriceFields();}var current_page = jQuery('#gform_source_page_number_4').val();gformInitSpinner_4();jQuery(document).trigger('gform_page_loaded', [4, current_page]);}else if(!is_redirect){var confirmation_content = jQuery(this).contents().find('#gforms_confirmation_message').html();if(!confirmation_content){confirmation_content = contents;}setTimeout(function(){jQuery('#gform_wrapper_4').replaceWith('<' + 'div id=\'gforms_confirmation_message\' class=\'gform_confirmation_message_4\'' + '>' + confirmation_content + '<' + '/div' + '>');jQuery(document).scrollTop(jQuery('#gforms_confirmation_message').offset().top);jQuery(document).trigger('gform_confirmation_loaded', [4]);}, 50);}else{jQuery('#gform_4').append(contents);if(window['gformRedirect']) {gformRedirect();}}jQuery(document).trigger('gform_post_render', [4, current_page]);} );} );</script><script type='text/javascript'> jQuery(document).ready(function(){jQuery(document).trigger('gform_post_render', [4, 1]) } );
]]>//]]&gt;</xsl:text>
            </script>
          </div>
          <div class="legal">
            <p>© All Rights Reserved - Elasticsearch</p>
            <p>Apache Lucene and Lucene are trademarks of the Apache Software Foundation</p>
          </div>
        </div>
      </div>
    </footer>
    <section id="cookie">
      <div class="container">
        <div class="eu">
          Elasticsearch uses cookies to provide a better user experience to visitors of our website. Read more about our cookie policy
          <a href="/privacy-and-cookie-policy/">here.</a>
          <a data-action="accept" class="cta">Accept cookies</a>
        </div>
        <div class="uk">
          Elasticsearch uses cookies to provide a better user experience to visitors of our website. Read more about our cookie policy
          <a href="/privacy-and-cookie-policy/">here.</a>
          <a data-action="dismiss" class="cta dismiss">X</a>
        </div>
      </div>
    </section>
    <script type="text/javascript">if(window.aiModifyParent) {aiModifyParent();}</script>
    <script type="text/javascript" src="http://www.elasticsearch.org/content/plugins/prettify-gc-syntax-highlighter/prettify.js?ver=3.5.2" />
    <script type="text/javascript" src="http://www.elasticsearch.org/content/plugins/prettify-gc-syntax-highlighter/launch.js?ver=3.5.2" />
    <script type="text/javascript" src="http://s0.wp.com/wp-content/js/devicepx-jetpack.js?ver=201337" />
    <script type="text/javascript" src="http://www.elasticsearch.org/content/themes/elasticsearch-org/js/main.min.js?ver=1377890109" />
    <script type="text/javascript">
      <xsl:text disable-output-escaping="yes">//&lt;![CDATA[<![CDATA[
if(jQuery('body').data('cookie') != "eu" || jQuery.cookie('allowCookies')){
    document.write(unescape("%3Cscript src='" + document.location.protocol +
    "//munchkin.marketo.net/munchkin.js' type='text/javascript'%3E%3C/script%3E"));
}
]]>//]]&gt;</xsl:text>
    </script>
    <script>
      <xsl:text disable-output-escaping="yes">//&lt;![CDATA[<![CDATA[
if(jQuery('body').data('cookie') != "eu" || jQuery.cookie('allowCookies')){
    Munchkin.init('813-MAM-392');

  // crazyegg
    setTimeout(function(){var a=document.createElement("script");
  var b=document.getElementsByTagName("script")[0];
  a.src=document.location.protocol+"//dnn506yrbagrg.cloudfront.net/pages/scripts/0014/4686.js?"+Math.floor(new Date().getTime()/3600000);
  a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);
}
]]>//]]&gt;</xsl:text>
    </script>
    <script type="text/javascript">
      <xsl:text disable-output-escaping="yes">//&lt;![CDATA[<![CDATA[
if(!NREUMQ.f){NREUMQ.f=function(){NREUMQ.push(["load",new Date().getTime()]);var e=document.createElement("script");e.type="text/javascript";e.src=(("http:"===document.location.protocol)?"http:":"https:")+"//"+"js-agent.newrelic.com/nr-100.js";document.body.appendChild(e);if(NREUMQ.a)NREUMQ.a();};NREUMQ.a=window.onload;window.onload=NREUMQ.f;};NREUMQ.push(["nrfj","beacon-5.newrelic.com","166183470f","1738914","b1ZSNkdQWUFYAUJbDlYccQFBWFhcFgNEUQlRRVVPUkReVlw=",0,835,new Date().getTime(),"","","","",""]);
]]>//]]&gt;</xsl:text>
    </script>
  </xsl:template>

</xsl:stylesheet>
