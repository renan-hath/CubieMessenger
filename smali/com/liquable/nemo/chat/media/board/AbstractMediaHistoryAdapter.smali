.class public abstract Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "AbstractMediaHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/liquable/nemo/message/model/AbstractMediaMessage;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected final activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

.field protected final columnCount:I

.field protected final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field protected final layoutInflater:Landroid/view/LayoutInflater;

.field private messageCountInMessageTable:I

.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private monthLines:I

.field private otherLines:I

.field private picInThisMonth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private picInThisYear:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private picOther:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private state:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

.field private yearLines:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;ILcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "activity"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;
    .param p2, "columnCount"    # I
    .param p3, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 45
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->messages:Ljava/util/List;

    .line 40
    sget-object v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->MESSAGES:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->state:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    .line 46
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->activity:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .line 47
    iput p2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->columnCount:I

    .line 48
    iput-object p3, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 50
    return-void
.end method

.method private getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 167
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    if-nez p2, :cond_1

    .line 168
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030117

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    .local v0, "titleView":Landroid/widget/TextView;
    move-object p2, v0

    .line 174
    :goto_0
    if-nez p1, :cond_2

    .line 175
    const v1, 0x7f0d02ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :cond_0
    :goto_1
    return-object p2

    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_1
    move-object v0, p2

    .line 171
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "titleView":Landroid/widget/TextView;
    goto :goto_0

    .line 176
    :cond_2
    iget v1, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_3

    .line 177
    const v1, 0x7f0d02f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 178
    :cond_3
    iget v1, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->yearLines:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_0

    .line 179
    const v1, 0x7f0d03b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private final nextState()V
    .locals 2

    .prologue
    .line 205
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->state:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    sget-object v1, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->MESSAGES:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    if-ne v0, v1, :cond_1

    .line 206
    sget-object v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->ARCHIVED:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->state:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    .line 207
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->messageCountInMessageTable:I

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->state:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    sget-object v1, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->ARCHIVED:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    if-ne v0, v1, :cond_0

    .line 209
    sget-object v0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->DONE:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->state:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 55
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->messages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x32

    if-ge v2, v5, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->nextState()V

    .line 59
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisMonth:Ljava/util/List;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisYear:Ljava/util/List;

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picOther:Ljava/util/List;

    .line 63
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .line 64
    .local v0, "message":Lcom/liquable/nemo/message/model/AbstractMediaMessage;, "TT;"
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->canBeDisplayed(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v1

    .line 69
    .local v1, "receiveTime":Ljava/util/Date;
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {v5, v6, v7, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 71
    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 69
    invoke-virtual {v1, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    iget-object v5, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisMonth:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_2
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {v5, v6, v4, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 75
    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 73
    invoke-virtual {v1, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    iget-object v5, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisYear:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_3
    iget-object v5, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picOther:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v0    # "message":Lcom/liquable/nemo/message/model/AbstractMediaMessage;, "TT;"
    .end local v1    # "receiveTime":Ljava/util/Date;
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisMonth:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v5, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->columnCount:I

    div-int v5, v2, v5

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisMonth:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v6, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->columnCount:I

    rem-int/2addr v2, v6

    if-lez v2, :cond_5

    move v2, v3

    :goto_1
    add-int/2addr v2, v5

    iput v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    .line 85
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisYear:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v5, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->columnCount:I

    div-int v5, v2, v5

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisYear:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v6, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->columnCount:I

    rem-int/2addr v2, v6

    if-lez v2, :cond_6

    move v2, v3

    :goto_2
    add-int/2addr v2, v5

    iput v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->yearLines:I

    .line 88
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picOther:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v5, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->columnCount:I

    div-int/2addr v2, v5

    iget-object v5, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picOther:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->columnCount:I

    rem-int/2addr v5, v6

    if-lez v5, :cond_7

    :goto_3
    add-int/2addr v2, v3

    iput v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->otherLines:I

    .line 89
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->notifyDataSetChanged()V

    .line 91
    return-void

    :cond_5
    move v2, v4

    .line 82
    goto :goto_1

    :cond_6
    move v2, v4

    .line 85
    goto :goto_2

    :cond_7
    move v3, v4

    .line 88
    goto :goto_3
.end method

.method protected canBeDisplayed(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    .local p1, "message":Lcom/liquable/nemo/message/model/AbstractMediaMessage;, "TT;"
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 95
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    if-nez v0, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 98
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 103
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    iget v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    iget v1, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->yearLines:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->otherLines:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 113
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    if-gt p1, v2, :cond_2

    move v0, v1

    .line 121
    goto :goto_0

    .line 122
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    add-int/lit8 v2, v2, 0x1

    if-eq p1, v2, :cond_0

    .line 124
    iget v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->yearLines:I

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_3

    move v0, v1

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    iget v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->yearLines:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-eq p1, v2, :cond_0

    move v0, v1

    .line 129
    goto :goto_0
.end method

.method protected getMediaMessage(II)Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    .locals 4
    .param p1, "position"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    const/4 v1, 0x0

    .line 134
    iget v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    if-gt p1, v2, :cond_2

    .line 135
    add-int/lit8 v2, p1, -0x1

    iget v3, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->columnCount:I

    mul-int/2addr v2, v3

    add-int v0, v2, p2

    .line 136
    .local v0, "picIndex":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisMonth:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v1

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisMonth:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    goto :goto_0

    .line 137
    .end local v0    # "picIndex":I
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->yearLines:I

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_3

    .line 138
    add-int/lit8 v2, p1, -0x2

    iget v3, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->columnCount:I

    mul-int/2addr v2, v3

    add-int v0, v2, p2

    .line 139
    .restart local v0    # "picIndex":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisYear:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picInThisYear:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    goto :goto_0

    .line 141
    .end local v0    # "picIndex":I
    :cond_3
    add-int/lit8 v2, p1, -0x3

    iget v3, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->monthLines:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->yearLines:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->columnCount:I

    mul-int/2addr v2, v3

    add-int v0, v2, p2

    .line 142
    .restart local v0    # "picIndex":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picOther:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->picOther:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    goto :goto_0
.end method

.method protected abstract getMediaView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end method

.method public abstract getMessageType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public getOffset()I
    .locals 2

    .prologue
    .line 152
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->state:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    sget-object v1, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->MESSAGES:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->state:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    sget-object v1, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;->ARCHIVED:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->messageCountInMessageTable:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "should not query messages in DONE state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getState()Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->state:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter$State;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 187
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    return-object p2

    .line 189
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 190
    goto :goto_0

    .line 192
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;->getMediaView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;, "Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter<TT;>;"
    const/4 v0, 0x2

    return v0
.end method
