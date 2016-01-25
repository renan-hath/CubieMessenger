.class public abstract Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMessageView;
.source "AbstractMediaMessageOtherView.java"


# instance fields
.field private bubble:Landroid/widget/RelativeLayout;

.field private createTime:Landroid/widget/TextView;

.field private final createTimeFormat:Ljava/text/SimpleDateFormat;

.field private downloadBtn:Landroid/widget/ImageButton;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final isOneToOne:Z

.field private sender:Landroid/widget/TextView;

.field private senderIcon:Landroid/widget/ImageView;

.field private stopDownloadBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMessageView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->createTimeFormat:Ljava/text/SimpleDateFormat;

    .line 47
    iput-object p2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 48
    iput-boolean p3, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->isOneToOne:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;
    .param p1, "x1"    # Lcom/liquable/nemo/chat/model/ChattingManager;
    .param p2, "x2"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadMedia(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/message/model/IMediaMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private downloadMedia(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 0
    .param p1, "chattingManager"    # Lcom/liquable/nemo/chat/model/ChattingManager;
    .param p2, "mediaMessage"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 52
    invoke-virtual {p1, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->updateDownloadingView(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 54
    return-void
.end method

.method private updatePendingView(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->bubble:Landroid/widget/RelativeLayout;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method private updateState(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 195
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 196
    .local v1, "mainFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->updateCompleteView(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 200
    :cond_0
    sget-object v2, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$4;->$SwitchMap$com$liquable$nemo$message$model$AbstractMediaMessage$TransferState:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getTransferState()Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 202
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->updatePendingView(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->updateDownloadingView(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->updateCompleteView(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method abstract initBubbleBody(Landroid/view/ViewGroup;)V
.end method

.method public final initMessageBody(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x2

    .line 60
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300ec

    invoke-virtual {v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    const v2, 0x7f080264

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->senderIcon:Landroid/widget/ImageView;

    .line 63
    const v2, 0x7f080265

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->sender:Landroid/widget/TextView;

    .line 64
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->sender:Landroid/widget/TextView;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 65
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    int-to-float v3, v3

    .line 64
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    const v2, 0x7f080275

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    .line 68
    const v2, 0x7f080276

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    .line 69
    const v2, 0x7f080322

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->createTime:Landroid/widget/TextView;

    .line 70
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->createTime:Landroid/widget/TextView;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 71
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    int-to-float v3, v3

    .line 70
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    const v2, 0x7f080273

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->bubble:Landroid/widget/RelativeLayout;

    .line 75
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 76
    .local v0, "chattingManager":Lcom/liquable/nemo/chat/model/ChattingManager;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->bubble:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;-><init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;Lcom/liquable/nemo/chat/model/ChattingManager;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$2;

    invoke-direct {v3, p0, v0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$2;-><init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;Lcom/liquable/nemo/chat/model/ChattingManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$3;

    invoke-direct {v3, p0, v0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$3;-><init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;Lcom/liquable/nemo/chat/model/ChattingManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->bubble:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->initBubbleBody(Landroid/view/ViewGroup;)V

    .line 132
    return-void
.end method

.method protected onThumbnailClicked(Landroid/content/Context;Lcom/liquable/nemo/message/model/AbstractMediaMessage;Ljava/io/File;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaMessage"    # Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    .param p3, "mediaFile"    # Ljava/io/File;

    .prologue
    .line 137
    invoke-static {p1, p2, p3}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)V

    .line 138
    return-void
.end method

.method abstract updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
.end method

.method public updateCompleteView(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->bubble:Landroid/widget/RelativeLayout;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public updateDownloadingView(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->bubble:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->stopDownloadBtn:Landroid/widget/ImageButton;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method updateMessageBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 166
    move-object v1, p1

    check-cast v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .line 168
    .local v1, "mediaMessage":Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->sender:Landroid/widget/TextView;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/friend/model/Account;->isRobot(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->senderIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/liquable/nemo/message/view/AvatarIcon;

    invoke-static {}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->createRobot()Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/liquable/nemo/message/view/AvatarIcon;-><init>(Lcom/liquable/nemo/util/LoadableImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 177
    :goto_0
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 178
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->createTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->createTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-direct {p0, v1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->updateState(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    .line 180
    return-void

    .line 173
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 174
    .local v0, "friend":Lcom/liquable/nemo/friend/model/Account;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->senderIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/liquable/nemo/message/view/AvatarIcon;

    invoke-static {v0}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/liquable/nemo/message/view/AvatarIcon;-><init>(Lcom/liquable/nemo/util/LoadableImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0
.end method
