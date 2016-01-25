.class public Lcom/liquable/nemo/chat/AudioPlayerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AudioPlayerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;
    }
.end annotation


# instance fields
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

.field private checkedPosition:I

.field private final context:Landroid/content/Context;

.field private final nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/storage/NemoFileService;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/storage/NemoFileService;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/AudioMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, "audioMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/AudioMessage;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->checkedPosition:I

    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 42
    iput-object p3, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->audioMessages:Ljava/util/List;

    .line 44
    return-void
.end method

.method private highlight(Landroid/view/View;Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;)V
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;

    .prologue
    const v3, 0x7f0a006f

    const v2, -0xdd525a

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const v0, 0x7f020485

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    iget-object v0, p2, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f02042c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v0, p2, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->audioTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v0, p2, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    const v0, 0x7f020483

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p2, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f02042a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v0, p2, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->audioTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    iget-object v0, p2, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method


# virtual methods
.method protected getCheckedPosition()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->checkedPosition:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->audioMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/message/model/AudioMessage;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->audioMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/AudioMessage;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->getItem(I)Lcom/liquable/nemo/message/model/AudioMessage;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 68
    if-nez p2, :cond_0

    .line 69
    iget-object v4, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0300d0

    invoke-virtual {v4, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/chat/AudioPlayerListAdapter$1;)V

    .line 73
    .local v3, "viewHolder":Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;
    const v4, 0x7f080233

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 74
    const v4, 0x7f080232

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 75
    const v4, 0x7f080234

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->audioTitle:Landroid/widget/TextView;

    .line 76
    const v4, 0x7f080235

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->getItem(I)Lcom/liquable/nemo/message/model/AudioMessage;

    move-result-object v2

    .line 84
    .local v2, "message":Lcom/liquable/nemo/message/model/AudioMessage;
    if-nez v2, :cond_1

    .line 85
    iget-object v4, v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    const v7, 0x7f0203aa

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v4, v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->audioTitle:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v4, v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    iget v4, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->checkedPosition:I

    if-ne v4, p1, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 100
    invoke-direct {p0, p2, v3}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->highlight(Landroid/view/View;Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;)V

    .line 101
    return-object p2

    .line 79
    .end local v2    # "message":Lcom/liquable/nemo/message/model/AudioMessage;
    .end local v3    # "viewHolder":Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;
    goto :goto_0

    .line 89
    .restart local v2    # "message":Lcom/liquable/nemo/message/model/AudioMessage;
    :cond_1
    invoke-virtual {v2, v5}, Lcom/liquable/nemo/message/model/AudioMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    iget-object v7, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4, v7}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 90
    .local v1, "mediaThumbnail":Ljava/io/File;
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    iget-object v4, v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->audioTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AudioMessage;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v4, v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object v4, v3, Lcom/liquable/nemo/chat/AudioPlayerListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    const v7, 0x7f020427

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .end local v1    # "mediaThumbnail":Ljava/io/File;
    :cond_3
    move v4, v6

    .line 99
    goto :goto_2
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->checkedPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->checkedPosition:I

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItemChecked(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->checkedPosition:I

    .line 147
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->notifyDataSetChanged()V

    .line 148
    return-void
.end method

.method public setItemChecked(Lcom/liquable/nemo/message/model/AudioMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/AudioMessage;

    .prologue
    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->audioMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/AudioMessage;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/message/model/AudioMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->setItemChecked(I)V

    .line 143
    :goto_1
    return-void

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->setItemChecked(I)V

    goto :goto_1
.end method

.method public tryNext()Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 154
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->checkedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->setItemChecked(I)V

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public tryPrev()Z
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 162
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->checkedPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/AudioPlayerListAdapter;->setItemChecked(I)V

    .line 163
    const/4 v0, 0x1

    goto :goto_0
.end method
