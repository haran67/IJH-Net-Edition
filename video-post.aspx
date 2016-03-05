<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Jazz.Master"
    CodeBehind="Video-post.aspx.vb" Inherits="JazzHub_Web.Video_post" %>

<%@ Import Namespace="JazzHub_Servizi.Lingua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="content">

        <div class="content-wrap notoppadding">
            <div class="section notopmargin nopadding" style="background: #000">
                <div class="container clearfix">
                    <div class="col_full portfolio-single-image nomargin">
                        <video width="100%" controls autoplay>
                            <asp:Literal ID="video_tag" runat="server">0</asp:Literal>
                            Your browser does not support the video tag.
                        </video>
                    </div>
                    <div class="feature-box fbox-circled fbox-effect fbox-light"style="position: absolute; bottom: 50px; left: 0px; background: rgba(0, 0, 0, .5); color: #fff; padding: 10px 10px 10px 90px">
                        <asp:UpdatePanel ID="upd_likes" runat="server">
                            <ContentTemplate>
                                <div class="fbox-icon" style="top:initial; left: 10px; ">
                                    <asp:LinkButton id="btn_like" runat="server">
                                        <i class="icon-thumbs-up"></i>
                                    </asp:LinkButton>
                                </div>
                                <h3 style="color: #ccc"><%=Lingua.CaricaLingua("lgl_videopost_likes")%></h3>
                                <div class="counter  counter-small" id="div_yes_like" runat="server"><span data-from="0" data-to="8465" data-refresh-interval="100" data-speed="2000" id="span_like" runat="server"></span></div>
                                <div style="padding-bottom: 20px;" id="div_no_like" runat="server"><span><%=Lingua.CaricaLingua("lgl_videopost_likes_attesa")%></span></div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="container clearfix">

                <div class="single-post nobottommargin">

                    <!-- Single Post
                    ============================================= -->
                    <div class="clearfix">


                        <!-- Portfolio Single Video
                        ============================================= -->
                        
                        <!-- .portfolio-single-image end -->

                        <!-- Entry Content
                        ============================================= -->
                        <div class="col_full nobottommargin center">
                            <h4 class="nomargin author"><asp:LinkButton ID="lnk_utente" runat="server"><asp:Literal ID="ltl_utente" runat="server"></asp:Literal></asp:LinkButton></h4>
                            <h3 class="nomargin title"><asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h3>
                            <!-- .entry-title end -->

                            <!-- Entry Meta
                            ============================================= -->
<!--
                            <ul class="entry-meta clearfix">
                                <li><i class="icon-calendar3"></i><asp:Literal ID="ltl_data" runat="server"></asp:Literal></li>
                                <li><i class="icon-folder-open"></i> <a href="#">Modal jazz</a>, <a href="#">funkie Jazz</a></li>
                                <li><a href="#"><i class="icon-comments"></i> 3 Commenti</a></li
                            </ul>
-->
                            <!-- .entry-meta end -->
                        </div>
                        <div class="col_full  nobottommargin">
                            
                        </div>
                        <hr>
                        <div class="entry-content center notopmargin">

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
                    <div id="comments" class="clearfix notopmargin noborder">
<!--                        <h3 id="comments-title"><span class="icon-comment"></span> <%=Lingua.CaricaLingua("lgl_videopost_lascia_commenti")%></h3>-->
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
                                                        <asp:Image ID="img_utente" runat="server" style="width: 60px; height: 60px" />
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
                                                <p><asp:LinkButton ID="btn_delete" runat="server" CssClass="btn btn-default btn-xs" CommandName="DEL">
                                                    <span class="icon-line-trash"></span> elimina commento
                                                    </asp:LinkButton></p>
                                            </div>
                                            
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

                            <h4><%=Lingua.CaricaLingua("lgl_videopost_lascia_commento")%></h4>

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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    <script type="text/javascript">
    </script>
</asp:Content>
