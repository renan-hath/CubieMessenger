.class public Lcom/liquable/nemo/main/VideoPreviewActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "VideoPreviewActivity.java"


# static fields
.field private static final VIDEO_FROM_MAIN:Ljava/lang/String; = "VIDEO_FROM_MAIN"


# instance fields
.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/liquable/nemo/main/VideoPreviewActivity;->isFromMain(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static fromChat(Landroid/content/Context;Lcom/liquable/nemo/share/SharableVideo;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "video"    # Lcom/liquable/nemo/share/SharableVideo;

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/liquable/nemo/share/SharableVideo;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/liquable/nemo/main/VideoPreviewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 24
    const-string/jumbo v1, "VIDEO_FROM_MAIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    return-object v0
.end method

.method public static fromMain(Landroid/content/Context;Lcom/liquable/nemo/share/SharableVideo;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "video"    # Lcom/liquable/nemo/share/SharableVideo;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/liquable/nemo/share/SharableVideo;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/liquable/nemo/main/VideoPreviewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    const-string/jumbo v1, "VIDEO_FROM_MAIN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    return-object v0
.end method

.method private static isFromMain(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string/jumbo v0, "VIDEO_FROM_MAIN"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 47
    if-ne p2, v0, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/main/VideoPreviewActivity;->setResult(I)V

    .line 49
    invoke-virtual {p0}, Lcom/liquable/nemo/main/VideoPreviewActivity;->finish()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/main/VideoPreviewActivity;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 57
    const v4, 0x7f030046

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/main/VideoPreviewActivity;->setContentView(I)V

    .line 59
    const v4, 0x7f080119

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/main/VideoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 60
    .local v3, "videoViewContainer":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/VideoView;

    invoke-direct {v4, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/liquable/nemo/main/VideoPreviewActivity;->videoView:Landroid/widget/VideoView;

    .line 62
    invoke-virtual {p0}, Lcom/liquable/nemo/main/VideoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/share/SharableVideo;->exists(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/liquable/nemo/main/VideoPreviewActivity;->finish()V

    .line 102
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/main/VideoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/share/SharableVideo;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharableVideo;

    move-result-object v2

    .line 69
    .local v2, "sharableVideo":Lcom/liquable/nemo/share/SharableVideo;
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "mediaController":Landroid/widget/MediaController;
    iget-object v4, p0, Lcom/liquable/nemo/main/VideoPreviewActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 71
    iget-object v4, p0, Lcom/liquable/nemo/main/VideoPreviewActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 72
    iget-object v4, p0, Lcom/liquable/nemo/main/VideoPreviewActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Lcom/liquable/nemo/share/SharableVideo;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 74
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v1, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 77
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/liquable/nemo/main/VideoPreviewActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v4, p0, Lcom/liquable/nemo/main/VideoPreviewActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->start()V

    .line 81
    const v4, 0x7f080062

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/main/VideoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/liquable/nemo/main/VideoPreviewActivity$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/main/VideoPreviewActivity$1;-><init>(Lcom/liquable/nemo/main/VideoPreviewActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v4, 0x7f080063

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/main/VideoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/liquable/nemo/main/VideoPreviewActivity$2;

    invoke-direct {v5, p0, v2}, Lcom/liquable/nemo/main/VideoPreviewActivity$2;-><init>(Lcom/liquable/nemo/main/VideoPreviewActivity;Lcom/liquable/nemo/share/SharableVideo;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
