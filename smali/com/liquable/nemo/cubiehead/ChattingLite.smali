.class public Lcom/liquable/nemo/cubiehead/ChattingLite;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;
    }
.end annotation


# static fields
.field private static final MAX_CHATGROUPS:I = 0x5

.field public static final MAX_WIDTH_IN_DP:I = 0x154

.field private static final NUMBER_OF_MESSAGES_TO_LOAD:I = 0xa

.field public static final SIDE_PADDING_IN_DP:I = 0xa


# instance fields
.field private chatGroupIconsContainer:Landroid/widget/LinearLayout;

.field private final chatGroupItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private chatGroupScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

.field private final chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

.field private final chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

.field private final chattingLiteCallback:Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;

.field private connectionStateView:Lcom/liquable/nemo/chat/ConnectionStateTextView;

.field private final context:Landroid/content/Context;

.field private currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field private emojiMask:Landroid/widget/FrameLayout;

.field private emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

.field private fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

.field private isFileTransferServiceBound:Z

.field private loadChatGroupsAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

.field private playingVoiceMessageId:Ljava/lang/String;

.field private readMore:Landroid/widget/LinearLayout;

.field private secretMessageTimerScheduled:Z

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/ViewManager;
    .param p3, "callback"    # Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    .line 120
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->playingVoiceMessageId:Ljava/lang/String;

    .line 121
    new-instance v2, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-direct {v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    .line 130
    new-instance v2, Lcom/liquable/nemo/cubiehead/ChattingLite$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$1;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    iput-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->serviceConnection:Landroid/content/ServiceConnection;

    .line 154
    sget-object v2, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "creating ChattingLite"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    .line 156
    iput-object p3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chattingLiteCallback:Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;

    .line 157
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030130

    const/4 v5, 0x0

    .line 158
    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    iput-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    .line 160
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 165
    .local v0, "chattingLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    invoke-interface {p2, v1, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "image_loader_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/cubiehead/ChattingLite;

    .line 168
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/cubiehead/ChattingLite;

    .line 169
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {p1, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->createUnmanagedImageLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 170
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->initInputMessageWidget()V

    .line 171
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    const v2, 0x7f0802e8

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 172
    .local v6, "tabArrowLeft":Landroid/view/View;
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    const v2, 0x7f0802e9

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 173
    .local v7, "tabArrowRight":Landroid/view/View;
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    const v2, 0x7f0802e5

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    iput-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    .line 174
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    const v2, 0x7f0802e6

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupIconsContainer:Landroid/widget/LinearLayout;

    .line 176
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    const v2, 0x7f080088

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/ConnectionStateTextView;

    iput-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->connectionStateView:Lcom/liquable/nemo/chat/ConnectionStateTextView;

    .line 178
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    const v2, 0x7f080089

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/status/view/ChatStatusView;

    iput-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    .line 179
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v1, v2, v4}, Lcom/liquable/nemo/status/view/ChatStatusView;->init(Lcom/liquable/nemo/util/ImageLoader;Z)V

    .line 183
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    new-instance v2, Lcom/liquable/nemo/cubiehead/ChattingLite$2;

    invoke-direct {v2, p0, v6, v7}, Lcom/liquable/nemo/cubiehead/ChattingLite$2;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->setOnScrollListener(Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;)V

    .line 195
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    iput-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->initialReadMoreBtn()V

    .line 197
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->readMore:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->addHeaderView(Landroid/view/View;)V

    .line 198
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    new-instance v2, Lcom/liquable/nemo/cubiehead/ChattingLite$3;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite$3;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 222
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    new-instance v2, Lcom/liquable/nemo/cubiehead/ChattingLite$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$4;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 244
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    const v2, 0x7f0802e7

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/cubiehead/ChattingLite$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$5;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    const v2, 0x7f0800a9

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/cubiehead/ChattingLite$6;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$6;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    new-instance v2, Lcom/liquable/nemo/cubiehead/ChattingLite$7;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$7;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->setBackKeyListener(Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener$OnBackKeyListener;)V

    .line 268
    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLite$8;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$8;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    iput-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    .line 289
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 290
    return-void
.end method

.method static synthetic access$002(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/android/service/FileTransferInfo;)Lcom/liquable/nemo/android/service/FileTransferInfo;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;
    .param p1, "x1"    # Lcom/liquable/nemo/android/service/FileTransferInfo;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->updateMessageFileTransferState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/cubiehead/ChattingLite;Ljava/lang/String;)Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->createChatGroupItem(Ljava/lang/String;)Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/cubiehead/ChattingLite;Ljava/lang/String;Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItemAdd(Ljava/lang/String;Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;
    .param p1, "x1"    # Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->openChatGroup(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->toggleEmojiWidget()V

    return-void
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->enterChattingActivity()V

    return-void
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->scrollToLast()V

    return-void
.end method

.method static synthetic access$1900(Lcom/liquable/nemo/cubiehead/ChattingLite;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->readMore:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/cubiehead/ChattingLite;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupIconsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/liquable/nemo/cubiehead/ChattingLite;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->playingVoiceMessageId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;
    .param p1, "x1"    # Lcom/liquable/nemo/message/model/VoiceMessage;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/cubiehead/ChattingLite;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    return-void
.end method

.method static synthetic access$2302(Lcom/liquable/nemo/cubiehead/ChattingLite;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->secretMessageTimerScheduled:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->enterMainActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chattingLiteCallback:Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/chat/widget/EmojiWidget;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->hideEmojiWidget()V

    return-void
.end method

.method static synthetic access$900(Lcom/liquable/nemo/cubiehead/ChattingLite;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    return-object v0
.end method

.method private chatGroupItemAdd(Ljava/lang/String;Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V
    .locals 6
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .prologue
    .line 323
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    const/16 v4, 0x34

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    .line 325
    .local v0, "dimension":I
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v2

    .line 326
    .local v2, "margin":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 328
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 329
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupIconsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    invoke-virtual {p2}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->retrieveAndUpdateChatGroupUnreadCount()V

    .line 333
    :cond_0
    return-void
.end method

.method private chatGroupItemRemove(Ljava/lang/String;)V
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 337
    .local v0, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupIconsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 340
    :cond_0
    return-void
.end method

.method private createChatGroupItem(Ljava/lang/String;)Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    .locals 4
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 343
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 344
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v1, v2, v0, v3}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;-><init>(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/util/ImageLoader;)V

    .line 347
    .local v1, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    new-instance v2, Lcom/liquable/nemo/cubiehead/ChattingLite$9;

    invoke-direct {v2, p0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite$9;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->setOnIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    return-object v1
.end method

.method private doBindService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 383
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    const-class v3, Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 386
    iput-boolean v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->isFileTransferServiceBound:Z

    .line 388
    return-void
.end method

.method private doUnbindService()V
    .locals 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->isFileTransferServiceBound:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->isFileTransferServiceBound:Z

    .line 395
    :cond_0
    return-void
.end method

.method private enterChattingActivity()V
    .locals 3

    .prologue
    .line 398
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v1, :cond_0

    .line 399
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    const-class v2, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    const-string/jumbo v1, "CHAT_GROUP_TOPIC"

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 406
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->enterMainActivity()V

    goto :goto_0
.end method

.method private enterMainActivity()V
    .locals 3

    .prologue
    .line 409
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    const-class v2, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    const-string/jumbo v1, "SHOW_CHATGROUP_LIST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 412
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 413
    return-void
.end method

.method private getCurrentChatGroupTopicList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    :goto_0
    return-object v0

    .line 424
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 425
    .local v0, "topics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0
.end method

.method private hideEmojiWidget()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    if-nez v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->toggleEmojiWidget()V

    goto :goto_0
.end method

.method private initEmojiWidget(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 529
    const v2, 0x7f08008b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiMask:Landroid/widget/FrameLayout;

    .line 530
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiMask:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/liquable/nemo/cubiehead/ChattingLite$10;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$10;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 536
    new-instance v2, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v2, v3, v4}, Lcom/liquable/nemo/chat/widget/EmojiWidget;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .line 537
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    .line 538
    .local v1, "margin":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 540
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1, v1, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 541
    const/4 v2, 0x2

    const v3, 0x7f080083

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 542
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 543
    const/16 v2, 0x8

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 544
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    new-instance v3, Lcom/liquable/nemo/cubiehead/ChattingLite$11;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$11;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setDownloadNewStickerBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    sget-object v3, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setTag(Ljava/lang/Object;)V

    .line 559
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    new-instance v3, Lcom/liquable/nemo/cubiehead/ChattingLite$12;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$12;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setOnStickerSelectListener(Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;)V

    .line 575
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    new-instance v3, Lcom/liquable/nemo/cubiehead/ChattingLite$13;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$13;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setOnEmojiSelectListener(Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;)V

    .line 581
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    new-instance v3, Lcom/liquable/nemo/cubiehead/ChattingLite$14;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$14;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setOnCustomStickerSendListener(Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;)V

    .line 603
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    new-instance v3, Lcom/liquable/nemo/cubiehead/ChattingLite$15;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$15;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setOnManageCustomStickerClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    return-void
.end method

.method private initInputMessageWidget()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .line 629
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setOnSendButtonClickedListener(Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;)V

    .line 630
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLite$17;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$17;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setOnSecretModeListener(Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;)V

    .line 636
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLite$18;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$18;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setOnEmojiButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLite$19;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$19;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setOnEnterChatGroupButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLite$20;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$20;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setOnTypeListener(Ljava/lang/Runnable;)V

    .line 658
    return-void
.end method

.method private initialReadMoreBtn()V
    .locals 4

    .prologue
    .line 613
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300fa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->readMore:Landroid/widget/LinearLayout;

    .line 615
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->readMore:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 617
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->readMore:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/liquable/nemo/cubiehead/ChattingLite$16;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$16;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->readMore:Landroid/widget/LinearLayout;

    const v2, 0x7f08028e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 624
    .local v0, "readMoreTextView":Landroid/widget/TextView;
    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 625
    return-void
.end method

.method private loadMessages(Ljava/lang/String;)V
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 670
    sget-object v0, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadMessages:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 671
    new-instance v0, Lcom/liquable/nemo/cubiehead/ChattingLite$21;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite$21;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 724
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 725
    return-void
.end method

.method private markAllMessageAsRead(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 728
    new-instance v0, Lcom/liquable/nemo/cubiehead/ChattingLite$22;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite$22;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/group/model/ChatGroup;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 734
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite$22;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 735
    return-void
.end method

.method private openChatGroup(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V
    .locals 6
    .param p1, "item"    # Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .prologue
    const/4 v3, 0x0

    .line 761
    invoke-virtual {p1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->getChatGroup()Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 762
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 763
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->setCurrentChatGroupTopic(Ljava/lang/String;)V

    .line 764
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 765
    .local v1, "chatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->setSelected(Z)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    .line 767
    .end local v1    # "chatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->updateChatGroupUnreadCount(J)V

    .line 768
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {p1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->getAdapter()Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 769
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->scrollToLast()V

    .line 770
    invoke-virtual {p1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->getAdapter()Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingAdapter;->getCount()I

    move-result v2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_3

    .line 771
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->loadMessages(Ljava/lang/String;)V

    .line 775
    :goto_2
    invoke-direct {p0, v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->markAllMessageAsRead(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 776
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    invoke-virtual {v2, v3, v3}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->scrollTo(II)V

    .line 778
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/android/NotifyManager;->cancelMessageSendFailedNotification(Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/liquable/nemo/status/view/EnterGroupStatusSender;->getInstance()Lcom/liquable/nemo/status/view/EnterGroupStatusSender;

    move-result-object v2

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/status/view/EnterGroupStatusSender;->send(Ljava/lang/String;)V

    .line 782
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->isBroadcastChannel()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v3, 0x8

    :cond_2
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setVisibility(I)V

    .line 785
    return-void

    .line 773
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->readMore:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private playVoiceMessage(Ljava/io/File;Lcom/liquable/nemo/message/model/VoiceMessage;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/VoiceMessage;

    .prologue
    const/4 v2, 0x0

    .line 788
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stop()V

    .line 790
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->playingVoiceMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    invoke-direct {p0, v0, v2, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 793
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->playingVoiceMessageId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/VoiceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->playingVoiceMessageId:Ljava/lang/String;

    .line 822
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/VoiceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->playingVoiceMessageId:Ljava/lang/String;

    .line 799
    const/4 v0, 0x1

    invoke-direct {p0, p2, v2, v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 801
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLite$23;

    invoke-direct {v1, p0, p2}, Lcom/liquable/nemo/cubiehead/ChattingLite$23;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/message/model/VoiceMessage;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->startPlay(Ljava/io/File;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private purgeChatGroup()V
    .locals 4

    .prologue
    .line 843
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 845
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 846
    .local v1, "topicListInOldToNewOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-nez v2, :cond_1

    .line 848
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItemRemove(Ljava/lang/String;)V

    .line 861
    .end local v1    # "topicListInOldToNewOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 852
    .restart local v1    # "topicListInOldToNewOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 853
    .local v0, "chatGroupTopic":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 856
    invoke-direct {p0, v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItemRemove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scrollToLast()V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setSelection(I)V

    .line 920
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLite$25;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$25;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->post(Ljava/lang/Runnable;)Z

    .line 926
    return-void
.end method

.method private stopVoiceMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1018
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stop()V

    .line 1020
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->playingVoiceMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    invoke-direct {p0, v0, v2, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 1024
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->playingVoiceMessageId:Ljava/lang/String;

    .line 1025
    return-void
.end method

.method private toggleEmojiWidget()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1028
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    if-nez v1, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    invoke-direct {p0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->initEmojiWidget(Landroid/view/View;)V

    .line 1031
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->toggle(Z)Z

    .line 1032
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiMask:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1033
    return-void

    .line 1032
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateMessageFileTransferState()V
    .locals 3

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 1051
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 1055
    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->getAdapter()Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    .line 1056
    invoke-interface {v1}, Lcom/liquable/nemo/android/service/FileTransferInfo;->listDownloading()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    invoke-interface {v2}, Lcom/liquable/nemo/android/service/FileTransferInfo;->listUploading()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingAdapter;->initItemTansferState(Ljava/util/List;Ljava/util/List;)V

    .line 1057
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    invoke-interface {v0}, Lcom/liquable/nemo/android/service/FileTransferInfo;->triggerBroadcastProgress()V

    goto :goto_0
.end method

.method private updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/VoiceMessage;
    .param p2, "isPlaying"    # Z
    .param p3, "isPreparing"    # Z

    .prologue
    .line 1091
    if-nez p1, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VoiceMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 1095
    .local v0, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public addMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "topic":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 295
    .local v0, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    if-nez v0, :cond_5

    .line 296
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->purgeChatGroup()V

    .line 297
    invoke-direct {p0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->createChatGroupItem(Ljava/lang/String;)Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    move-result-object v0

    .line 298
    invoke-direct {p0, v1, v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItemAdd(Ljava/lang/String;Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V

    .line 305
    :goto_0
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->addMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 307
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/liquable/nemo/message/model/LikePictureMessage;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    .line 308
    invoke-virtual {v2}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {v3}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getLastVisiblePosition()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->scrollToLast()V

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v2, :cond_4

    .line 313
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->markAllMessageAsRead(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 317
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, p1, v3}, Lcom/liquable/nemo/status/view/ChatStatusView;->onAddMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 320
    :cond_4
    return-void

    .line 302
    :cond_5
    invoke-direct {p0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItemRemove(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, v1, v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItemAdd(Ljava/lang/String;Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V

    goto :goto_0
.end method

.method public deleteChatGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItemRemove(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method deleteMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 362
    .local v0, "chatGroupView":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->deleteMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0
.end method

.method public destroy(Landroid/view/ViewManager;)V
    .locals 2
    .param p1, "windowManager"    # Landroid/view/ViewManager;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    invoke-virtual {v0}, Lcom/liquable/nemo/status/view/ChatStatusView;->destroy()V

    .line 371
    invoke-static {}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->getInstance()Lcom/liquable/nemo/status/view/WatchMessageDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->cancelDetect()V

    .line 373
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 377
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 380
    :cond_1
    return-void
.end method

.method public getChatGroupCount()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method handlerStickerCategoryIconTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    .line 431
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    if-nez v1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 434
    :cond_0
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "categoryCode":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/cubiehead/ChattingLite$28;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 437
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->updateStickerCategoryIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method handlerStickerPackageTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    .line 445
    const-string/jumbo v2, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "packageCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 447
    .local v0, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    sget-object v3, Lcom/liquable/nemo/cubiehead/ChattingLite$28;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 449
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->updateStickerPackageTransferComplete(Ljava/lang/String;)V

    .line 450
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    if-eqz v3, :cond_0

    .line 453
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->addStickerTabsIfNecessary()V

    .line 454
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->updateStickerPackageComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->updateStickerPackageTransferFail(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    .end local v0    # "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    :cond_1
    return-void

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method handlerStickerThumbnailTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    .line 466
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    if-nez v1, :cond_0

    .line 478
    :goto_0
    return-void

    .line 470
    :cond_0
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "stickerCode":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/cubiehead/ChattingLite$28;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 473
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->updateStickerThumbnailComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method handlerStickerTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    .line 481
    const-string/jumbo v2, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "stickerCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 483
    .local v0, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    sget-object v3, Lcom/liquable/nemo/cubiehead/ChattingLite$28;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 485
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->updateStickerTransferComplete(Ljava/lang/String;)V

    .line 486
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    if-eqz v3, :cond_0

    .line 490
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->addStickerTabsIfNecessary()V

    goto :goto_0

    .line 493
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->updateStickerTransferFail(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    .end local v0    # "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    :cond_1
    return-void

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hide(Z)V
    .locals 5
    .param p1, "temporary"    # Z

    .prologue
    const/4 v4, 0x0

    .line 502
    sget-object v1, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ChattingLite.hide:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 503
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->doUnbindService()V

    .line 504
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Service;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 505
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->setVisibility(I)V

    .line 506
    iput-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 507
    if-nez p1, :cond_0

    .line 508
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v1, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->setCurrentChatGroupTopic(Ljava/lang/String;)V

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/ImageLoader;->clearCache()V

    .line 511
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 512
    .local v0, "chatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->getAdapter()Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChattingAdapter;->trim(I)V

    goto :goto_0

    .line 514
    .end local v0    # "chatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->getInstance()Lcom/liquable/nemo/status/view/WatchMessageDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->cancelDetect()V

    .line 515
    return-void
.end method

.method public isValid(Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 662
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 738
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 739
    .local v0, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    if-nez v0, :cond_0

    .line 744
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->moveMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 747
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 748
    .local v0, "chattingLiteChatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->notifyDataSetChanged()V

    goto :goto_0

    .line 750
    .end local v0    # "chattingLiteChatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    :cond_0
    return-void
.end method

.method public onReceivedStatus(Lcom/liquable/nemo/status/model/ReceivedStatus;)V
    .locals 2
    .param p1, "receivedStatus"    # Lcom/liquable/nemo/status/model/ReceivedStatus;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-nez v0, :cond_0

    .line 758
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/status/view/ChatStatusView;->onReceivedStatus(Lcom/liquable/nemo/status/model/ReceivedStatus;Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0
.end method

.method public playVoiceMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 825
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->playingVoiceMessageId:Ljava/lang/String;

    invoke-static {v2, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 827
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->stopVoiceMessage()V

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->playingVoiceMessageId:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 833
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    const v3, 0x7f0d0512

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 837
    :cond_2
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/VoiceMessage;

    .line 838
    .local v1, "voiceMessage":Lcom/liquable/nemo/message/model/VoiceMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/VoiceMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 839
    .local v0, "voiceFile":Ljava/io/File;
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->playVoiceMessage(Ljava/io/File;Lcom/liquable/nemo/message/model/VoiceMessage;)V

    goto :goto_0
.end method

.method public reloadUnreadCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 864
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 865
    .local v0, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->retrieveAndUpdateChatGroupUnreadCount()V

    .line 868
    :cond_0
    return-void
.end method

.method replaceMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 871
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 872
    .local v0, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    if-nez v0, :cond_0

    .line 877
    :goto_0
    return-void

    .line 876
    :cond_0
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->replaceMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0
.end method

.method public resetChatGroupIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 880
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 881
    .local v0, "chattingLiteChatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    if-nez v0, :cond_0

    .line 885
    :goto_0
    return-void

    .line 884
    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->resetIcon()V

    goto :goto_0
.end method

.method public resetChatGroupTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 888
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 889
    .local v0, "chattingLiteChatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    if-nez v0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 893
    .local v1, "refreshed":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v1, :cond_0

    .line 896
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->updateChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0
.end method

.method public scheduleSecretMessageTimer()V
    .locals 4

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->secretMessageTimerScheduled:Z

    if-eqz v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 903
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->secretMessageTimerScheduled:Z

    .line 904
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLite$24;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/cubiehead/ChattingLite$24;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public sendWithSecretText(Ljava/lang/String;)V
    .locals 5
    .param p1, "chatContent"    # Ljava/lang/String;

    .prologue
    .line 930
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    invoke-static {p1}, Lcom/liquable/nemo/chat/EmojiUtil;->extractEmojiCodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 935
    .local v1, "extractEmojiCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/util/Pref;->saveFavoriteEmoji(Ljava/util/List;)V

    .line 936
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    if-eqz v3, :cond_2

    .line 937
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->refreshFavEmojis()V

    .line 942
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/liquable/nemo/message/model/SecretTextMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/SecretTextMessage;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 949
    .local v2, "message":Lcom/liquable/nemo/message/model/SecretTextMessage;
    new-instance v3, Lcom/liquable/nemo/cubiehead/ChattingLite$26;

    invoke-direct {v3, p0, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite$26;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/message/model/SecretTextMessage;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 960
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/cubiehead/ChattingLite$26;->execute([Ljava/lang/Object;)V

    .line 962
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->hideEmojiWidget()V

    goto :goto_0

    .line 943
    .end local v2    # "message":Lcom/liquable/nemo/message/model/SecretTextMessage;
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 945
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    const v4, 0x7f0d01c6

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public sendWithText(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatContent"    # Ljava/lang/String;

    .prologue
    .line 967
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    invoke-static {p1}, Lcom/liquable/nemo/chat/EmojiUtil;->extractEmojiCodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 972
    .local v0, "extractEmojiCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/Pref;->saveFavoriteEmoji(Ljava/util/List;)V

    .line 973
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    if-eqz v1, :cond_2

    .line 974
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->emojiWidget:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->refreshFavEmojis()V

    .line 977
    :cond_2
    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLite$27;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite$27;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 988
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite$27;->execute([Ljava/lang/Object;)V

    .line 990
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->hideEmojiWidget()V

    goto :goto_0
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 994
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->requestCurrentConnectionState(Landroid/content/Context;)V

    .line 996
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v3}, Lcom/liquable/nemo/android/NotifyManager;->getCubieHeadNotification()Landroid/util/Pair;

    move-result-object v2

    .line 997
    .local v2, "notification":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/app/Notification;>;"
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Service;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/app/Notification;

    invoke-virtual {v3, v5, v4}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 998
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->doBindService()V

    .line 999
    sget-object v3, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "ChattingLite.show"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 1000
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatting:Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;

    invoke-virtual {v3, v6}, Lcom/liquable/nemo/cubiehead/RelativeLayoutWithKeyListener;->setVisibility(I)V

    .line 1001
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1002
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->getCurrentChatGroupTopicList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1003
    .local v1, "latestTopic":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    invoke-direct {p0, v3}, Lcom/liquable/nemo/cubiehead/ChattingLite;->openChatGroup(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V

    .line 1004
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 1005
    .local v0, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->getChatGroup()Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1008
    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->retrieveAndUpdateChatGroupUnreadCount()V

    goto :goto_0

    .line 1011
    .end local v0    # "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    .end local v1    # "latestTopic":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/liquable/nemo/cubiehead/CubieHeadService;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "probably because chatGroupItems is not loaded yet"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 1012
    iput-object v7, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 1013
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v3, v7}, Lcom/liquable/nemo/chat/model/ChattingManager;->setCurrentChatGroupTopic(Ljava/lang/String;)V

    .line 1015
    :cond_2
    return-void
.end method

.method public updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V
    .locals 1
    .param p1, "state"    # Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->connectionStateView:Lcom/liquable/nemo/chat/ConnectionStateTextView;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->show(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    .line 1037
    return-void
.end method

.method updateMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 1040
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->replaceMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 1041
    instance-of v0, p1, Lcom/liquable/nemo/message/model/ISecret;

    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->scheduleSecretMessageTimer()V

    .line 1043
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1044
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->scrollToLast()V

    .line 1047
    :cond_0
    return-void
.end method

.method updateSecretMessages()V
    .locals 4

    .prologue
    .line 1061
    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 1062
    .local v0, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->getAdapter()Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateSecretMessages()Z

    move-result v1

    .line 1063
    .local v1, "updated":Z
    if-eqz v1, :cond_0

    .line 1064
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastSecretMessageUpdate()V

    .line 1065
    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->getAdapter()Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1068
    .end local v0    # "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    .end local v1    # "updated":Z
    :cond_1
    return-void
.end method

.method public updateTransferAsComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 3
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 1072
    .local v0, "chattingLiteChatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->transferComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    goto :goto_0

    .line 1074
    .end local v0    # "chattingLiteChatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    :cond_0
    return-void
.end method

.method public updateTransferAsPending(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 3
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 1078
    .local v0, "chattingLiteChatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->transferFailed(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    goto :goto_0

    .line 1080
    .end local v0    # "chattingLiteChatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    :cond_0
    return-void
.end method

.method public updateTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V
    .locals 3
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "progress"    # I

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 1084
    .local v0, "chattingLiteChatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->updateTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V

    goto :goto_0

    .line 1086
    .end local v0    # "chattingLiteChatGroupItem":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    :cond_0
    return-void
.end method
