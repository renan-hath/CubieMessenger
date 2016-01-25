.class public Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "MediaShareBoardActivity.java"


# static fields
.field private static final COLUMN_WIDTH_DP:I = 0x50

.field private static final KEY_CHAT_GROUP:Ljava/lang/String; = "KEY_CHAT_GROUP_TOPIC"

.field private static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "KEY_MESSAGE_TYPE"

.field public static final PAGE:I = 0x32


# instance fields
.field private audioAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

.field private chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field private chatGroupMediaShareBoardReceiver:Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;

.field private downloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation
.end field

.field private fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private isFileTransferServiceBound:Z

.field private final loadMediaTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/AbstractMediaMessage;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private paintAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

.field private pictureAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

.field private playingVoiceMessageId:Ljava/lang/String;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final tabBackgrounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private tabCurrentIndex:I

.field private final tabViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private videoAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

.field private voiceAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

.field private voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

.field private workspace:Lcom/liquable/nemo/widget/Workspace;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabViews:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabBackgrounds:Ljava/util/List;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabCurrentIndex:I

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMediaTasks:Ljava/util/Map;

    .line 102
    new-instance v0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$1;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->downloadList:Ljava/util/List;

    .line 117
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playingVoiceMessageId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Lcom/liquable/nemo/android/service/FileTransferInfo;)Lcom/liquable/nemo/android/service/FileTransferInfo;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/android/service/FileTransferInfo;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMedia(Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)Lcom/liquable/nemo/widget/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->workspace:Lcom/liquable/nemo/widget/Workspace;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMediaTasks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->onWorkspaceIndexChange(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playingVoiceMessageId:Ljava/lang/String;

    return-object p1
.end method

.method private addBoardListView()Landroid/widget/ListView;
    .locals 4

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030164

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->workspace:Lcom/liquable/nemo/widget/Workspace;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/widget/Workspace;->addView(Landroid/view/View;)V

    .line 342
    const v1, 0x7f080344

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    return-object v1
.end method

.method private cancelTask(Landroid/os/AsyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/AbstractMediaMessage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/liquable/nemo/message/model/AbstractMediaMessage;>;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 125
    :cond_0
    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 56
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToMediaLibrary()V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "KEY_CHAT_GROUP_TOPIC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    return-object v0
.end method

.method public static createIntent(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Lcom/liquable/nemo/chat/ImageViewerActivity;
    .param p1, "msg"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 65
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-interface {v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToMediaLibrary()V

    .line 66
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 67
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v0, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 74
    :goto_0
    return-object v1

    .line 70
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "KEY_CHAT_GROUP_TOPIC"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v2, "KEY_MESSAGE_TYPE"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 131
    iput-boolean v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->isFileTransferServiceBound:Z

    .line 133
    return-void
.end method

.method private doUnbindService()V
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->isFileTransferServiceBound:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->isFileTransferServiceBound:Z

    .line 140
    :cond_0
    return-void
.end method

.method private static getChatGroup(Landroid/content/Intent;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string/jumbo v0, "KEY_CHAT_GROUP_TOPIC"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method private initAudioBoard()V
    .locals 3

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->addBoardListView()Landroid/widget/ListView;

    move-result-object v0

    .line 168
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->audioAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    .line 169
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->audioAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initBoard(Landroid/widget/ListView;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    .line 170
    return-void
.end method

.method private initBoard(Landroid/widget/ListView;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "adapter":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<*>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 148
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    new-instance v0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$2;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 164
    return-void
.end method

.method private initPaintBoard()V
    .locals 3

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->addBoardListView()Landroid/widget/ListView;

    move-result-object v0

    .line 180
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 181
    .local v1, "screenWidthPx":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-static {p0, v1, v2}, Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;->createAdapter(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)Lcom/liquable/nemo/chat/media/board/PaintHistoryAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->paintAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    .line 182
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->paintAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-direct {p0, v0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initBoard(Landroid/widget/ListView;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    .line 183
    return-void
.end method

.method private initPictureBoard()V
    .locals 6

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->addBoardListView()Landroid/widget/ListView;

    move-result-object v0

    .line 195
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 196
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 197
    .local v1, "scale":F
    new-instance v3, Lcom/liquable/nemo/chat/media/board/PictureHistoryAdapter;

    int-to-float v4, v2

    div-float/2addr v4, v1

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x50

    iget-object v5, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v3, p0, v4, v5}, Lcom/liquable/nemo/chat/media/board/PictureHistoryAdapter;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)V

    iput-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->pictureAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    .line 200
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->pictureAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-direct {p0, v0, v3}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initBoard(Landroid/widget/ListView;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    .line 201
    return-void
.end method

.method private initTabs()V
    .locals 4

    .prologue
    .line 204
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabBackgrounds:Ljava/util/List;

    const v2, 0x7f0800ed

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabBackgrounds:Ljava/util/List;

    const v2, 0x7f0800ef

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabBackgrounds:Ljava/util/List;

    const v2, 0x7f0800f1

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabBackgrounds:Ljava/util/List;

    const v2, 0x7f0800f3

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabBackgrounds:Ljava/util/List;

    const v2, 0x7f0800f5

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabViews:Ljava/util/List;

    const v2, 0x7f0800ec

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabViews:Ljava/util/List;

    const v2, 0x7f0800ee

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabViews:Ljava/util/List;

    const v2, 0x7f0800f0

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabViews:Ljava/util/List;

    const v2, 0x7f0800f2

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabViews:Ljava/util/List;

    const v2, 0x7f0800f4

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 218
    .local v1, "tab":Landroid/widget/RelativeLayout;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 219
    new-instance v2, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$3;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 229
    new-instance v2, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$4;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "tab":Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method private initVideoBoard()V
    .locals 6

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->addBoardListView()Landroid/widget/ListView;

    move-result-object v0

    .line 187
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 188
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 189
    .local v1, "scale":F
    new-instance v3, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;

    int-to-float v4, v2

    div-float/2addr v4, v1

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x50

    iget-object v5, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v3, p0, v4, v5}, Lcom/liquable/nemo/chat/media/board/VideoHistoryAdapter;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)V

    iput-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->videoAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    .line 190
    iget-object v3, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->videoAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-direct {p0, v0, v3}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initBoard(Landroid/widget/ListView;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    .line 191
    return-void
.end method

.method private initVoiceBoard()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->addBoardListView()Landroid/widget/ListView;

    move-result-object v0

    .line 174
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v1, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    .line 175
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initBoard(Landroid/widget/ListView;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    .line 176
    return-void
.end method

.method private static isPaintMessage(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    const-class v0, Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KEY_MESSAGE_TYPE"

    .line 83
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private loadMedia(Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->getMessageType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->getState()Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->DONE:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMediaTasks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    new-instance v2, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;

    invoke-direct {v2, p0, p1, v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 269
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 270
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/liquable/nemo/message/model/AbstractMediaMessage;>;>;"
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMediaTasks:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadMediaView()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->pictureAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMedia(Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    .line 275
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->paintAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMedia(Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    .line 276
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->audioAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMedia(Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    .line 277
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->videoAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMedia(Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    .line 278
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMedia(Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    .line 279
    return-void
.end method

.method private onWorkspaceIndexChange(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 346
    iget v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabCurrentIndex:I

    if-ne v2, p1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 350
    :cond_0
    iput p1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabCurrentIndex:I

    .line 352
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabBackgrounds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 353
    .local v0, "tabBackground":Landroid/widget/ImageView;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 356
    .end local v0    # "tabBackground":Landroid/widget/ImageView;
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabBackgrounds:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 357
    .restart local v0    # "tabBackground":Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 360
    .local v1, "textView":Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    goto :goto_2

    .line 363
    .end local v1    # "textView":Landroid/widget/RelativeLayout;
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->tabViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 364
    .restart local v1    # "textView":Landroid/widget/RelativeLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    goto :goto_0
.end method

.method private playVoiceMessage(Ljava/io/File;Lcom/liquable/nemo/message/model/VoiceMessage;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/VoiceMessage;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stop()V

    .line 370
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playingVoiceMessageId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/VoiceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playingVoiceMessageId:Ljava/lang/String;

    .line 396
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/VoiceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playingVoiceMessageId:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    new-instance v1, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$7;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$7;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->startPlay(Ljava/io/File;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private stopVoiceMessage()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stop()V

    .line 422
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playingVoiceMessageId:Ljava/lang/String;

    .line 424
    return-void
.end method


# virtual methods
.method public getDownloadingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->downloadList:Ljava/util/List;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->doUnbindService()V

    .line 284
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->chatGroupMediaShareBoardReceiver:Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;

    invoke-virtual {v1, p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;->unregisterAction(Landroid/content/Context;)V

    .line 285
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMediaTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMediaTasks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->cancelTask(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 288
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->terminate()V

    .line 291
    :cond_1
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 292
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 296
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->setContentView(I)V

    .line 298
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getChatGroup(Landroid/content/Intent;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 299
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-nez v0, :cond_0

    .line 300
    const v0, 0x7f0d01c6

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 301
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->setResult(I)V

    .line 302
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->finish()V

    .line 337
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-direct {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    .line 307
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 309
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 311
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/Workspace;

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->workspace:Lcom/liquable/nemo/widget/Workspace;

    .line 312
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initTabs()V

    .line 314
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initPictureBoard()V

    .line 315
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initPaintBoard()V

    .line 316
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initVideoBoard()V

    .line 317
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initAudioBoard()V

    .line 318
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initVoiceBoard()V

    .line 320
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->isPaintMessage(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->workspace:Lcom/liquable/nemo/widget/Workspace;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/widget/Workspace;->scrollTo(I)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->workspace:Lcom/liquable/nemo/widget/Workspace;

    new-instance v1, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$6;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$6;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/widget/Workspace;->setOnScrollListener(Lcom/liquable/nemo/widget/Workspace$OnScrollListener;Z)V

    .line 331
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMediaView()V

    .line 333
    new-instance v0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->chatGroupMediaShareBoardReceiver:Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;

    .line 334
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->chatGroupMediaShareBoardReceiver:Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;->registerAction(Landroid/content/Context;)V

    .line 336
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->doBindService()V

    goto :goto_0
.end method

.method public playVoiceMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playingVoiceMessageId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->stopVoiceMessage()V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playingVoiceMessageId:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 408
    const v2, 0x7f0d0512

    invoke-static {p0, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 412
    :cond_2
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/VoiceMessage;

    .line 415
    .local v1, "voiceMessage":Lcom/liquable/nemo/message/model/VoiceMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/VoiceMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 416
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playVoiceMessage(Ljava/io/File;Lcom/liquable/nemo/message/model/VoiceMessage;)V

    goto :goto_0
.end method

.method public updateBoards()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->pictureAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->notifyDataSetChanged()V

    .line 428
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->paintAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->notifyDataSetChanged()V

    .line 429
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->videoAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->notifyDataSetChanged()V

    .line 430
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->audioAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->notifyDataSetChanged()V

    .line 431
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceAdapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->notifyDataSetChanged()V

    .line 432
    return-void
.end method

.method public updateDownloadingList()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    invoke-interface {v0}, Lcom/liquable/nemo/android/service/FileTransferInfo;->listDownloading()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->downloadList:Ljava/util/List;

    goto :goto_0
.end method
