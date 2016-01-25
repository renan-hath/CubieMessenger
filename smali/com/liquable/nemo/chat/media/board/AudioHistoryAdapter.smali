.class public Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;
.super Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;
.source "AudioHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter",
        "<",
        "Lcom/liquable/nemo/message/model/AudioMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "activity"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getMediaView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "focusable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 42
    if-nez p2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300e0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 44
    new-instance v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$1;)V

    .line 45
    .local v1, "viewHolder":Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;
    const v2, 0x7f080231

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    .line 46
    const v2, 0x7f08025d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 47
    const v2, 0x7f08025e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->audioTitle:Landroid/widget/TextView;

    .line 48
    const v2, 0x7f08025f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    .line 49
    if-eqz p4, :cond_0

    .line 50
    iget-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$1;-><init>(Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    invoke-virtual {p0, p1, v4}, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;->getMediaMessage(II)Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/AudioMessage;

    .line 68
    .local v0, "message":Lcom/liquable/nemo/message/model/AudioMessage;
    if-nez v0, :cond_2

    .line 69
    iget-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    const v3, 0x7f0203aa

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->audioTitle:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 84
    :goto_1
    return-object p2

    .line 63
    .end local v0    # "message":Lcom/liquable/nemo/message/model/AudioMessage;
    .end local v1    # "viewHolder":Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;
    goto :goto_0

    .line 74
    .restart local v0    # "message":Lcom/liquable/nemo/message/model/AudioMessage;
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    new-instance v4, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;

    iget-object v5, p0, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    const/4 v6, 0x1

    .line 75
    invoke-virtual {v0, v6}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v6

    const v7, 0x7f0204ab

    const/16 v8, 0x28

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;-><init>(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;II)V

    .line 74
    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 78
    iget-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->audioTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AudioMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v1, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AudioMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getMessageType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/liquable/nemo/message/model/AudioMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const-class v0, Lcom/liquable/nemo/message/model/AudioMessage;

    return-object v0
.end method

.method protected onMediaClicked(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgUid"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    const-class v2, Lcom/liquable/nemo/chat/AudioPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "MSG_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method
