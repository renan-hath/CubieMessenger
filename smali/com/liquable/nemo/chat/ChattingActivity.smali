.class public Lcom/liquable/nemo/chat/ChattingActivity;
.super Lcom/liquable/nemo/BaseFragmentActivity;
.source "ChattingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;,
        Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;
    }
.end annotation


# static fields
.field private static final ACTION_ENTER_STICKER_STHOP:Ljava/lang/String; = "ACTION_ENTER_STICKER_STHOP"

.field public static final CHAT_GROUP_TITLE:Ljava/lang/String; = "CHAT_GROUP_TITLE"

.field public static final CHAT_GROUP_TOPIC:Ljava/lang/String; = "CHAT_GROUP_TOPIC"

.field private static final LOWER_BOUND_SD_CARD_SIZE_IN_MB:J = 0x1L

.field private static final MAX_PAGE_SIZE:I = 0xc8

.field private static final MEDIA_MESSAGE_FILE:Ljava/lang/String; = "com.liquable.nemo.chat.MEDIA_MESSAGE_FILE"

.field private static final MEDIA_MESSAGE_ID:Ljava/lang/String; = "com.liquable.nemo.chat.MEDIA_MESSAGE_ID"

.field public static final MESSAGE_ID_TO_PAINT:Ljava/lang/String; = "MESSAGE_ID_TO_PAINT"

.field public static final MSG_FROM:Ljava/lang/String; = "MSG_FROM"

.field public static final MSG_UID:Ljava/lang/String; = "MSG_UID"

.field private static final ONE_MEGABYTE:J = 0x100000L

.field private static final PAGE_SIZE:I = 0x1e

.field public static final PICTURE_FILE_NORMAL:Ljava/lang/String; = "PICTURE_FILE_NORMAL"

.field public static final PICTURE_FILE_SMALL:Ljava/lang/String; = "PICTURE_FILE_SMALL"

.field private static final SCROLL_TO_BOTTOM:Ljava/lang/String; = "SCROLL_TO_BOTTOM"

.field public static final SHOW_CHATGROUP_LIST:Ljava/lang/String; = "SHOW_CHATGROUP_LIST"


# instance fields
.field private broadcastReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver;

.field private chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field private chatGroupIconsBar:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

.field private chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

.field private chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

.field private chattingActivityInput:Landroid/view/View;

.field private chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

.field private final connectionStateBroadcastReceiver:Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;

.field private connectionStateBroadcastReceiverRegistered:Z

.field private connectionStateTextView:Lcom/liquable/nemo/chat/ConnectionStateTextView;

.field protected currentSelectedItem:I

.field private enteringShop:Z

.field private final eventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

.field private fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

.field private finishedLoading:Z

.field private handler:Landroid/os/Handler;

.field protected hasMicrophoneFeature:Z

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private isFileTransferServiceBound:Z

.field private isLoadingMessages:Z

.field private isReady:Z

.field private mediaMountStateTextView:Landroid/widget/TextView;

.field private messageCountOnScreen:I

.field private messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

.field private msgLayout:Landroid/view/View;

.field private final onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final onMessageListViewItemLongClick:Landroid/widget/AdapterView$OnItemLongClickListener;

.field public onMsgSettinBtnClick:Landroid/view/View$OnClickListener;

.field private playingVoiceMessageId:Ljava/lang/String;

.field private remainUnreadCount:J

.field private secretMessageTimerScheduled:Z

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private showMediaStateDetailBtn:Landroid/widget/ImageButton;

.field private voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

.field private wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

.field private widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

.field private youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragmentActivity;-><init>()V

    .line 231
    const/16 v0, 0x1e

    iput v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messageCountOnScreen:I

    .line 375
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/chat/ChattingActivity$1;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->connectionStateBroadcastReceiver:Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;

    .line 377
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ChattingActivity$1;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 390
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ChattingActivity$2;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->onMessageListViewItemLongClick:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 401
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ChattingActivity$3;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 412
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->playingVoiceMessageId:Ljava/lang/String;

    .line 413
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ChattingActivity$4;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->onMsgSettinBtnClick:Landroid/view/View$OnClickListener;

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->isLoadingMessages:Z

    .line 456
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->eventQueue:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/ConnectionStateTextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->connectionStateTextView:Lcom/liquable/nemo/chat/ConnectionStateTextView;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/Activity;Lcom/liquable/nemo/group/model/ChatGroup;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "x2"    # Z

    .prologue
    .line 196
    invoke-static {p0, p1, p2}, Lcom/liquable/nemo/chat/ChattingActivity;->openCamera(Landroid/app/Activity;Lcom/liquable/nemo/group/model/ChatGroup;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/chat/ChattingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messageCountOnScreen:I

    return v0
.end method

.method static synthetic access$1102(Lcom/liquable/nemo/chat/ChattingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messageCountOnScreen:I

    return p1
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/chat/ChattingActivity;->listMessages(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/ChattingAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->scrollToLast()V

    return-void
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->scrollToUnreadIndex()V

    return-void
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->markAllMessageAsRead()V

    return-void
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->updateIsFinishedLoading()V

    return-void
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->refreshFriendsInfo()V

    return-void
.end method

.method static synthetic access$1900(Lcom/liquable/nemo/chat/ChattingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->isLoadingMessages:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/liquable/nemo/chat/ChattingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->isLoadingMessages:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->processEventQueue()V

    return-void
.end method

.method static synthetic access$202(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/android/service/FileTransferInfo;)Lcom/liquable/nemo/android/service/FileTransferInfo;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/android/service/FileTransferInfo;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/liquable/nemo/chat/ChattingActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getTempChatGroupIconFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeHideAnimation()V

    return-void
.end method

.method static synthetic access$2300(Lcom/liquable/nemo/chat/ChattingActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity;->setMsgLayoutBottomMargin(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->showCaseCustomStickerButton()V

    return-void
.end method

.method static synthetic access$2500(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeShowAnimation()V

    return-void
.end method

.method static synthetic access$2600(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity;->saveCustomSticker(Lcom/liquable/nemo/message/model/DomainMessage;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/liquable/nemo/chat/ChattingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->finishedLoading:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$2900(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/ChattingActivity;->pasteToDrawingBoard(Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->updateMessageFileTransferState()V

    return-void
.end method

.method static synthetic access$3000(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity;->editPhoto(Lcom/liquable/nemo/message/model/DomainMessage;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity;->popupShareToFacebookDialog(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->playingVoiceMessageId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/chat/ChattingActivity;->postFileToFacebook(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/liquable/nemo/chat/ChattingActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/chat/ChattingActivity;->uploadImageToFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3702(Lcom/liquable/nemo/chat/ChattingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->secretMessageTimerScheduled:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/liquable/nemo/chat/ChattingActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p1, "x1"    # J

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->remainUnreadCount:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/ChattingActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->showMediaStateDetailBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->setRemainUnreadCount()V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/ChattingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->mediaMountStateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->enterShop()V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    return-object v0
.end method

.method private checkMicAvailable()V
    .locals 4

    .prologue
    .line 487
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "test_audio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 489
    .local v0, "temp":Ljava/io/File;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isMicAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->hasMicrophoneFeature:Z

    .line 491
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 527
    :goto_0
    return-void

    .line 493
    :cond_0
    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity$5;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/io/File;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 525
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private checkSDCardAvailableSize()V
    .locals 2

    .prologue
    .line 530
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isShowSDCardMemoryLowWarning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 535
    :cond_0
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$6;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ChattingActivity$6;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 556
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static createIntentForMesssage(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/message/model/DomainMessage;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->createIntentForMesssage(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntentForMesssage(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p3, "mediaFile"    # Ljava/io/File;

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 252
    const-string/jumbo v1, "CHAT_GROUP_TOPIC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string/jumbo v1, "com.liquable.nemo.chat.MEDIA_MESSAGE_ID"

    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string/jumbo v1, "com.liquable.nemo.chat.MEDIA_MESSAGE_FILE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 255
    return-object v0
.end method

.method public static createIntentForShop(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ACTION_ENTER_STICKER_STHOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    const-string/jumbo v1, "CHAT_GROUP_TOPIC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    return-object v0
.end method

.method public static dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)V

    .line 269
    return-void
.end method

.method public static dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p2, "mediaFile"    # Ljava/io/File;

    .prologue
    .line 275
    instance-of v5, p0, Landroid/app/Activity;

    if-nez v5, :cond_1

    .line 277
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-static {p0, v5, p1, p2}, Lcom/liquable/nemo/chat/ChattingActivity;->createIntentForMesssage(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_0
    :goto_0
    return-void

    .line 283
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_1
    instance-of v5, p1, Lcom/liquable/nemo/message/model/PictureMessage;

    if-nez v5, :cond_2

    instance-of v5, p1, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v5, :cond_3

    .line 284
    :cond_2
    invoke-static {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->createIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 286
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/liquable/nemo/status/model/WatchMessageStatus;->byManual(Ljava/lang/String;)Lcom/liquable/nemo/status/model/WatchMessageStatus;

    move-result-object v7

    .line 286
    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendChatStatus(Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;)V

    goto :goto_0

    .line 288
    :cond_3
    instance-of v5, p1, Lcom/liquable/nemo/message/model/LikePictureMessage;

    if-eqz v5, :cond_4

    .line 289
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    check-cast p1, Lcom/liquable/nemo/message/model/LikePictureMessage;

    .line 290
    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/LikePictureMessage;->getLikedMessageId()Ljava/lang/String;

    move-result-object v6

    .line 289
    invoke-virtual {v5, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v3

    .line 291
    .local v3, "likedMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v5, :cond_0

    .line 295
    invoke-static {p0, v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->createIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 297
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/liquable/nemo/status/model/WatchMessageStatus;->byManual(Ljava/lang/String;)Lcom/liquable/nemo/status/model/WatchMessageStatus;

    move-result-object v7

    .line 297
    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendChatStatus(Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;)V

    goto :goto_0

    .line 299
    .end local v3    # "likedMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    .restart local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_4
    instance-of v5, p1, Lcom/liquable/nemo/message/model/AudioMessage;

    if-eqz v5, :cond_5

    .line 300
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/liquable/nemo/chat/AudioPlayerActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "MSG_UID"

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 303
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    instance-of v5, p1, Lcom/liquable/nemo/message/model/VideoMessage;

    if-eqz v5, :cond_6

    .line 304
    check-cast p1, Lcom/liquable/nemo/message/model/VideoMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-static {p0, p1}, Lcom/liquable/nemo/chat/VideoViewerActivity;->createIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/VideoMessage;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 305
    .restart local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_6
    instance-of v5, p1, Lcom/liquable/nemo/message/model/YoutubeMessage;

    if-eqz v5, :cond_7

    move-object v1, p0

    .line 306
    check-cast v1, Lcom/liquable/nemo/chat/ChattingActivity;

    .local v1, "chattingActivity":Lcom/liquable/nemo/chat/ChattingActivity;
    move-object v5, p1

    .line 307
    check-cast v5, Lcom/liquable/nemo/message/model/YoutubeMessage;

    invoke-direct {v1, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->watchYoutube(Lcom/liquable/nemo/message/model/YoutubeMessage;)V

    .line 309
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/liquable/nemo/status/model/WatchMessageStatus;->byManual(Ljava/lang/String;)Lcom/liquable/nemo/status/model/WatchMessageStatus;

    move-result-object v7

    .line 309
    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendChatStatus(Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;)V

    goto/16 :goto_0

    .line 311
    .end local v1    # "chattingActivity":Lcom/liquable/nemo/chat/ChattingActivity;
    :cond_7
    instance-of v5, p1, Lcom/liquable/nemo/message/model/LocationMessage;

    if-eqz v5, :cond_8

    .line 312
    check-cast p1, Lcom/liquable/nemo/message/model/LocationMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-static {p0, p1}, Lcom/liquable/nemo/map/LocationHelper;->intentShowLocation(Landroid/content/Context;Lcom/liquable/nemo/message/model/LocationMessage;)V

    goto/16 :goto_0

    .line 313
    .restart local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_8
    instance-of v5, p1, Lcom/liquable/nemo/message/model/AskPictureMessage;

    if-eqz v5, :cond_9

    .line 314
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 315
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v5, 0x0

    invoke-static {p0, v0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->openCamera(Landroid/app/Activity;Lcom/liquable/nemo/group/model/ChatGroup;Z)V

    goto/16 :goto_0

    .line 316
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_9
    instance-of v5, p1, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    if-eqz v5, :cond_a

    .line 317
    new-instance v2, Lcom/liquable/nemo/chat/OpenSecretImageActivity$CreateIntent;

    check-cast p1, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/chat/OpenSecretImageActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/message/model/SecretPictureMessage;)V

    .line 319
    .local v2, "intent":Lcom/liquable/nemo/chat/OpenSecretImageActivity$CreateIntent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 320
    .end local v2    # "intent":Lcom/liquable/nemo/chat/OpenSecretImageActivity$CreateIntent;
    .restart local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_a
    instance-of v5, p1, Lcom/liquable/nemo/message/model/MissedCallMessage;

    if-eqz v5, :cond_0

    .line 321
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v4

    .line 322
    .local v4, "receiver":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v4, :cond_0

    .line 323
    new-instance v5, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;

    const-string/jumbo v6, "missed_call"

    invoke-direct {v5, p0, v4, v6}, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 568
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 571
    iput-boolean v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->isFileTransferServiceBound:Z

    .line 573
    return-void
.end method

.method private doUnbindService()V
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->isFileTransferServiceBound:Z

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->isFileTransferServiceBound:Z

    .line 580
    :cond_0
    return-void
.end method

.method private editPhoto(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const/4 v5, 0x0

    .line 583
    instance-of v3, p1, Lcom/liquable/nemo/message/model/PictureMessage;

    if-nez v3, :cond_0

    .line 606
    :goto_0
    return-void

    :cond_0
    move-object v2, p1

    .line 586
    check-cast v2, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 588
    .local v2, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v2, v5}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 589
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 591
    .local v1, "pictureAssetFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 592
    const v3, 0x7f0d0357

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 596
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    invoke-interface {v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->editPhoto()V

    .line 598
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    .line 599
    invoke-virtual {v3}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v3

    .line 600
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 598
    invoke-static {p0, v3, v4, v5}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->fromChatWithDataToEdit(Landroid/content/Context;ZLandroid/net/Uri;Lcom/liquable/nemo/group/model/ChatGroup;)Landroid/content/Intent;

    move-result-object v0

    .line 605
    .local v0, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private enterShop()V
    .locals 2

    .prologue
    .line 617
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->enteringShop:Z

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/sticker/StickerShopActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivity(Landroid/content/Intent;)V

    .line 620
    return-void
.end method

.method private filterExpiredSecretMessage(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v0, "filteredMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 625
    .local v1, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v4, v1, Lcom/liquable/nemo/message/model/ISecret;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 626
    check-cast v2, Lcom/liquable/nemo/message/model/ISecret;

    .line 628
    .local v2, "secretMessage":Lcom/liquable/nemo/message/model/ISecret;
    sget-object v4, Lcom/liquable/nemo/message/model/ISecret$State;->OPENED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-interface {v2, v4}, Lcom/liquable/nemo/message/model/ISecret;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 629
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/liquable/nemo/message/model/ISecret;->isAutoCountDown(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->scheduleSecretMessageTimer()V

    .line 639
    .end local v2    # "secretMessage":Lcom/liquable/nemo/message/model/ISecret;
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 633
    .restart local v2    # "secretMessage":Lcom/liquable/nemo/message/model/ISecret;
    :cond_1
    sget-object v4, Lcom/liquable/nemo/message/model/ISecret$State;->EXPIRED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-interface {v2, v4}, Lcom/liquable/nemo/message/model/ISecret;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 634
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    goto :goto_0

    .line 641
    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v2    # "secretMessage":Lcom/liquable/nemo/message/model/ISecret;
    :cond_2
    return-object v0
.end method

.method private getLastAction()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->VOICE_RECORDER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    sget-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->VOICE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    .line 660
    :goto_0
    return-object v0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 648
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_STICKER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 649
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_TEXT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 650
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    sget-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->SECRET_PAINT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    goto :goto_0

    .line 654
    :cond_2
    sget-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->PAINT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    goto :goto_0

    .line 657
    :cond_3
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 658
    sget-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->SECRET_TEXT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    goto :goto_0

    .line 660
    :cond_4
    sget-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->TEXT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    goto :goto_0
.end method

.method private static getMessage(Landroid/content/Intent;)Landroid/util/Pair;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 329
    const-string/jumbo v4, "com.liquable.nemo.chat.MEDIA_MESSAGE_ID"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-object v3

    .line 332
    :cond_1
    const-string/jumbo v4, "com.liquable.nemo.chat.MEDIA_MESSAGE_ID"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "messageId":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 336
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v1

    .line 337
    .local v1, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    if-eqz v1, :cond_0

    .line 340
    const-string/jumbo v3, "com.liquable.nemo.chat.MEDIA_MESSAGE_FILE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 341
    .local v0, "mediaFile":Ljava/io/File;
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getTempChatGroupIconFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 664
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_icon_temp.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private gotoMainActivity()V
    .locals 3

    .prologue
    .line 672
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 673
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 674
    const-string/jumbo v1, "SHOW_CHATGROUP_LIST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivity(Landroid/content/Intent;)V

    .line 676
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->finish()V

    .line 677
    return-void
.end method

.method private initEmojiWidget()V
    .locals 7

    .prologue
    .line 719
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v2, Lcom/liquable/nemo/chat/ChattingActivity$7;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/ChattingActivity$7;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    new-instance v3, Lcom/liquable/nemo/chat/ChattingActivity$8;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/ChattingActivity$8;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    const/4 v5, 0x0

    sget-object v6, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->EMOJI:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->CUSTOM_STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v6, v4, v5

    .line 740
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 719
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/chat/WidgetManager;->initEmojiWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;Ljava/util/List;)V

    .line 745
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .line 746
    .local v0, "emojiWidget":Lcom/liquable/nemo/chat/widget/EmojiWidget;
    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$9;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$9;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setOnManageCustomStickerClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$10;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$10;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->setOnCustomStickerSendListener(Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;)V

    .line 776
    return-void
.end method

.method private initInputMessageWidget()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 779
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    const/4 v1, 0x0

    new-instance v4, Lcom/liquable/nemo/chat/ChattingActivity$11;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/chat/ChattingActivity$11;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    move-object v2, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/chat/WidgetManager;->initInputMessageWidget(ZLcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;Ljava/lang/Runnable;Landroid/view/View$OnClickListener;)V

    .line 785
    return-void
.end method

.method private initMediaWidget()V
    .locals 4

    .prologue
    .line 788
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$12;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$12;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 851
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "CHAT_GROUP_TOPIC"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot(Ljava/lang/String;)Z

    move-result v2

    .line 788
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->initMediaWidget(Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;Z)V

    .line 852
    return-void
.end method

.method private initPaintWidget()V
    .locals 4

    .prologue
    .line 855
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$13;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$13;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    new-instance v2, Lcom/liquable/nemo/chat/ChattingActivity$14;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/ChattingActivity$14;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    new-instance v3, Lcom/liquable/nemo/chat/ChattingActivity$15;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/ChattingActivity$15;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/WidgetManager;->initPaintWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;Ljava/lang/Runnable;)V

    .line 952
    return-void
.end method

.method private initVoiceRecordWindow()V
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$16;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$16;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->initVoiceRecordWindow(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;)V

    .line 986
    return-void
.end method

.method private initYoutubeWidget()V
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    :goto_0
    return-void

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$17;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$17;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->initYoutubeWidget(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCurrentChatGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupTopic"    # Ljava/lang/String;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isYoutubeFullScreen()Z
    .locals 3

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    .line 1025
    .local v0, "youtubeWidget":Lcom/liquable/nemo/chat/widget/YoutubeWidget;
    if-nez v0, :cond_0

    .line 1026
    const/4 v1, 0x0

    .line 1028
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->isPressedFullScreen()Z

    move-result v1

    goto :goto_0
.end method

.method private listMessages(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "numberOfMessage"    # I
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1034
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/chat/model/ChattingManager;->listMessagesByChatGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->filterExpiredSecretMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private loadMessages(Z)V
    .locals 2
    .param p1, "enteringSameGroup"    # Z

    .prologue
    .line 1040
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$18;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$18;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1106
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity$18;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1107
    return-void
.end method

.method private loadMore()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1110
    iput-boolean v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->isLoadingMessages:Z

    .line 1112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/ChattingAdapter;->getCount()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->listMessages(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1116
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v2

    invoke-virtual {v1, v4, v0, v2}, Lcom/liquable/nemo/chat/ChattingAdapter;->addAll(ILjava/util/List;Z)V

    .line 1117
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/ChattingAdapter;->offsetUnreadMessageStartIndex(I)V

    .line 1118
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->updateMessageFileTransferState()V

    .line 1119
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->updateIsFinishedLoading()V

    .line 1120
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    iget-boolean v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->finishedLoading:Z

    if-nez v1, :cond_0

    .line 1121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1120
    :goto_0
    invoke-virtual {v2, v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setSelection(I)V

    .line 1123
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {v1, v5}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setFastScrollEnabled(Z)V

    .line 1124
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    new-instance v2, Lcom/liquable/nemo/chat/ChattingActivity$19;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/ChattingActivity$19;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 1134
    iput-boolean v4, p0, Lcom/liquable/nemo/chat/ChattingActivity;->isLoadingMessages:Z

    .line 1135
    return-void

    .line 1122
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private markAllMessageAsRead()V
    .locals 2

    .prologue
    .line 1138
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$20;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ChattingActivity$20;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1146
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity$20;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1147
    return-void
.end method

.method private static openCamera(Landroid/app/Activity;Lcom/liquable/nemo/group/model/ChatGroup;Z)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "isSecret"    # Z

    .prologue
    .line 347
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p2, v1, v2, p1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->fromChat(Landroid/content/Context;ZZZLcom/liquable/nemo/group/model/ChatGroup;)Landroid/content/Intent;

    move-result-object v0

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 353
    return-void
.end method

.method private pasteToDrawingBoard(Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1997
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v4, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/paint/PaintWidget;

    .line 1998
    .local v1, "paintWidget":Lcom/liquable/nemo/chat/paint/PaintWidget;
    invoke-virtual {v1}, Lcom/liquable/nemo/chat/paint/PaintWidget;->isPastable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1999
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v4, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/WidgetManager;->openIfNotVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    move-object v3, p1

    .line 2001
    check-cast v3, Lcom/liquable/nemo/message/model/IMediaMessage;

    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 2002
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 2004
    .local v0, "assetFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2005
    const v3, 0x7f0d0357

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2016
    .end local v0    # "assetFile":Ljava/io/File;
    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_0
    :goto_0
    return-void

    .line 2009
    .restart local v0    # "assetFile":Ljava/io/File;
    .restart local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_1
    check-cast p1, Lcom/liquable/nemo/message/model/IMediaMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v1, p1, v0, p2}, Lcom/liquable/nemo/chat/paint/PaintWidget;->paste(Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    .line 2010
    .local v2, "paste":Z
    if-nez v2, :cond_0

    .line 2011
    const v3, 0x7f0d01c4

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2014
    .end local v0    # "assetFile":Ljava/io/File;
    .end local v2    # "paste":Z
    .restart local p1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_2
    const v3, 0x7f0d0542

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private playVoiceMessage(Ljava/io/File;Lcom/liquable/nemo/message/model/VoiceMessage;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/VoiceMessage;

    .prologue
    const/4 v2, 0x0

    .line 2019
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stop()V

    .line 2021
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->playingVoiceMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    invoke-virtual {p0, v0, v2, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 2024
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->playingVoiceMessageId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/VoiceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2025
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->playingVoiceMessageId:Ljava/lang/String;

    .line 2054
    :goto_0
    return-void

    .line 2029
    :cond_0
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/VoiceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->playingVoiceMessageId:Ljava/lang/String;

    .line 2030
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v2, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 2032
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$32;

    invoke-direct {v1, p0, p2}, Lcom/liquable/nemo/chat/ChattingActivity$32;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/message/model/VoiceMessage;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->startPlay(Ljava/io/File;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private popupShareToFacebookDialog(Ljava/io/File;)V
    .locals 6
    .param p1, "mediaFile"    # Ljava/io/File;

    .prologue
    .line 2079
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300a3

    const/4 v5, 0x0

    .line 2080
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2081
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0801c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2082
    .local v0, "imageView":Landroid/widget/ImageView;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2084
    const v3, 0x7f0801c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2086
    .local v1, "shareEditText":Landroid/widget/EditText;
    invoke-static {p1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2087
    const v3, 0x7f0d0357

    invoke-direct {p0, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->showToast(I)V

    .line 2107
    :goto_0
    return-void

    .line 2091
    :cond_0
    invoke-static {p0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2092
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d03ec

    .line 2093
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d00c5

    new-instance v5, Lcom/liquable/nemo/chat/ChattingActivity$34;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/ChattingActivity$34;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 2094
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d03b3

    new-instance v5, Lcom/liquable/nemo/chat/ChattingActivity$33;

    invoke-direct {v5, p0, p1, v1}, Lcom/liquable/nemo/chat/ChattingActivity$33;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/io/File;Landroid/widget/EditText;)V

    .line 2099
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2106
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private postFileToFacebook(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mediaFile"    # Ljava/io/File;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    .line 2110
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/facebook/FacebookSession;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    .line 2111
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->FACEBOOK_AUTH:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v1

    new-instance v2, Lcom/liquable/nemo/chat/ChattingActivity$35;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/liquable/nemo/chat/ChattingActivity$35;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/facebook/FacebookSession;->asyncOpenForPublish(ILcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;)V

    .line 2127
    return-void
.end method

.method private processEventQueue()V
    .locals 3

    .prologue
    .line 2130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->isReady:Z

    .line 2131
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->eventQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2132
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->eventQueue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2133
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->broadcastReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->processEvent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 2135
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private reduceImageCache()V
    .locals 3

    .prologue
    .line 2138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    const-wide v1, 0x3fe999999999999aL    # 0.8

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->clearCache(D)V

    .line 2142
    :cond_0
    return-void
.end method

.method private refreshFriendsInfo()V
    .locals 2

    .prologue
    .line 2145
    new-instance v0, Lcom/liquable/nemo/background/SyncAccountsTask;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/background/SyncAccountsTask;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/liquable/nemo/background/BackgroundIntentService;->run(Landroid/content/Context;Lcom/liquable/nemo/background/BackgroundRunnable;)V

    .line 2146
    return-void
.end method

.method private registReceiver(Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;

    .prologue
    .line 2149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->connectionStateBroadcastReceiverRegistered:Z

    .line 2150
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->connectionStateBroadcastReceiver:Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/liquable/nemo/chat/ChattingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2151
    return-void
.end method

.method private reloadMenu()V
    .locals 0

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->invalidateOptionsMenu()V

    .line 2169
    return-void
.end method

.method private saveCustomSticker(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 2172
    instance-of v3, p1, Lcom/liquable/nemo/message/model/CustomStickerMessage;

    if-nez v3, :cond_0

    .line 2190
    :goto_0
    return-void

    .line 2176
    :cond_0
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->allowCreateCustomSticker()Z

    move-result v0

    .line 2177
    .local v0, "allowCreateCustomSticker":Z
    if-nez v0, :cond_1

    .line 2178
    const v3, 0x7f0d01cd

    invoke-static {p0, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 2182
    check-cast v1, Lcom/liquable/nemo/message/model/CustomStickerMessage;

    .line 2183
    .local v1, "customStickerMessage":Lcom/liquable/nemo/message/model/CustomStickerMessage;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->save(Lcom/liquable/nemo/message/model/CustomStickerMessage;)Z

    move-result v2

    .line 2184
    .local v2, "saved":Z
    if-nez v2, :cond_2

    .line 2185
    const v3, 0x7f0d0145

    invoke-static {p0, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 2188
    :cond_2
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/analytics/IAnalyticsService$AddCustomStickerBy;->copy:Lcom/liquable/nemo/analytics/IAnalyticsService$AddCustomStickerBy;

    invoke-interface {v3, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->addCustomSticker(Lcom/liquable/nemo/analytics/IAnalyticsService$AddCustomStickerBy;)V

    .line 2189
    const v3, 0x7f0d045a

    invoke-static {p0, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private scrollToLast()V
    .locals 2

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setSelection(I)V

    .line 2217
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$38;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$38;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->post(Ljava/lang/Runnable;)Z

    .line 2223
    return-void
.end method

.method private scrollToUnreadIndex()V
    .locals 2

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingAdapter;->getUnreadMessageStartIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setSelection(I)V

    .line 2227
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$39;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$39;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->post(Ljava/lang/Runnable;)Z

    .line 2233
    return-void
.end method

.method private setLastAction()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2292
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getLastActionState()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    move-result-object v0

    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getLastAction()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2313
    :goto_0
    return-void

    .line 2296
    :cond_0
    sget-object v0, Lcom/liquable/nemo/chat/ChattingActivity$47;->$SwitchMap$com$liquable$nemo$group$model$ChatGroup$ChatGroupLastActionType:[I

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getLastActionState()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2298
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/chat/WidgetManager;->setIsSecret(Z)V

    goto :goto_0

    .line 2301
    :pswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/chat/WidgetManager;->setIsSecret(Z)V

    .line 2302
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_0

    .line 2305
    :pswitch_2
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->toggleVoiceRecorderWidget()V

    goto :goto_0

    .line 2308
    :pswitch_3
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_0

    .line 2296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setMsgLayoutBottomMargin(I)V
    .locals 2
    .param p1, "bottomMarginInDp"    # I

    .prologue
    .line 2316
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->msgLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2317
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {p0, p1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2318
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->msgLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2319
    return-void
.end method

.method private setRemainUnreadCount()V
    .locals 5

    .prologue
    .line 2322
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/widget/HomeDrawable;

    const v2, 0x7f02007c

    iget-wide v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->remainUnreadCount:J

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/liquable/nemo/widget/HomeDrawable;-><init>(Landroid/content/Context;IJ)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 2325
    return-void
.end method

.method private shouldPasteToDrawingBoard()V
    .locals 4

    .prologue
    .line 2328
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "MESSAGE_ID_TO_PAINT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2329
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "MESSAGE_ID_TO_PAINT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2330
    .local v1, "msgId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "MESSAGE_ID_TO_PAINT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2331
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2345
    .end local v1    # "msgId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2334
    .restart local v1    # "msgId":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    .line 2335
    .local v0, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    if-eqz v0, :cond_0

    .line 2339
    instance-of v2, v0, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v2, :cond_2

    .line 2340
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->editPhoto(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0

    .line 2342
    :cond_2
    const-string/jumbo v2, "image_viewer"

    invoke-direct {p0, v0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->pasteToDrawingBoard(Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCaseCustomStickerButton()V
    .locals 4

    .prologue
    .line 2348
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isShowCaseEmojiCustomStickerButton()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2361
    :goto_0
    return-void

    .line 2352
    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setShowCaseEmojiCustomStickerButton(Z)V

    .line 2354
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .line 2355
    .local v0, "emojiWidget":Lcom/liquable/nemo/chat/widget/EmojiWidget;
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->switchToCustomStickerGrid()V

    .line 2357
    const v1, 0x7f030165

    const v2, 0x7f0802f2

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v1, v2, p0, v3}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(IILandroid/app/Activity;F)Lcom/liquable/nemo/widget/ShowcaseView;

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "msgResId"    # I

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$42;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$42;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2370
    return-void
.end method

.method private stopVoiceMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2391
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stop()V

    .line 2393
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->playingVoiceMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    invoke-virtual {p0, v0, v2, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 2397
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->playingVoiceMessageId:Ljava/lang/String;

    .line 2399
    return-void
.end method

.method private unregistReceiver()V
    .locals 1

    .prologue
    .line 2420
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->connectionStateBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 2421
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->connectionStateBroadcastReceiver:Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2423
    :cond_0
    return-void
.end method

.method private updateIsFinishedLoading()V
    .locals 4

    .prologue
    .line 2477
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->getAllMessageCountByTopic(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    .line 2478
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingAdapter;->getCount()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->finishedLoading:Z

    .line 2479
    return-void

    .line 2478
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLastAction()V
    .locals 3

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getLastActionState()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    move-result-object v0

    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getLastAction()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2483
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getLastAction()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->updateLastAction(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;)V

    .line 2485
    :cond_0
    return-void
.end method

.method private updateMessageFileTransferState()V
    .locals 3

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    if-nez v0, :cond_1

    .line 2520
    :cond_0
    :goto_0
    return-void

    .line 2517
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    invoke-interface {v1}, Lcom/liquable/nemo/android/service/FileTransferInfo;->listDownloading()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    .line 2518
    invoke-interface {v2}, Lcom/liquable/nemo/android/service/FileTransferInfo;->listUploading()Ljava/util/List;

    move-result-object v2

    .line 2517
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingAdapter;->initItemTansferState(Ljava/util/List;Ljava/util/List;)V

    .line 2519
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    invoke-interface {v0}, Lcom/liquable/nemo/android/service/FileTransferInfo;->triggerBroadcastProgress()V

    goto :goto_0
.end method

.method private uploadImageToFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "facebookPublishRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;
    .param p2, "mediaFile"    # Ljava/io/File;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "caption"    # Ljava/lang/String;

    .prologue
    .line 2586
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$44;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/chat/ChattingActivity$44;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 2610
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity$44;->execute([Ljava/lang/Object;)V

    .line 2611
    return-void
.end method

.method private watchYoutube(Lcom/liquable/nemo/message/model/YoutubeMessage;)V
    .locals 2
    .param p1, "youtubeMessage"    # Lcom/liquable/nemo/message/model/YoutubeMessage;

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2626
    :goto_0
    return-void

    .line 2618
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->initYoutubeWidget()V

    .line 2619
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/WidgetManager;->watchYoutube(Lcom/liquable/nemo/message/model/YoutubeMessage;)V

    .line 2620
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$45;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$45;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private youtubeHideAnimation()V
    .locals 6

    .prologue
    .line 2629
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, -0x40f00000    # -0.5625f

    .line 2632
    invoke-static {p0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/16 v5, 0x30

    invoke-static {p0, v5}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 2629
    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 2633
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2634
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$46;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$46;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 2640
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 2641
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 2642
    return-void
.end method

.method private youtubeShowAnimation()V
    .locals 6

    .prologue
    .line 2654
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, -0x40f00000    # -0.5625f

    .line 2656
    invoke-static {p0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/16 v5, 0x30

    invoke-static {p0, v5}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 2654
    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 2658
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2659
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 2660
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->youtubeTranslateAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 2661
    return-void
.end method


# virtual methods
.method addMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSameChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->addMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 467
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/liquable/nemo/message/model/LikePictureMessage;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    .line 468
    invoke-virtual {v0}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 469
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->scrollToLast()V

    .line 471
    :cond_2
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->markAllMessageAsRead()V

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/status/view/ChatStatusView;->onAddMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 475
    return-void
.end method

.method protected beforeOnCreate()V
    .locals 2

    .prologue
    .line 479
    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->requestWindowFeature(J)V

    .line 480
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isAutoRotateInChattingActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->setRequestedOrientation(I)V

    .line 484
    :cond_0
    return-void
.end method

.method clearHistory()V
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->loadMessages(Z)V

    .line 561
    return-void
.end method

.method deleteMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 565
    return-void
.end method

.method public enqueueIfNotReady(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->isReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->eventQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->eventQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getWidgetManager()Lcom/liquable/nemo/chat/WidgetManager;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    return-object v0
.end method

.method public handlerCustomStickerThumbnailReadyEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    .line 681
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .line 682
    .local v0, "emojiWidget":Lcom/liquable/nemo/chat/widget/EmojiWidget;
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->updateCustomStickerThumbnailReady()V

    .line 683
    return-void
.end method

.method handlerStickerPackageTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    .line 686
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "packageCode":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/chat/ChattingActivity$47;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 697
    :goto_0
    return-void

    .line 689
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateStickerPackageTransferComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :pswitch_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateStickerPackageTransferFail(Ljava/lang/String;)V

    goto :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method handlerStickerTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    .line 700
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "stickerCode":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/chat/ChattingActivity$47;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 711
    :goto_0
    return-void

    .line 703
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateStickerTransferComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :pswitch_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateStickerTransferFail(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method increaseRemainUnreadCount()V
    .locals 4

    .prologue
    .line 714
    iget-wide v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->remainUnreadCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->remainUnreadCount:J

    .line 715
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->setRemainUnreadCount()V

    .line 716
    return-void
.end method

.method isMember(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-nez v0, :cond_0

    .line 1006
    const/4 v0, 0x0

    .line 1008
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/group/model/ChatGroup;->containsMember(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method isSameChatGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-nez v0, :cond_0

    .line 1013
    const/4 v0, 0x0

    .line 1015
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public isValid(Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 1020
    const/4 v0, 0x1

    return v0
.end method

.method moveMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSameChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 1152
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->addMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 1153
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setSelection(I)V

    .line 1155
    :cond_0
    return-void
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 1159
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->isYoutubeFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->turnOffFullScreen()V

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->toggleAnyVisibleWidget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->gotoMainActivity()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 1175
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1176
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isAutoRotateInChattingActivity()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->isYoutubeFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->setRequestedOrientation(I)V

    .line 1186
    :goto_0
    return-void

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/Wallpaper;->resetMatrix()V

    .line 1182
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupIconsBar:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->loadChatGroups(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 1183
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-static {p0}, Lcom/liquable/nemo/util/NemoUIs;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setMaxLines(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1190
    invoke-static {}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->getInstance()Lcom/liquable/nemo/status/view/WatchMessageDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->cancelDetect()V

    .line 1191
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    invoke-virtual {v0}, Lcom/liquable/nemo/status/view/ChatStatusView;->destroy()V

    .line 1194
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->unregistReceiver()V

    .line 1195
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    if-eqz v0, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->terminate()V

    .line 1199
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->doUnbindService()V

    .line 1200
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->onDestroy()V

    .line 1201
    return-void
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1207
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->FACEBOOK_AUTH:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1208
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-virtual {v1, p1, p2, p3}, Lcom/liquable/nemo/facebook/FacebookSession;->onActivityResult(IILandroid/content/Intent;)V

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/chat/ChattingRequestCode;->values()[Lcom/liquable/nemo/chat/ChattingRequestCode;

    move-result-object v1

    aget-object v8, v1, p1

    .line 1212
    .local v8, "code":Lcom/liquable/nemo/chat/ChattingRequestCode;
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->MANAGE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_2

    .line 1213
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->refreshCustomStickers()V

    .line 1216
    :cond_2
    if-eqz p2, :cond_0

    .line 1220
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v10

    .line 1221
    .local v10, "reloaded":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v10, :cond_3

    .line 1222
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->finish()V

    goto :goto_0

    .line 1225
    :cond_3
    iput-object v10, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 1226
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->ADD_MEMBER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_4

    .line 1227
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "SCROLL_TO_BOTTOM"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1228
    :cond_4
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->UPDATE_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_5

    .line 1229
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1230
    :cond_5
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->SHOW_GROUP_INFO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_6

    .line 1231
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "SCROLL_TO_BOTTOM"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1232
    :cond_6
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->UPDATE_CHAT_GROUP_ICON:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_7

    .line 1233
    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$21;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$21;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 1254
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity$21;->execute([Ljava/lang/Object;)V

    goto :goto_0

    .line 1255
    :cond_7
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-eq v8, v1, :cond_8

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-eq v8, v1, :cond_8

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->GET_LOCATION:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_c

    .line 1258
    :cond_8
    invoke-static {p3}, Lcom/liquable/nemo/share/SharablePhoto;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharablePhoto;

    move-result-object v11

    .line 1259
    .local v11, "sharable":Lcom/liquable/nemo/share/Sharable;
    if-nez v11, :cond_9

    .line 1260
    invoke-static {p3}, Lcom/liquable/nemo/share/SharableVideo;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharableVideo;

    move-result-object v11

    .line 1262
    :cond_9
    if-nez v11, :cond_a

    .line 1263
    invoke-static {p3}, Lcom/liquable/nemo/youtube/YoutubeVideo;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/youtube/YoutubeVideo;

    move-result-object v11

    .line 1265
    :cond_a
    if-nez v11, :cond_b

    .line 1266
    invoke-static {p3}, Lcom/liquable/nemo/map/SharableLocation;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/map/SharableLocation;

    move-result-object v11

    .line 1268
    :cond_b
    move-object v9, v11

    .line 1269
    .local v9, "finalSharable":Lcom/liquable/nemo/share/Sharable;
    if-eqz v11, :cond_0

    .line 1270
    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$22;

    invoke-direct {v1, p0, v9}, Lcom/liquable/nemo/chat/ChattingActivity$22;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/share/Sharable;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 1290
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity$22;->execute([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1292
    .end local v9    # "finalSharable":Lcom/liquable/nemo/share/Sharable;
    .end local v11    # "sharable":Lcom/liquable/nemo/share/Sharable;
    :cond_c
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_VIDEO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_d

    .line 1293
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1297
    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$23;

    invoke-direct {v1, p0, p3}, Lcom/liquable/nemo/chat/ChattingActivity$23;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Landroid/content/Intent;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 1326
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity$23;->execute([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1327
    :cond_d
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_AUDIO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_e

    .line 1328
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1331
    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$24;

    invoke-direct {v1, p0, p3}, Lcom/liquable/nemo/chat/ChattingActivity$24;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Landroid/content/Intent;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 1374
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity$24;->execute([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1375
    :cond_e
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->INTENT_SHARE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_f

    .line 1377
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->sharePaintInChattingActivity()V

    .line 1378
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->deleteTempPaint()V

    goto/16 :goto_0

    .line 1379
    :cond_f
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->PASTE_PICTURE_ON_SKETCH:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_10

    .line 1380
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->openIfNotVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 1385
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/paint/PaintWidget;

    const-string/jumbo v2, "cropped_pic"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/paint/PaintWidget;->pastePicture(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1386
    :cond_10
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->CHANGE_WALLPAPER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_11

    .line 1387
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->updateWallPaper(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto/16 :goto_0

    .line 1388
    :cond_11
    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->CREATE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    if-ne v8, v1, :cond_0

    .line 1389
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1390
    .local v7, "bundle":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ResultIntent;->getCustomStickerFile(Landroid/os/Bundle;)Ljava/io/File;

    move-result-object v4

    .line 1392
    .local v4, "file":Ljava/io/File;
    invoke-static {v7}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ResultIntent;->getAnimatedCustomStickerFile(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1394
    .local v5, "animatedFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {v7}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ResultIntent;->getSelectedCustomStickerEffect(Landroid/os/Bundle;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v6

    .line 1396
    .local v6, "selectedEffect":Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$25;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/chat/ChattingActivity$25;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Landroid/content/Context;ZLjava/io/File;Ljava/util/ArrayList;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)V

    .line 1420
    .local v0, "createTask":Lcom/liquable/nemo/util/RpcAsyncTask;, "Lcom/liquable/nemo/util/RpcAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 1426
    new-instance v5, Lcom/liquable/nemo/chat/ChattingActivityReceiver;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->broadcastReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver;

    .line 1428
    const v5, 0x7f030021

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->setContentView(I)V

    .line 1429
    const v5, 0x7f08007b

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1430
    .local v0, "activityRootView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/liquable/nemo/chat/ChattingActivity$26;

    invoke-direct {v6, p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity$26;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1447
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseFragmentActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 1449
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1450
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1451
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f03012f

    .line 1452
    invoke-virtual {v6, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    new-instance v8, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;

    invoke-direct {v8, v9, v9}, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;-><init>(II)V

    .line 1451
    invoke-virtual {v5, v6, v8}, Lcom/actionbarsherlock/app/ActionBar;->setCustomView(Landroid/view/View;Lcom/actionbarsherlock/app/ActionBar$LayoutParams;)V

    .line 1455
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    new-instance v6, Lcom/liquable/nemo/widget/HomeDrawable;

    const v8, 0x7f02007c

    const-wide/16 v9, 0x0

    invoke-direct {v6, p0, v8, v9, v10}, Lcom/liquable/nemo/widget/HomeDrawable;-><init>(Landroid/content/Context;IJ)V

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1457
    new-instance v6, Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    iget-object v8, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    const v5, 0x7f0802e3

    .line 1459
    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0, v8, v5}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/util/ImageLoader;Landroid/widget/LinearLayout;)V

    iput-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupIconsBar:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    .line 1461
    const v5, 0x7f08007e

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingActivityInput:Landroid/view/View;

    .line 1462
    const v5, 0x7f080084

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->msgLayout:Landroid/view/View;

    .line 1463
    new-instance v5, Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v8, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v5, v6, v8}, Lcom/liquable/nemo/chat/WidgetManager;-><init>(Landroid/view/View;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    .line 1464
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v6, Lcom/liquable/nemo/chat/ChattingActivity$27;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/ChattingActivity$27;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/chat/WidgetManager;->setOnWidgetOpenCloseListener(Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;)V

    .line 1519
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/chat/ChattingActivity;->getMessage(Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v4

    .line 1520
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;>;"
    if-eqz v4, :cond_2

    .line 1521
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/liquable/nemo/message/model/DomainMessage;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/io/File;

    invoke-static {p0, v5, v6}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)V

    .line 1526
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1528
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->handler:Landroid/os/Handler;

    .line 1530
    new-instance v5, Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/facebook/FacebookSession;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    .line 1532
    const v5, 0x7f080088

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/chat/ConnectionStateTextView;

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->connectionStateTextView:Lcom/liquable/nemo/chat/ConnectionStateTextView;

    .line 1533
    const v5, 0x7f080087

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->mediaMountStateTextView:Landroid/widget/TextView;

    .line 1534
    const v5, 0x7f080086

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->showMediaStateDetailBtn:Landroid/widget/ImageButton;

    .line 1536
    const v5, 0x7f08007c

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/widget/Wallpaper;

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    .line 1538
    const v5, 0x7f080089

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/status/view/ChatStatusView;

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    .line 1540
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_3

    .line 1541
    .local v2, "fullAnimation":Z
    :goto_1
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v5, v6, v2}, Lcom/liquable/nemo/status/view/ChatStatusView;->init(Lcom/liquable/nemo/util/ImageLoader;Z)V

    .line 1543
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->showMediaStateDetailBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/liquable/nemo/chat/ChattingActivity$28;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/ChattingActivity$28;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1569
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->checkMicAvailable()V

    .line 1571
    new-instance v5, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-direct {v5}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;-><init>()V

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    .line 1573
    new-instance v5, Lcom/liquable/nemo/chat/ChatGroupMenu;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/ChatGroupMenu;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

    .line 1575
    const v5, 0x7f080085

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/chat/ChattingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    iput-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    .line 1576
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    new-instance v6, Lcom/liquable/nemo/chat/ChattingActivity$29;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/ChattingActivity$29;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1600
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity;->onMessageListViewItemLongClick:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1601
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    new-instance v6, Lcom/liquable/nemo/chat/ChattingActivity$30;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/ChattingActivity$30;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1625
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->doBindService()V

    .line 1627
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1628
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.liquable.nemo.android.service.CONNECTION_EVENT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1629
    invoke-direct {p0, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->registReceiver(Landroid/content/IntentFilter;)V

    .line 1631
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->initEmojiWidget()V

    .line 1632
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->initVoiceRecordWindow()V

    .line 1633
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->initPaintWidget()V

    .line 1634
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->initInputMessageWidget()V

    .line 1635
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->initMediaWidget()V

    .line 1636
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->initYoutubeWidget()V

    .line 1637
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->updateMediaMountStateTextView()V

    .line 1639
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "CHAT_GROUP_TOPIC"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1640
    .local v1, "chatGroupTopic":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1641
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v5

    invoke-interface {v5}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enterRobotGroup()V

    .line 1643
    :cond_1
    return-void

    .line 1522
    .end local v1    # "chatGroupTopic":Ljava/lang/String;
    .end local v2    # "fullAnimation":Z
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ACTION_ENTER_STICKER_STHOP"

    invoke-static {v5, v6}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1523
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->enterShop()V

    goto/16 :goto_0

    :cond_3
    move v2, v7

    .line 1540
    goto/16 :goto_1
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 1648
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->isBroadcastChannel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1649
    :cond_0
    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 1655
    :goto_0
    sget-object v1, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v1}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1656
    const v1, 0x7f08035a

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 1657
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f08002e

    const/16 v4, 0x3e7

    const-string/jumbo v5, "20\u9023\u767c\uff01\uff01\uff01"

    .line 1658
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/actionbarsherlock/view/SubMenu;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    .line 1660
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1650
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->isRemovedByOwner()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1651
    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    goto :goto_0

    .line 1653
    :cond_3
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    goto :goto_0
.end method

.method protected onLoggedInResume()V
    .locals 1

    .prologue
    .line 1665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->enteringShop:Z

    .line 1666
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->onResume()V

    .line 1667
    return-void
.end method

.method protected onLoggedInStart()V
    .locals 3

    .prologue
    .line 1672
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->broadcastReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver;

    invoke-virtual {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->registerActiveReceiver(Landroid/content/Context;)V

    .line 1674
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "CHAT_GROUP_TOPIC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1675
    .local v0, "groupTopic":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->updateChatGroup(Ljava/lang/String;)V

    .line 1676
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-nez v1, :cond_0

    .line 1687
    :goto_0
    return-void

    .line 1679
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->setLastAction()V

    .line 1682
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupIconsBar:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->loadChatGroups(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 1684
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->shouldPasteToDrawingBoard()V

    .line 1686
    invoke-static {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->requestCurrentConnectionState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onMessageLongClick(Lcom/liquable/nemo/message/model/DomainMessage;)Z
    .locals 11
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 1690
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 1691
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v8

    .line 1690
    invoke-virtual {v7, p0, v8}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1693
    .local v4, "friendName":Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1695
    .local v5, "items":Ljava/util/Set;, "Ljava/util/Set<Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;>;"
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->DELETE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1696
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isCopyable()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v7}, Lcom/liquable/nemo/group/model/ChatGroup;->isBroadcastChannel()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1697
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->FORWARD:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1700
    :cond_0
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v7}, Lcom/liquable/nemo/group/model/ChatGroup;->isBroadcastChannel()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1701
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 1702
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/liquable/nemo/friend/model/Account;->isRobot(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_1

    sget-object v7, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 1703
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v8

    .line 1702
    invoke-virtual {v7, v8}, Lcom/liquable/nemo/friend/model/Account$FriendState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1704
    :cond_1
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->ADD_FRIEND:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1706
    :cond_2
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->REPLY:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1709
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isPastableToBoard()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1710
    instance-of v7, p1, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v7, :cond_a

    .line 1711
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->EDIT:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1717
    :cond_4
    :goto_0
    instance-of v7, p1, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v7, :cond_5

    .line 1718
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SHARE_FB:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1719
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SHARE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1720
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SAVE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1722
    :cond_5
    instance-of v7, p1, Lcom/liquable/nemo/message/model/CustomStickerMessage;

    if-eqz v7, :cond_6

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1723
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SAVE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1725
    :cond_6
    instance-of v7, p1, Lcom/liquable/nemo/message/model/TextMessage;

    if-eqz v7, :cond_7

    .line 1726
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->COPY:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1728
    :cond_7
    instance-of v7, p1, Lcom/liquable/nemo/message/model/LocationMessage;

    if-eqz v7, :cond_8

    .line 1729
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->COPY:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1732
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1733
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    .local v6, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->values()[Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_b

    aget-object v1, v8, v7

    .line 1735
    .local v1, "action":Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1736
    invoke-virtual {v1, p0, v4}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->getLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1737
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1734
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1713
    .end local v1    # "action":Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;>;"
    .end local v6    # "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->PASTE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1741
    .restart local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;>;"
    .restart local v6    # "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    invoke-static {p0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1742
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    new-instance v9, Lcom/liquable/nemo/chat/ChattingActivity$31;

    invoke-direct {v9, p0, v2, p1, v4}, Lcom/liquable/nemo/chat/ChattingActivity$31;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/util/List;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/String;)V

    invoke-virtual {v8, v7, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1854
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1855
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1856
    const/4 v7, 0x1

    return v7
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1861
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1862
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity;->setIntent(Landroid/content/Intent;)V

    .line 1863
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 1867
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f080366

    if-eq v2, v3, :cond_0

    .line 1868
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v2

    .line 1917
    :goto_0
    return v2

    .line 1871
    :cond_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1915
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 1873
    :sswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->gotoMainActivity()V

    .line 1917
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1876
    :sswitch_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-static {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->createIntent(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1879
    :sswitch_2
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChatGroupMenu;->aboutChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_1

    .line 1882
    :sswitch_3
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChatGroupMenu;->modifyChatGroupTitle(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_1

    .line 1885
    :sswitch_4
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getTempChatGroupIconFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/chat/ChatGroupMenu;->modifyChatGroupIcon(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/io/File;)V

    goto :goto_1

    .line 1888
    :sswitch_5
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChatGroupMenu;->addMemeber(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_1

    .line 1891
    :sswitch_6
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChatGroupMenu;->removeMemeber(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_1

    .line 1894
    :sswitch_7
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChatGroupMenu;->changeBackground(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_1

    .line 1897
    :sswitch_8
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChatGroupMenu;->muteChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_1

    .line 1900
    :sswitch_9
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChatGroupMenu;->clearMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_1

    .line 1903
    :sswitch_a
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChatGroupMenu;->exportMessages(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_1

    .line 1906
    :sswitch_b
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupMenu:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChatGroupMenu;->leaveAndDelete(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_1

    .line 1909
    :sswitch_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 1910
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v3, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1911
    .local v0, "content":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->sendWithText(Ljava/lang/String;)V

    .line 1909
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1871
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08002e -> :sswitch_c
        0x7f08035c -> :sswitch_1
        0x7f08035d -> :sswitch_2
        0x7f08035e -> :sswitch_3
        0x7f08035f -> :sswitch_4
        0x7f080360 -> :sswitch_5
        0x7f080361 -> :sswitch_6
        0x7f080362 -> :sswitch_7
        0x7f080363 -> :sswitch_8
        0x7f080364 -> :sswitch_9
        0x7f080365 -> :sswitch_a
        0x7f080366 -> :sswitch_b
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/16 v0, 0x1e

    .line 1922
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    if-eqz v1, :cond_0

    .line 1923
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingAdapter;->getCount()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 1925
    :goto_0
    iput v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messageCountOnScreen:I

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    if-eqz v0, :cond_1

    .line 1929
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->terminate()V

    .line 1931
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->VOICE_RECORDER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->onPause()V

    .line 1933
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->onPause()V

    .line 1934
    return-void

    .line 1923
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    .line 1925
    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const v3, 0x7f08035d

    const/4 v2, 0x1

    .line 1938
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isBroadcastChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1956
    :cond_0
    :goto_0
    return v2

    .line 1942
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isRemovedByOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1943
    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    .line 1947
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/model/ChatGroup;->amIOwner(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1948
    const v0, 0x7f080361

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1951
    :cond_3
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1952
    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1953
    const v0, 0x7f08035e

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1954
    const v0, 0x7f08035f

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method onReceiveChatGroupEvent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroupIconsBar:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->onReceiveChatGroupEvent(Landroid/content/Intent;)V

    .line 1961
    return-void
.end method

.method onReceivedStatus(Lcom/liquable/nemo/status/model/ReceivedStatus;)V
    .locals 2
    .param p1, "receivedStatus"    # Lcom/liquable/nemo/status/model/ReceivedStatus;

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/status/view/ChatStatusView;->onReceivedStatus(Lcom/liquable/nemo/status/model/ReceivedStatus;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 1965
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1969
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->updateUnfinishedMessage()V

    .line 1970
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->updateLastAction()V

    .line 1973
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->enteringShop:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/Wallpaper;->clear()V

    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->broadcastReceiver:Lcom/liquable/nemo/chat/ChattingActivityReceiver;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/chat/ChattingActivityReceiver;->unregisterActiveAction(Landroid/content/Context;)V

    .line 1977
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->setCurrentChatGroupTopic(Ljava/lang/String;)V

    .line 1979
    invoke-static {}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->getInstance()Lcom/liquable/nemo/status/view/WatchMessageDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->cancelDetect()V

    .line 1981
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->onStop()V

    .line 1982
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 1986
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragmentActivity;->onTrimMemory(I)V

    .line 1987
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 1988
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/ImageLoader;->clearCache()V

    .line 1994
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    .line 1990
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->clearCache(D)V

    goto :goto_0

    .line 1991
    :cond_2
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    const-wide v1, 0x3fd3333333333333L    # 0.3

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->clearCache(D)V

    goto :goto_0
.end method

.method playVoiceMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 2058
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->playingVoiceMessageId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2060
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2061
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->stopVoiceMessage()V

    .line 2076
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->playingVoiceMessageId:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2066
    const v2, 0x7f0d0512

    invoke-static {p0, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 2070
    :cond_2
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/VoiceMessage;

    .line 2073
    .local v1, "voiceMessage":Lcom/liquable/nemo/message/model/VoiceMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/VoiceMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 2074
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->playVoiceMessage(Ljava/io/File;Lcom/liquable/nemo/message/model/VoiceMessage;)V

    goto :goto_0
.end method

.method reloadChatGroupIconIfRequired()V
    .locals 3

    .prologue
    .line 2154
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    new-instance v2, Lcom/liquable/nemo/chat/ChattingActivity$36;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/ChattingActivity$36;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/ListViewUtils;->existInVisibleItems(Landroid/widget/ListView;Lcom/liquable/util/Predicate;)Z

    move-result v0

    .line 2161
    .local v0, "hasUpdateIconMessage":Z
    if-eqz v0, :cond_0

    .line 2162
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 2164
    :cond_0
    return-void
.end method

.method scheduleSecretMessageTimer()V
    .locals 4

    .prologue
    .line 2193
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->secretMessageTimerScheduled:Z

    if-eqz v0, :cond_0

    .line 2208
    :goto_0
    return-void

    .line 2196
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->secretMessageTimerScheduled:Z

    .line 2197
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$37;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ChattingActivity$37;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public sendWithSecretText(Ljava/lang/String;)V
    .locals 5
    .param p1, "chatContent"    # Ljava/lang/String;

    .prologue
    .line 2237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2267
    :goto_0
    return-void

    .line 2241
    :cond_0
    invoke-static {p1}, Lcom/liquable/nemo/chat/EmojiUtil;->extractEmojiCodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2242
    .local v1, "extractEmojiCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/util/Pref;->saveFavoriteEmoji(Ljava/util/List;)V

    .line 2243
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v4, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->refreshFavEmojis()V

    .line 2247
    :try_start_0
    invoke-static {p1}, Lcom/liquable/nemo/message/model/SecretTextMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/SecretTextMessage;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2254
    .local v2, "message":Lcom/liquable/nemo/message/model/SecretTextMessage;
    new-instance v3, Lcom/liquable/nemo/chat/ChattingActivity$40;

    invoke-direct {v3, p0, v2}, Lcom/liquable/nemo/chat/ChattingActivity$40;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/message/model/SecretTextMessage;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 2264
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/ChattingActivity$40;->execute([Ljava/lang/Object;)V

    .line 2266
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v4, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/WidgetManager;->closeIfVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_0

    .line 2248
    .end local v2    # "message":Lcom/liquable/nemo/message/model/SecretTextMessage;
    :catch_0
    move-exception v0

    .line 2249
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 2250
    const v3, 0x7f0d01c6

    invoke-static {p0, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public sendWithText(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatContent"    # Ljava/lang/String;

    .prologue
    .line 2271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2289
    :goto_0
    return-void

    .line 2274
    :cond_0
    invoke-static {p1}, Lcom/liquable/nemo/chat/EmojiUtil;->extractEmojiCodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2275
    .local v0, "extractEmojiCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/Pref;->saveFavoriteEmoji(Ljava/util/List;)V

    .line 2276
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->refreshFavEmojis()V

    .line 2277
    new-instance v1, Lcom/liquable/nemo/chat/ChattingActivity$41;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$41;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 2286
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity$41;->execute([Ljava/lang/Object;)V

    .line 2288
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->closeIfVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 2376
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ".HtcLinkifyDispatcherActivity"

    .line 2377
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2378
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2380
    :cond_0
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2388
    :goto_0
    return-void

    .line 2381
    :catch_0
    move-exception v0

    .line 2386
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/liquable/nemo/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public toggleVoiceRecorderWidget()V
    .locals 3

    .prologue
    .line 2402
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->hasMicrophoneFeature:Z

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->VOICE_RECORDER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 2409
    :goto_0
    return-void

    .line 2405
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d01c0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2407
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method transferComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 1
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->transferComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2413
    return-void
.end method

.method transferFailed(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 1
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->transferFailed(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 2417
    return-void
.end method

.method updateChatGroup(Ljava/lang/String;)V
    .locals 7
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2426
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 2427
    .local v1, "newChatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-nez v1, :cond_0

    .line 2428
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->onBackPressed()V

    .line 2429
    const v2, 0x7f0d049d

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2469
    :goto_0
    return-void

    .line 2432
    :cond_0
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->isCurrentChatGroup(Ljava/lang/String;)Z

    move-result v0

    .line 2434
    .local v0, "enteringSameGroup":Z
    iput-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 2435
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v4, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnfinishedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setUnfinishedMessage(Ljava/lang/String;)V

    .line 2436
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->setCurrentChatGroupTopic(Ljava/lang/String;)V

    .line 2438
    if-nez v0, :cond_1

    .line 2439
    new-instance v2, Lcom/liquable/nemo/chat/ChattingAdapter;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->onMsgSettinBtnClick:Landroid/view/View$OnClickListener;

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/liquable/nemo/chat/ChattingAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    .line 2443
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2444
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setFastScrollEnabled(Z)V

    .line 2445
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->reloadMenu()V

    .line 2446
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v2}, Lcom/liquable/nemo/widget/Wallpaper;->clear()V

    .line 2449
    :cond_1
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->loadMessages(Z)V

    .line 2451
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/NotifyManager;->cancelNewMsgNotification()V

    .line 2452
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/android/NotifyManager;->cancelMessageSendFailedNotification(Ljava/lang/String;)V

    .line 2454
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatStatusView:Lcom/liquable/nemo/status/view/ChatStatusView;

    invoke-virtual {v2}, Lcom/liquable/nemo/status/view/ChatStatusView;->reset()V

    .line 2455
    invoke-static {}, Lcom/liquable/nemo/status/view/EnterGroupStatusSender;->getInstance()Lcom/liquable/nemo/status/view/EnterGroupStatusSender;

    move-result-object v2

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/status/view/EnterGroupStatusSender;->send(Ljava/lang/String;)V

    .line 2457
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "CHAT_GROUP_TOPIC"

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v5}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2459
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/widget/Wallpaper;->loadChatGroupBackground(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 2461
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->isBroadcastChannel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2462
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingActivityInput:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2463
    invoke-direct {p0, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->setMsgLayoutBottomMargin(I)V

    goto/16 :goto_0

    .line 2465
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingActivityInput:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2466
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v4, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->MEDIA:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/chat/WidgetManager;->isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x30

    :goto_1
    invoke-direct {p0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->setMsgLayoutBottomMargin(I)V

    goto/16 :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method updateHistoryIcon(Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V
    .locals 2
    .param p1, "updateGroupIconMessage"    # Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    new-instance v1, Lcom/liquable/nemo/group/UpdateGroupIcon;

    invoke-direct {v1, p1}, Lcom/liquable/nemo/group/UpdateGroupIcon;-><init>(Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 2473
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->reloadChatGroupIconIfRequired()V

    .line 2474
    return-void
.end method

.method updateMediaMountStateTextView()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2488
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->isMediaMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->showMediaStateDetailBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2490
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->mediaMountStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2491
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->checkSDCardAvailableSize()V

    .line 2498
    :goto_0
    return-void

    .line 2493
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->showMediaStateDetailBtn:Landroid/widget/ImageButton;

    const-string/jumbo v1, "UNMOUNT"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 2494
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->showMediaStateDetailBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2495
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->mediaMountStateTextView:Landroid/widget/TextView;

    const v1, 0x7f0d0540

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2496
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->mediaMountStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method updateMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 2501
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSameChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->replaceItem(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 2505
    :cond_0
    instance-of v0, p1, Lcom/liquable/nemo/message/model/ISecret;

    if-eqz v0, :cond_1

    .line 2506
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->scheduleSecretMessageTimer()V

    .line 2507
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2508
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChattingActivity;->scrollToLast()V

    .line 2511
    :cond_1
    return-void
.end method

.method updateRemainUnreadCount()V
    .locals 2

    .prologue
    .line 2523
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$43;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ChattingActivity$43;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 2534
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity$43;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2535
    return-void
.end method

.method updateTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V
    .locals 1
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "progress"    # I

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V

    .line 2539
    return-void
.end method

.method updateUnfinishedMessage()V
    .locals 4

    .prologue
    .line 2542
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2543
    .local v0, "unfinishedMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v1, :cond_0

    .line 2544
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2545
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->updateUnfinishedMessage(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;)V

    .line 2550
    :cond_0
    :goto_0
    return-void

    .line 2547
    :cond_1
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->updateUnfinishedMessage(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateUserIcon(Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 2553
    const/4 v0, 0x0

    .line 2554
    .local v0, "accountIcon":Lcom/liquable/nemo/util/LoadableImage;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account;->isRobot(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2555
    invoke-static {}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->createRobot()Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v0

    .line 2563
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2564
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 2565
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    new-instance v3, Lcom/liquable/nemo/message/view/AvatarIcon;

    invoke-direct {v3, v0}, Lcom/liquable/nemo/message/view/AvatarIcon;-><init>(Lcom/liquable/nemo/util/LoadableImage;)V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 2567
    :cond_1
    return-void

    .line 2557
    :cond_2
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    .line 2558
    .local v1, "found":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v1, :cond_0

    .line 2559
    invoke-static {v1}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v0

    goto :goto_0
.end method

.method updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/VoiceMessage;
    .param p2, "isPlaying"    # Z
    .param p3, "isPreparing"    # Z

    .prologue
    .line 2572
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/VoiceMessage;->isSameChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 2575
    :cond_0
    return-void
.end method

.method public updateWallPaper(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/Wallpaper;->clear()V

    .line 2579
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/widget/Wallpaper;->loadChatGroupBackground(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 2580
    return-void
.end method

.method public youtubeIsPlaying(Lcom/liquable/nemo/message/model/YoutubeMessage;)Z
    .locals 3
    .param p1, "youtubeMessage"    # Lcom/liquable/nemo/message/model/YoutubeMessage;

    .prologue
    .line 2645
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    .line 2646
    .local v0, "youtubeWidget":Lcom/liquable/nemo/chat/widget/YoutubeWidget;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2647
    :cond_0
    const/4 v1, 0x0

    .line 2650
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->isPlaying(Lcom/liquable/nemo/message/model/YoutubeMessage;)Z

    move-result v1

    goto :goto_0
.end method
