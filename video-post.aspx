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
                                <asp:UpdatePanel ID="upd_likes" runat="server">
                                    <ContentTemplate>
                                        <div class="fbox-icon">
                                            <asp:LinkButton id="btn_like" runat="server">
                                                <i class="icon-thumbs-up i-alt"></i>
                                            </asp:LinkButton>
                                        </div>
                                        <h3><%=Lingua.CaricaLingua("lgl_videopost_likes")%></h3>
                                        <div class="counter  counter-small" id="div_yes_like" runat="server"><span data-from="0" data-to="8465" data-refresh-interval="100" data-speed="2000" id="span_like" runat="server"></span></div>
                                        <div class="" id="div_no_like" runat="server"><span><%=Lingua.CaricaLingua("lgl_videopost_likes_attesa")%></span></div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
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
                                <span><%=Lingua.CaricaLingua("lgl_videopost_likes_condividi")%></span>
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

                        <h3 id="comments-title"><span class="icon-comment"></span> <%=Lingua.CaricaLingua("lgl_videopost_lascia_commenti")%></h3>

                        <ol class="commentlist clearfix hidden">

                            <li class="comment even thread-even depth-1" id="li-comment-1">

                                <div id="comment-1" class="comment-wrap clearfix">

                                    <div class="comment-meta">

                                        <div class="comment-author vcard">

                                        <span class="comment-avatar clearfix">
                                        <img alt='' src='http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=60' class='avatar avatar-60 photo avatar-default' height='60' width='60' /></span>

                                        </div>

                                    </div>

                                    <div class="comment-content clearfix">

                                        <div class="comment-author">Utente #1<span>April 24, 2012 at 10:46 am</span></div>

                                        <p>Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>

                                    </div>

                                    <div class="clear"></div>

                                </div>

                            </li>

                            <li class="comment byuser comment-author-_smcl_admin even thread-odd thread-alt depth-1" id="li-comment-2">

                                <div id="comment-2" class="comment-wrap clearfix">

                                    <div class="comment-meta">

                                        <div class="comment-author vcard">

                                        <span class="comment-avatar clearfix">
                                        <img alt='' src='http://1.gravatar.com/avatar/30110f1f3a4238c619bcceb10f4c4484?s=60&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G' class='avatar avatar-60 photo' height='60' width='60' /></span>

                                        </div>

                                    </div>

                                    <div class="comment-content clearfix">

                                        <div class="comment-author">Utente #3<span>Aprile 25, 2012 at 1:03 am</span></div>

                                        <p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>



                                    </div>

                                    <div class="clear"></div>

                                </div>

                            </li>

                        </ol>
                        <!-- .commentlist end -->

                        <!-- Comments List
                        ============================================= -->
                        <ol class="commentlist clearfix">
                            <asp:Repeater ID="rpt_comment" runat="server">
                                <ItemTemplate>
                                    <li class="comment even thread-even depth-1" id="li-comment-1">
                                        <div id="comment-1" class="comment-wrap clearfix">
                                            <div class="comment-meta">
                                                <div class="comment-author vcard">
                                                    <span class="comment-avatar clearfix">
                                                        <asp:Image ID="img_utente" runat="server" />
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="comment-content clearfix">
                                                <div class="comment-author">
                                                    <asp:Literal ID="ltl_utente" runat="server"></asp:Literal>
                                                    <span>
                                                        <asp:Literal ID="ltl_data" runat="server"></asp:Literal>
                                                    </span>
                                                </div>
                                                <p>
                                                    <asp:Literal ID="ltl_commento" runat="server"></asp:Literal>
                                                </p>
                                            </div>
                                            <asp:LinkButton ID="btn_delete" runat="server" CssClass="label label-danger" CommandName="DEL">
                                                <span class="icon-line-trash"></span>
                                            </asp:LinkButton>
                                            <div class="clear"></div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ol>
                        <!-- .commentlist end -->

                        <div class="clear"></div>

                        <!-- Comment Form
                        ============================================= -->
                        <div id="respond" class="clearfix">

                            <h3><%=Lingua.CaricaLingua("lgl_videopost_lascia_commento")%></h3>

                            <div class="clearfix" action="#" method="post" id="commentform">    
                                
                                <span for="upl_video" style="font-size:15px; color:Red;" id="span_comment" runat="server" visible="false">
                                    <asp:Literal ID="ltl_msg_span_comment" runat="server"></asp:Literal></span>

                                <div class="col_full">
                                    <label for="comment" class="hidden"><%=Lingua.CaricaLingua("lgl_videopost_commento")%></label>
                                    <asp:TextBox ID="txt_commento" runat="server" TextMode="MultiLine" Rows="7" CssClass="sm-form-control"></asp:TextBox>
                                </div>

                                <div class="col_full nobottommargin">
                                    <asp:LinkButton ID="btn_invia" runat="server" CssClass="button button-rounded nomargin">
                                        <%=Lingua.CaricaLingua("lgl_videopost_invia_commento")%>
                                    </asp:LinkButton>
                                </div>

                            </div>

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
                        <%=Lingua.CaricaLingua("lgl_videopost_opportunita")%></h2>
                    <p class="lead topmargin-sm" data-animate="flipInX" data-delay="1000">
                        <%=Lingua.CaricaLingua("lgl_videopost_opportunita_desc")%>
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
    </script>
</asp:Content>
