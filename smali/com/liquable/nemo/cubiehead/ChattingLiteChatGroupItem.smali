.class public Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
.super Ljava/lang/Object;
.source "ChattingLiteChatGroupItem.java"


# instance fields
.field private chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field private chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

.field private iconImageView:Landroid/widget/ImageView;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private rootView:Landroid/view/View;

.field private titleView:Landroid/widget/TextView;

.field private unreadCountTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p3, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 37
    iput-object p3, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030131

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->rootView:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->rootView:Landroid/view/View;

    const v1, 0x7f0802ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->unreadCountTextView:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->rootView:Landroid/view/View;

    const v1, 0x7f0802ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->titleView:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->rootView:Landroid/view/View;

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->iconImageView:Landroid/widget/ImageView;

    .line 44
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->updateIcon()V

    .line 45
    new-instance v0, Lcom/liquable/nemo/chat/ChattingAdapter;

    new-instance v1, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$1;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V

    new-instance v2, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$2;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/liquable/nemo/chat/ChattingAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method private updateIcon()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->iconImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-static {v2}, Lcom/liquable/nemo/group/ChatGroupIconFactory;->create(Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 151
    return-void
.end method


# virtual methods
.method addMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->addMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 58
    return-void
.end method

.method deleteMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 63
    return-void
.end method

.method getAdapter()Lcom/liquable/nemo/chat/ChattingAdapter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    return-object v0
.end method

.method getChatGroup()Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public insertAllMessages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->insertAllMessages(Ljava/util/List;)V

    .line 80
    return-void
.end method

.method moveMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 84
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->addMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 85
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 89
    return-void
.end method

.method replaceMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->replaceItem(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 93
    return-void
.end method

.method public resetIcon()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-static {v1}, Lcom/liquable/nemo/group/ChatGroupIconFactory;->create(Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 97
    invoke-direct {p0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->updateIcon()V

    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method

.method public retrieveAndUpdateChatGroupUnreadCount()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$3;-><init>(Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 116
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method

.method setOnIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->rootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->rootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 125
    return-void
.end method

.method public transferComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 1
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->transferComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 129
    return-void
.end method

.method public transferFailed(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 1
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->transferFailed(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V

    .line 133
    return-void
.end method

.method public updateChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 2
    .param p1, "refreshed"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public updateChatGroupUnreadCount(J)V
    .locals 3
    .param p1, "count"    # J

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->unreadCountTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->unreadCountTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->unreadCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateStickerPackageTransferComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateStickerPackageTransferComplete(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public updateStickerPackageTransferFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateStickerPackageTransferFail(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public updateStickerTransferComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "stickerCode"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateStickerTransferComplete(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public updateStickerTransferFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "stickerCode"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateStickerTransferFail(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public updateTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V
    .locals 1
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "progress"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V

    .line 171
    return-void
.end method

.method public updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/VoiceMessage;
    .param p2, "isPlaying"    # Z
    .param p3, "isPreparing"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 177
    return-void
.end method
