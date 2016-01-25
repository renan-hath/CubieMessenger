.class public abstract Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMessageView;
.source "AbstractMediaMessageSelfView.java"


# instance fields
.field private bubble:Landroid/widget/RelativeLayout;

.field private createTime:Landroid/widget/TextView;

.field private final createTimeFormat:Ljava/text/SimpleDateFormat;

.field private final darkMode:Z

.field private pictureMsgTextView:Landroid/widget/TextView;

.field private reUploadBtn:Landroid/widget/ImageButton;

.field private sidebarBubble:Landroid/widget/RelativeLayout;

.field private stopUploadBtn:Landroid/widget/ImageButton;

.field private ticker:Landroid/widget/TextView;

.field private tickerContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;-><init>(Landroid/content/Context;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "darkMode"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMessageView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->createTimeFormat:Ljava/text/SimpleDateFormat;

    .line 52
    iput-boolean p2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->darkMode:Z

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private updateMessageTickAndCreateTime(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->tickerContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->ticker:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->isSystemAck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReadCount()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->tickerContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReadCount()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->ticker:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getReadCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->ticker:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->createTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->createTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method private updatePendingView(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->bubble:Landroid/widget/RelativeLayout;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method private updateState(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .prologue
    .line 248
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->isSystemAck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getReadCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->updateCompleteView(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 268
    :goto_0
    return-void

    .line 253
    :cond_1
    sget-object v0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$4;->$SwitchMap$com$liquable$nemo$message$model$AbstractMediaMessage$TransferState:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getTransferState()Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 255
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->updatePendingView(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->updateUploadingView(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    goto :goto_0

    .line 261
    :pswitch_2
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/model/ChattingManager;->isSending(Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->updateUploadingView(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->updatePendingView(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0

    .line 253
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
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300ed

    invoke-virtual {v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    const v2, 0x7f080321

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->ticker:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->ticker:Landroid/widget/TextView;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 64
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    int-to-float v3, v3

    .line 63
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 66
    const v2, 0x7f080322

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->createTime:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->createTime:Landroid/widget/TextView;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 68
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    int-to-float v3, v3

    .line 67
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    const v2, 0x7f080284

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->tickerContainer:Landroid/view/View;

    .line 70
    const v2, 0x7f080277

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    .line 71
    const v2, 0x7f080278

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    .line 72
    const v2, 0x7f080279

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->sidebarBubble:Landroid/widget/RelativeLayout;

    .line 74
    const v2, 0x7f080273

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->bubble:Landroid/widget/RelativeLayout;

    .line 76
    iget-boolean v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->darkMode:Z

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->bubble:Landroid/widget/RelativeLayout;

    const v3, 0x7f020213

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 81
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 83
    .local v0, "chattingManager":Lcom/liquable/nemo/chat/model/ChattingManager;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->bubble:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;-><init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;Lcom/liquable/nemo/chat/model/ChattingManager;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$2;-><init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;Lcom/liquable/nemo/chat/model/ChattingManager;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$3;

    invoke-direct {v3, p0, v0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$3;-><init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;Lcom/liquable/nemo/chat/model/ChattingManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->bubble:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->initBubbleBody(Landroid/view/ViewGroup;)V

    .line 166
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->sidebarBubble:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->initSidebarBubbleBody(Landroid/widget/RelativeLayout;)V

    .line 167
    return-void
.end method

.method protected initSidebarBubbleBody(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "sidebarBubbleRoot"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 169
    return-void
.end method

.method protected onThumbnailClicked(Landroid/content/Context;Lcom/liquable/nemo/message/model/AbstractMediaMessage;Ljava/io/File;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaMessage"    # Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    .param p3, "mediaFile"    # Ljava/io/File;

    .prologue
    .line 174
    invoke-static {p1, p2, p3}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)V

    .line 175
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

    .line 180
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->bubble:Landroid/widget/RelativeLayout;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method updateMessageBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 192
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .line 193
    .local v0, "mediaMessage":Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 194
    invoke-direct {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->updateMessageTickAndCreateTime(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 195
    invoke-direct {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->updateState(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    .line 196
    return-void
.end method

.method protected final updatePictureMsgTextView(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pictureMsgText"    # Ljava/lang/String;
    .param p2, "secretMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->pictureMsgTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 226
    const v0, 0x7f080274

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->pictureMsgTextView:Landroid/widget/TextView;

    .line 229
    :cond_0
    if-eqz p2, :cond_1

    .line 230
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->pictureMsgTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->pictureMsgTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 237
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->pictureMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->pictureMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :goto_1
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->pictureMsgTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->pictureMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->pictureMsgTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->pictureMsgTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public updateUploadingView(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->bubble:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 278
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 279
    return-void
.end method
