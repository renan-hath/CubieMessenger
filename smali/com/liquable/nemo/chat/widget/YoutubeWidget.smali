.class public Lcom/liquable/nemo/chat/widget/YoutubeWidget;
.super Lcom/liquable/nemo/chat/widget/ChattingWidget;
.source "YoutubeWidget.java"


# instance fields
.field private isPressedFullScreen:Z

.field private final onInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

.field private player:Lcom/google/android/youtube/player/YouTubePlayer;

.field private videoId:Ljava/lang/String;

.field private final youtubeFragment:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->isPressedFullScreen:Z

    .line 35
    new-instance v1, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;-><init>(Lcom/liquable/nemo/chat/widget/YoutubeWidget;)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->onInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    .line 71
    const-string/jumbo v1, "YoutubeWidget"

    invoke-static {v1}, Lcom/liquable/nemo/util/Profiler;->start(Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030178

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    const-string/jumbo v1, "YoutubeWidget"

    const-string/jumbo v2, "inflate"

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/Profiler;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 75
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    invoke-direct {v1}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->youtubeFragment:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    .line 76
    const-string/jumbo v1, "YoutubeWidget"

    const-string/jumbo v2, "new YouTubePlayerSupportFragment"

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/Profiler;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const v1, 0x7f08012e

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->youtubeFragment:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 78
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 79
    const-string/jumbo v1, "YoutubeWidget"

    invoke-static {v1}, Lcom/liquable/nemo/util/Profiler;->stop(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/liquable/nemo/chat/widget/YoutubeWidget;Lcom/google/android/youtube/player/YouTubePlayer;)Lcom/google/android/youtube/player/YouTubePlayer;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/YoutubeWidget;
    .param p1, "x1"    # Lcom/google/android/youtube/player/YouTubePlayer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->player:Lcom/google/android/youtube/player/YouTubePlayer;

    return-object p1
.end method

.method private getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying(Lcom/liquable/nemo/message/model/YoutubeMessage;)Z
    .locals 2
    .param p1, "youtubeMessage"    # Lcom/liquable/nemo/message/model/YoutubeMessage;

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isPressedFullScreen()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->isPressedFullScreen:Z

    return v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->player:Lcom/google/android/youtube/player/YouTubePlayer;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->player:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->release()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->player:Lcom/google/android/youtube/player/YouTubePlayer;

    goto :goto_0
.end method

.method protected onOpen(Z)V
    .locals 3
    .param p1, "isSecret"    # Z

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onOpen(Z)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->youtubeFragment:Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    const-string/jumbo v1, "AIzaSyAzkzveJkcwCEIFGw3l25Azoji5YXkZ-Zo"

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->onInitializedListener:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 112
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->player:Lcom/google/android/youtube/player/YouTubePlayer;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->player:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnClippedButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "onClippedButtonClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 122
    const v0, 0x7f080358

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/chat/widget/YoutubeWidget$2;-><init>(Lcom/liquable/nemo/chat/widget/YoutubeWidget;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    return-void
.end method

.method public setPressedFullScreen(Z)V
    .locals 0
    .param p1, "isPressedFullScreen"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->isPressedFullScreen:Z

    .line 154
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->videoId:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public turnOffFullScreen()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->player:Lcom/google/android/youtube/player/YouTubePlayer;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->player:Lcom/google/android/youtube/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setFullscreen(Z)V

    goto :goto_0
.end method
