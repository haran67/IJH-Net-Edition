<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Video-post.aspx.vb" Inherits="JazzHub_Web.Video_post" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="content">

        <div class="content-wrap">

            <div class="container clearfix">

                <div class="single-post nobottommargin">

                    <!-- Single Post
                    ============================================= -->
                    <div class="clearfix">


                        <!-- Portfolio Single Video
                        ============================================= -->
                        <div class="col_full portfolio-single-image">
                            <video width="100%" controls>
                                <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                                Your browser does not support the video tag.
                            </video>
                        </div>
                        <!-- .portfolio-single-image end -->

                        <!-- Entry Content
                        ============================================= -->
                        <div class="col_half nobottommargin">
                            <!-- Entry Title
                            ============================================= -->
                            <div class="entry-title">
                                <h2><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h2>
                            </div>
                            <!-- .entry-title end -->

                            <!-- Entry Meta
                            ============================================= -->
                            <ul class="entry-meta clearfix">
                                <li><i class="icon-calendar3"></i><asp:Literal ID="ltl_data" runat="server"></asp:Literal></li>
                                <li><a href="#"><i class="icon-user"></i><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></a></li>
                                <!--li><i class="icon-folder-open"></i> <a href="#">Modal jazz</a>, <a href="#">funkie Jazz</a></li>
                                <li><a href="#"><i class="icon-comments"></i> 3 Commenti</a></li-->
                            </ul>
                            <!-- .entry-meta end -->
                        </div>
                        <div class="col_half col_last nobottommargin">
                            <div class="feature-box fbox-rounded fbox-effect fbox-light">
                                <div class="fbox-icon">
                                    <a href="#"><i class="icon-thumbs-up i-alt"></i></a>
                                </div>
                                <h3>Likes</h3>
                                <div class="counter  counter-small hidden"><span data-from="100" data-to="8465" data-refresh-interval="100" data-speed="2000">8465</span></div>
                                <div class=""><span>In Arrivo...</span></div>
                            </div>
                        </div>
                        <div class="line"></div>
                        <div class="entry-content notopmargin">

                            <p>
                                <asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal>
                            </p>
                            <!-- Post Single - Content End -->

                            <!-- Tag Cloud
                            ============================================= -->
                            <div class="tagcloud clearfix bottommargin hidden">
                                <a href="#">general</a>
                                <a href="#">information</a>
                                <a href="#">media</a>
                                <a href="#">press</a>
                                <a href="#">gallery</a>
                                <a href="#">illustration</a>
                            </div>
                            <!-- .tagcloud end -->

                            <div class="clear"></div>

                            <!-- Post Single - Share
                            ============================================= -->
                            <div class="si-share noborder clearfix hidden">
                                <span>Condividi questo video:</span>
                                <div>
                                    <a href="#" class="social-icon si-borderless si-facebook">
                                        <i class="icon-facebook"></i>
                                        <i class="icon-facebook"></i>
                                    </a>
                                    <a href="#" class="social-icon si-borderless si-twitter">
                                        <i class="icon-twitter"></i>
                                        <i class="icon-twitter"></i>
                                    </a>
                                    <a href="#" class="social-icon si-borderless si-pinterest">
                                        <i class="icon-pinterest"></i>
                                        <i class="icon-pinterest"></i>
                                    </a>
                                    <a href="#" class="social-icon si-borderless si-gplus">
                                        <i class="icon-gplus"></i>
                                        <i class="icon-gplus"></i>
                                    </a>
                                    <a href="#" class="social-icon si-borderless si-rss">
                                        <i class="icon-rss"></i>
                                        <i class="icon-rss"></i>
                                    </a>
                                    <a href="#" class="social-icon si-borderless si-email3">
                                        <i class="icon-email3"></i>
                                        <i class="icon-email3"></i>
                                    </a>
                                </div>
                            </div>
                            <!-- Post Single - Share End -->

                        </div>
                    </div>
                    <!-- .entry end -->

                    <!-- Commenti
                    ============================================= -->
                    <div id="comments" class="clearfix">

                        <h3 id="comments-title"><span></span> Presto potrai lasciare i tuoi commenti</h3>

                        <!-- Comments List
                        ============================================= -->
                        <ol class="commentlist clearfix hidden">

                            <li class="comment even thread-even depth-1" id="li-comment-1">

                                <div id="comment-1" class="comment-wrap clearfix">

                                    <!--<div class="comment-meta">

                                        <div class="comment-author vcard">

                                        <span class="comment-avatar clearfix">
                                        <img alt='' src='http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=60' class='avatar avatar-60 photo avatar-default' height='60' width='60' /></span>

                                        </div>

                                    </div>-->

                                    <div class="comment-content clearfix">

                                        <div class="comment-author">Utente #1<span>April 24, 2012 at 10:46 am</span></div>

                                        <p>Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>

                                    </div>

                                    <div class="clear"></div>

                                </div>

                            </li>

                            <li class="comment byuser comment-author-_smcl_admin even thread-odd thread-alt depth-1" id="li-comment-2">

                                <div id="comment-2" class="comment-wrap clearfix">

                                    <!--<div class="comment-meta">

                                        <div class="comment-author vcard">

                                        <span class="comment-avatar clearfix">
                                        <img alt='' src='http://1.gravatar.com/avatar/30110f1f3a4238c619bcceb10f4c4484?s=60&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G' class='avatar avatar-60 photo' height='60' width='60' /></span>

                                        </div>

                                    </div>-->

                                    <div class="comment-content clearfix">

                                        <div class="comment-author">Utente #3<span>Aprile 25, 2012 at 1:03 am</span></div>

                                        <p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>



                                    </div>

                                    <div class="clear"></div>

                                </div>

                            </li>

                        </ol>
                        <!-- .commentlist end -->

                        <div class="clear"></div>

                        <!-- Comment Form
                        ============================================= -->
                        <div id="respond" class="clearfix hidden">

                            <h3>Lascia un <span>Commento</span></h3>

                            <form class="clearfix" action="#" method="post" id="commentform">

                            <!--<div class="col_one_third">
                                    <label for="author">Name</label>
                                    <input type="text" name="author" id="author" value="" size="22" tabindex="1" class="sm-form-control" />
                                </div>

                                <div class="col_one_third">
                                    <label for="email">Email</label>
                                    <input type="text" name="email" id="email" value="" size="22" tabindex="2" class="sm-form-control" />
                                </div>

                                <div class="col_one_third col_last">
                                    <label for="url">Website</label>
                                    <input type="text" name="url" id="url" value="" size="22" tabindex="3" class="sm-form-control" />
                                </div>

                                <div class="clear"></div>-->

                                <div class="col_full">
                                    <label for="comment" class="hidden">Commento</label>
                                    <textarea name="comment" cols="58" rows="7" tabindex="4" class="sm-form-control"></textarea>
                                </div>

                                <div class="col_full nobottommargin">
                                    <button name="submit" type="submit" id="submit-button" tabindex="5" value="Submit" class="button button-rounded nomargin">Invia</button>
                                </div>

                            </form>

                        </div>
                        <!-- #respond end -->

                    </div>
                    <!-- #comments end -->

                </div>

            </div>

        </div>

    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="content-wrap nopadding">
        <div class="section intro-bg nomargin parallax" data-stellar-background-ratio="0.3">
            <div class="container clearfix center">
                <div class="emphasis-title " data-animate="flipInX" data-delay="500">
                    <h2>
                        Quali opportunit&agrave;</h2>
                    <p class="lead topmargin-sm" data-animate="flipInX" data-delay="1000">
                        <strong>Italian Jazz Hub</strong> &egrave; un progetto di promozione internazionale
                        del jazz italiano, un meeting-expo virtuale di settore che permetter&agrave; ai
                        musicisti e addetti ai lavori di entrare in contatto in remoto, con colleghi di
                        tutto il mondo attraverso filmati, teaser e videoclip.<br>
                        <strong>Italian Jazz Hub</strong> &egrave; una iniziativa firmata da <strong>IMF Foundation</strong>,
                        gi&agrave; produttrice del roma jazz festival e si avvale della partnership editoriale
                        di <strong>Jazzit</strong>.
                    </p>
                </div>
            </div>
            <div class="container clearfix hidden">
                <div class="fancy-title title-dotted-border title-left">
                    <h3>
                        <%=Lingua.CaricaLingua("lgl_index_in_evidenza")%></h3>
                </div>
                <div id="portfolio" class=" clearfix">
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="#">
                                <img src="images/gallery/jazz1.jpg" alt="Open Imagination">
                            </a>
                            <div class="portfolio-overlay">
                                <a href="images/gallery/jazz1.jpg" class="left-icon" style="margin-left:-14px!Important;" data-lightbox="image"><i class="icon-line-plus"></i></a>
                            </div>
                        </div>
                        <div class="portfolio-desc">
                            <h3><a href="#">Open Imagination</a></h3>
                            <span><a href="#">Bebop</a>, <a href="#">Latin jazz</a></span>
                        </div>
                    </article>
                    <article class="portfolio-item pf-illustrations">
                        <div class="portfolio-image">
                            <a href="#">
                                <img src="images/gallery/jazz2.jpg" alt="Locked Steel Gate">
                            </a>
                            <div class="portfolio-overlay">
                                <a href="images/gallery/jazz2.jpg" class="left-icon" style="margin-left:-14px!Important;" data-lightbox="image"><i class="icon-line-plus"></i></a>
                            </div>
                        </div>
                        <div class="portfolio-desc">
                            <h3><a href="#">Locked Steel Gate</a></h3>
                            <span><a href="#">Free Jazz</a></span>
                        </div>
                    </article>
                    <article class="portfolio-item pf-graphics pf-uielements">
                        <div class="portfolio-image">
                            <a href="#">
                                <img src="images/gallery/jazz3.jpg" alt="Mac Sunglasses">
                            </a>
                            <div class="portfolio-overlay">
                                <a href="http://vimeo.com/89396394" class="left-icon" style="margin-left:-14px!Important;" data-lightbox="iframe"><i class="icon-line-play"></i></a>
                            </div>
                        </div>
                        <div class="portfolio-desc">
                            <h3><a href="portfolio-single-video.html">Mac Sunglasses</a></h3>
                            <span><a href="#">Acid Jazz</a>, <a href="#">Dixieland</a></span>
                        </div>
                    </article>
                    <article class="portfolio-item pf-icons pf-illustrations">
                        <div class="portfolio-image">
                            <div class="fslider" data-arrows="false" data-speed="400" data-pause="4000">
                                <div class="flexslider">
                                    <div class="slider-wrap">
                                        <div class="slide">
                                            <img src="images/gallery/jazz4.jpg" alt="Morning Dew">
                                        </div>
                                        <div class="slide">
                                            <img src="images/gallery/jazz4.jpg" alt="Morning Dew">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="portfolio-overlay" data-lightbox="gallery">
                                <a href="images/gallery/jazz4.jpg" class="left-icon" style="margin-left:-14px!Important;" data-lightbox="gallery-item"><i class="icon-line-stack-2"></i></a>
                                <a href="images/gallery/jazz4.jpg" class="hidden" data-lightbox="gallery-item"></a>
                            </div>
                        </div>
                        <div class="portfolio-desc">
                            <h3><a href="portfolio-single-gallery.html">Morning Dew</a></h3>
                            <span><a href="#"><a href="#">Jazz Funk</a>, <a href="#">Nu Jazz</a></span>
                        </div>
                    </article>
                </div>
                <!-- Portfolio Script
                        ============================================= -->
                <script type="text/javascript">
                    jQuery(window).load(function () {

                        var $container = $('#portfolio');

                        $container.isotope({
                            transitionDuration: '0.65s'
                        });

                        $('#portfolio-filter a').click(function () {
                            $('#portfolio-filter li').removeClass('activeFilter');
                            $(this).parent('li').addClass('activeFilter');
                            var selector = $(this).attr('data-filter');
                            $container.isotope({
                                filter: selector
                            });
                            return false;
                        });

                        $('#portfolio-shuffle').click(function () {
                            $container.isotope('updateSortData').isotope({
                                sortBy: 'random'
                            });
                        });

                        $(window).resize(function () {
                            $container.isotope('layout');
                        });

                    });
                </script>
                <!-- Portfolio Script End -->
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
    </script>
</asp:Content>
