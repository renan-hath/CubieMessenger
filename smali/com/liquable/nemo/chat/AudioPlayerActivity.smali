.class public Lcom/liquable/nemo/chat/AudioPlayerActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "AudioPlayerActivity.java"


# static fields
.field public static final MSG_UID:Ljava/lang/String; = "MSG_UID"


# instance fields
.field private adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

.field private albumArt:Landroid/widget/ImageView;

.field private final audioMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/AudioMessage;",
            ">;"
        }
    .end annotation
.end field

.field private audioPlayerListView:Landroid/widget/ListView;

.field private audioTitle:Landroid/widget/TextView;

.field private duration:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private msgId:Ljava/lang/String;

.field private nextBtn:Landroid/widget/ImageButton;

.field private playBtn:Landroid/widget/ImageButton;

.field private prevBtn:Landroid/widget/ImageButton;

.field private seekBar:Landroid/widget/SeekBar;

.field private sender:Landroid/widget/TextView;

.field private time:Landroid/widget/TextView;

.field private final timeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->handler:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->audioMessages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->playBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->playMusic()V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->timeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/AudioPlayerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->nextMusic(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Lcom/liquable/nemo/chat/AudioPlayerListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/chat/AudioPlayerActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->initAudioInfo(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->prevMusic()V

    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 56
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->sender:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->audioTitle:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->time:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->albumArt:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->duration:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->audioPlayerListView:Landroid/widget/ListView;

    .line 62
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->playBtn:Landroid/widget/ImageButton;

    .line 63
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->prevBtn:Landroid/widget/ImageButton;

    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->prevBtn:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->onPrevBtnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->nextBtn:Landroid/widget/ImageButton;

    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->nextBtn:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->onNextBtnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->playBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/liquable/nemo/chat/AudioPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity$1;-><init>(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;-><init>(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 106
    return-void
.end method

.method private initAudioInfo(Z)Z
    .locals 11
    .param p1, "needPlay"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 109
    iget-object v8, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    iget-object v9, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    invoke-virtual {v9}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->getCheckedPosition()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->getItem(I)Lcom/liquable/nemo/message/model/AudioMessage;

    move-result-object v1

    .line 110
    .local v1, "message":Lcom/liquable/nemo/message/model/AudioMessage;
    invoke-direct {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->prepareMusic()Z

    move-result v8

    if-nez v8, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d00c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "warning":Ljava/lang/String;
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/AudioMessage;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 113
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->nextMusic(Z)V

    .line 151
    .end local v5    # "warning":Ljava/lang/String;
    :goto_0
    return v6

    .line 117
    :cond_0
    if-eqz p1, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->playMusic()V

    .line 121
    :cond_1
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/AudioMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "senderId":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 124
    .local v3, "senderName":Ljava/lang/String;
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 125
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v3

    .line 133
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->sender:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v8, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->audioTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/AudioMessage;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v1, v7}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v8

    sget-object v9, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v4

    .line 137
    .local v4, "thumbnailFile":Ljava/io/File;
    invoke-static {v4}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    iget-object v8, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->albumArt:Landroid/widget/ImageView;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    :goto_2
    iget-object v8, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v9, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 144
    iget-object v8, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->duration:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->timeFormat:Ljava/text/SimpleDateFormat;

    iget-object v10, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v8, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->time:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v8, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 148
    iget-object v6, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->audioPlayerListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    invoke-virtual {v8}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->getCheckedPosition()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 150
    invoke-direct {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->updateButtonEnabled()V

    move v6, v7

    .line 151
    goto/16 :goto_0

    .line 127
    .end local v4    # "thumbnailFile":Ljava/io/File;
    :cond_3
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v8, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 128
    .local v0, "findFriendByFriendId":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 140
    .end local v0    # "findFriendByFriendId":Lcom/liquable/nemo/friend/model/Account;
    .restart local v4    # "thumbnailFile":Ljava/io/File;
    :cond_4
    iget-object v8, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->albumArt:Landroid/widget/ImageView;

    const v9, 0x7f0204ab

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private nextMusic(Z)V
    .locals 2
    .param p1, "forcePlay"    # Z

    .prologue
    .line 156
    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->tryNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 160
    .local v0, "needPlay":Z
    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 162
    const/4 v0, 0x1

    .line 164
    :cond_1
    if-nez p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->initAudioInfo(Z)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onNextBtnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Lcom/liquable/nemo/chat/AudioPlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity$5;-><init>(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V

    return-object v0
.end method

.method private onPrevBtnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/liquable/nemo/chat/AudioPlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity$6;-><init>(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V

    return-object v0
.end method

.method private playMusic()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->playBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020179

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 257
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 258
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->updateSeekBar()V

    .line 259
    return-void
.end method

.method private prepareMusic()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    iget-object v5, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    invoke-virtual {v5}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->getCheckedPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->getItem(I)Lcom/liquable/nemo/message/model/AudioMessage;

    move-result-object v0

    .line 263
    .local v0, "audioMessage":Lcom/liquable/nemo/message/model/AudioMessage;
    invoke-virtual {v0, v3}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 265
    .local v2, "mediaFile":Ljava/io/File;
    :try_start_0
    iget-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 266
    iget-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 267
    iget-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private prevMusic()V
    .locals 2

    .prologue
    .line 276
    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->tryPrev()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    .line 280
    .local v0, "needPlay":Z
    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 282
    const/4 v0, 0x1

    .line 284
    :cond_1
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->initAudioInfo(Z)Z

    goto :goto_0
.end method

.method private updateButtonEnabled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->nextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->prevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->nextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->prevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 297
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 170
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 172
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 173
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0d0092

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 178
    const v4, 0x7f03001e

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->setContentView(I)V

    .line 179
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 180
    invoke-direct {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViews()V

    .line 181
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "MSG_UID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->msgId:Ljava/lang/String;

    .line 182
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v5, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->msgId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/message/model/AudioMessage;

    .line 183
    .local v2, "message":Lcom/liquable/nemo/message/model/AudioMessage;
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AudioMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/liquable/nemo/message/model/AudioMessage;

    .line 184
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-virtual {v4, v5, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->listAllMessagesByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 185
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/AudioMessage;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/AudioMessage;

    .line 186
    .local v0, "audioMessage":Lcom/liquable/nemo/message/model/AudioMessage;
    invoke-virtual {v0, v7}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 187
    invoke-virtual {v5, v6}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 188
    .local v1, "mediaFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    iget-object v5, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->audioMessages:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v0    # "audioMessage":Lcom/liquable/nemo/message/model/AudioMessage;
    .end local v1    # "mediaFile":Ljava/io/File;
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->audioMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    const v4, 0x7f0d053f

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 196
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 197
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->finish()V

    .line 234
    :goto_1
    return-void

    .line 201
    :cond_2
    new-instance v4, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    iget-object v6, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->audioMessages:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/storage/NemoFileService;Ljava/util/List;)V

    iput-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    .line 202
    iget-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->setItemChecked(Lcom/liquable/nemo/message/model/AudioMessage;)V

    .line 204
    iget-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->audioPlayerListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->adapter:Lcom/liquable/nemo/chat/AudioPlayerListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/liquable/nemo/chat/AudioPlayerActivity$3;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity$3;-><init>(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 214
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->initAudioInfo(Z)Z

    .line 215
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->updateSeekBar()V

    .line 216
    iget-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->audioPlayerListView:Landroid/widget/ListView;

    new-instance v5, Lcom/liquable/nemo/chat/AudioPlayerActivity$4;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity$4;-><init>(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1
.end method

.method public updateSeekBar()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/chat/AudioPlayerActivity$7;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/AudioPlayerActivity$7;-><init>(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    return-void
.end method
