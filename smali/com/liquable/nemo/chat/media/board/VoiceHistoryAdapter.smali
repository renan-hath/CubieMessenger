.class public Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;
.super Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;
.source "VoiceHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter",
        "<",
        "Lcom/liquable/nemo/message/model/VoiceMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final timeFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field final dateTimeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;->timeFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 2
    .param p1, "activity"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)V

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;->dateTimeFormat:Ljava/text/SimpleDateFormat;

    .line 28
    return-void
.end method


# virtual methods
.method protected getMediaView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "focusable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 41
    if-nez p2, :cond_1

    .line 42
    iget-object v4, p0, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300e1

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 43
    new-instance v3, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$1;)V

    .line 44
    .local v3, "viewHolder":Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;
    const v4, 0x7f080231

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;->linearLayout:Landroid/view/View;

    .line 45
    const v4, 0x7f080260

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;->voiceDurationTextView:Landroid/widget/TextView;

    .line 46
    const v4, 0x7f08025e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;->voiceTitle:Landroid/widget/TextView;

    .line 47
    if-eqz p4, :cond_0

    .line 48
    iget-object v4, v3, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;->linearLayout:Landroid/view/View;

    new-instance v5, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$1;-><init>(Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    invoke-virtual {p0, p1, v6}, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;->getMediaMessage(II)Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    .line 66
    .local v0, "message":Lcom/liquable/nemo/message/model/VoiceMessage;
    if-nez v0, :cond_2

    .line 67
    iget-object v4, v3, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;->voiceTitle:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_1
    return-object p2

    .line 61
    .end local v0    # "message":Lcom/liquable/nemo/message/model/VoiceMessage;
    .end local v3    # "viewHolder":Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;
    goto :goto_0

    .line 70
    .restart local v0    # "message":Lcom/liquable/nemo/message/model/VoiceMessage;
    :cond_2
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getDuration()J

    move-result-wide v1

    .line 71
    .local v1, "seconds":J
    iget-object v4, v3, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;->voiceDurationTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, v3, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;->voiceTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;->dateTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, v3, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;->linearLayout:Landroid/view/View;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/VoiceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getMessageType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/liquable/nemo/message/model/VoiceMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const-class v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    return-object v0
.end method

.method protected onMediaClicked(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgUid"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playVoiceMessage(Ljava/lang/String;)V

    .line 83
    return-void
.end method
