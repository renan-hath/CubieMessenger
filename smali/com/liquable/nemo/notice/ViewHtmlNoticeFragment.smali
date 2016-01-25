.class public Lcom/liquable/nemo/notice/ViewHtmlNoticeFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "ViewHtmlNoticeFragment.java"


# instance fields
.field private htmlNoticeWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    return-void
.end method

.method protected static getNoticeId(Landroid/os/Bundle;)J
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    const-string/jumbo v0, "HTML_NOTICE_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const v0, 0x7f0300c3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 29
    .local v7, "fragmentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/ViewHtmlNoticeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/notice/ViewHtmlNoticeFragment;->getNoticeId(Landroid/os/Bundle;)J

    move-result-wide v8

    .line 30
    .local v8, "noticeId":J
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-virtual {v0, v8, v9}, Lcom/liquable/nemo/notice/model/NoticeManager;->findById(J)Lcom/liquable/nemo/notice/BaseNotice;

    move-result-object v6

    .line 32
    .local v6, "baseNotice":Lcom/liquable/nemo/notice/BaseNotice;
    const v0, 0x7f080218

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/liquable/nemo/notice/ViewHtmlNoticeFragment;->htmlNoticeWebView:Landroid/webkit/WebView;

    .line 33
    instance-of v0, v6, Lcom/liquable/nemo/notice/HtmlNotice;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/notice/ViewHtmlNoticeFragment;->htmlNoticeWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    check-cast v6, Lcom/liquable/nemo/notice/HtmlNotice;

    .line 35
    .end local v6    # "baseNotice":Lcom/liquable/nemo/notice/BaseNotice;
    invoke-virtual {v6}, Lcom/liquable/nemo/notice/HtmlNotice;->getHtmlContent()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    const-string/jumbo v5, ""

    .line 34
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-object v7
.end method
