.class public Lcom/liquable/nemo/chat/VideoViewerActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "VideoViewerActivity.java"


# static fields
.field private static final KEY_MESSAGE:Ljava/lang/String; = "KEY_MESSAGE"


# instance fields
.field private currentDurationTextView:Landroid/widget/TextView;

.field private durationTextView:Landroid/widget/TextView;

.field private isPaused:Z

.field private shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

.field private startPlayTime:J

.field private videoCurrentPosition:I

.field private videoMessage:Lcom/liquable/nemo/message/model/VideoMessage;

.field private videoProgressBar:Landroid/widget/ProgressBar;

.field private videoUri:Landroid/net/Uri;

.field private videoView:Landroid/widget/VideoView;

.field private videoViewContainer:Landroid/widget/FrameLayout;

.field private wasPlaying:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/VideoViewerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->stopVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/VideoViewerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->playVideoWithExternalIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/VideoViewerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->isPaused:Z

    return v0
.end method

.method static synthetic access$202(Lcom/liquable/nemo/chat/VideoViewerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->isPaused:Z

    return p1
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/VideoViewerActivity;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/VideoViewerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->playVideo()V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/VideoViewerActivity;)Lcom/liquable/nemo/message/model/VideoMessage;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoMessage:Lcom/liquable/nemo/message/model/VideoMessage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/VideoViewerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->updateProgress()V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/VideoViewerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->scheduleUpdateProgress()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/VideoMessage;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/liquable/nemo/message/model/VideoMessage;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 45
    return-object v0
.end method

.method private static getMessage(Landroid/content/Intent;)Lcom/liquable/nemo/message/model/VideoMessage;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string/jumbo v0, "KEY_MESSAGE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/VideoMessage;

    return-object v0
.end method

.method private initVideoView()V
    .locals 2

    .prologue
    .line 70
    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoViewContainer:Landroid/widget/FrameLayout;

    .line 71
    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->currentDurationTextView:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->durationTextView:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoProgressBar:Landroid/widget/ProgressBar;

    .line 74
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/liquable/nemo/chat/VideoViewerActivity$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/VideoViewerActivity$1;-><init>(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/liquable/nemo/chat/VideoViewerActivity$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/VideoViewerActivity$2;-><init>(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/liquable/nemo/chat/VideoViewerActivity$3;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/VideoViewerActivity$3;-><init>(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 103
    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/chat/VideoViewerActivity$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/VideoViewerActivity$4;-><init>(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/chat/VideoViewerActivity$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/VideoViewerActivity$5;-><init>(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method private playVideo()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 214
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->startPlayTime:J

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->isPaused:Z

    .line 217
    invoke-direct {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->scheduleUpdateProgress()V

    .line 218
    return-void
.end method

.method private playVideoWithExternalIntent()V
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoUri:Landroid/net/Uri;

    const-string/jumbo v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method private scheduleUpdateProgress()V
    .locals 4

    .prologue
    .line 228
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/chat/VideoViewerActivity$7;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/VideoViewerActivity$7;-><init>(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    return-void
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/liquable/nemo/chat/VideoViewerActivity$8;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/VideoViewerActivity$8;-><init>(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 256
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/VideoViewerActivity$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 257
    return-void
.end method

.method private stopVideo()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 261
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 262
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->finish()V

    .line 263
    return-void
.end method

.method private updateProgress()V
    .locals 6

    .prologue
    .line 266
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 268
    .local v0, "currentPosition":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-wide v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->startPlayTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 274
    if-lez v0, :cond_2

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->startPlayTime:J

    .line 277
    :cond_2
    const/4 v1, 0x0

    .line 282
    .local v1, "elapsedTime":I
    :goto_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 283
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->currentDurationTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoProgressBar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 289
    :goto_2
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->durationTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoProgressBar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_0

    .line 279
    .end local v1    # "elapsedTime":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->startPlayTime:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    .restart local v1    # "elapsedTime":I
    goto :goto_1

    .line 286
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->currentDurationTextView:Landroid/widget/TextView;

    div-int/lit16 v3, v1, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 122
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/chat/VideoViewerActivity;->getMessage(Landroid/content/Intent;)Lcom/liquable/nemo/message/model/VideoMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoMessage:Lcom/liquable/nemo/message/model/VideoMessage;

    .line 123
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoMessage:Lcom/liquable/nemo/message/model/VideoMessage;

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->finish()V

    .line 145
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoMessage:Lcom/liquable/nemo/message/model/VideoMessage;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/VideoMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 129
    .local v1, "videoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->finish()V

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoUri:Landroid/net/Uri;

    .line 136
    const v2, 0x7f030047

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/VideoViewerActivity;->setContentView(I)V

    .line 137
    invoke-direct {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->initVideoView()V

    .line 138
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 139
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 142
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoViewContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-direct {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->playVideo()V

    .line 144
    invoke-direct {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->setTitle()V

    goto :goto_0
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 150
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v3, 0x7f0f0012

    invoke-virtual {v0, v3, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 152
    const v3, 0x7f08036f

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 153
    .local v2, "shareItem":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/widget/ShareActionProvider;

    iput-object v3, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

    .line 154
    iget-object v3, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

    const-string/jumbo v4, "cubie_share_history.xml"

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

    new-instance v4, Lcom/liquable/nemo/chat/VideoViewerActivity$6;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/chat/VideoViewerActivity$6;-><init>(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 163
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "shareIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 165
    const-string/jumbo v3, "video/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    iget-object v3, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

    invoke-virtual {v3, v1}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 168
    const/4 v3, 0x1

    return v3
.end method

.method protected onLoggedInResume()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onLoggedInResume()V

    .line 174
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 175
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->wasPlaying:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->playVideo()V

    .line 178
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 182
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 194
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 184
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, "forwardIntent":Landroid/content/Intent;
    const-string/jumbo v1, "MSG_UID"

    iget-object v2, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoMessage:Lcom/liquable/nemo/message/model/VideoMessage;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/VideoMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string/jumbo v1, "MSG_FROM"

    const-string/jumbo v2, "video_viewer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    .end local v0    # "forwardIntent":Landroid/content/Intent;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 190
    :sswitch_1
    invoke-direct {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->playVideoWithExternalIntent()V

    .line 191
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->finish()V

    goto :goto_1

    .line 182
    :sswitch_data_0
    .sparse-switch
        0x7f080372 -> :sswitch_0
        0x7f080380 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->isPaused:Z

    .line 202
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->wasPlaying:Z

    .line 203
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->wasPlaying:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoCurrentPosition:I

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 209
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onPause()V

    .line 210
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity;->videoCurrentPosition:I

    goto :goto_0
.end method
