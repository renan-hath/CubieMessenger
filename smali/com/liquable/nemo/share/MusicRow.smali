.class public Lcom/liquable/nemo/share/MusicRow;
.super Landroid/widget/RelativeLayout;
.source "MusicRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;,
        Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;
    }
.end annotation


# instance fields
.field private final artistViews:[Landroid/widget/TextView;

.field private final checkboxes:[Landroid/widget/CheckBox;

.field private final columnCount:I

.field private final moreMusicImageViews:[Landroid/widget/ImageView;

.field private onShowMoreClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

.field private final pics:[Landroid/widget/ImageView;

.field private final titleViews:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/liquable/nemo/share/MusicRow;->columnCount:I

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 65
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/liquable/nemo/share/MusicRow;->getRowCount()I

    move-result v4

    .line 66
    .local v4, "rows":I
    new-array v5, v4, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->pics:[Landroid/widget/ImageView;

    .line 67
    new-array v5, v4, [Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->checkboxes:[Landroid/widget/CheckBox;

    .line 68
    new-array v5, v4, [Landroid/widget/TextView;

    iput-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->titleViews:[Landroid/widget/TextView;

    .line 69
    new-array v5, v4, [Landroid/widget/TextView;

    iput-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->artistViews:[Landroid/widget/TextView;

    .line 70
    new-array v5, v4, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->moreMusicImageViews:[Landroid/widget/ImageView;

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 73
    const v5, 0x7f030160

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 76
    .local v3, "musicRowLayout":Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/liquable/nemo/share/MusicRow;->pics:[Landroid/widget/ImageView;

    const v5, 0x7f08025d

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v1

    .line 77
    iget-object v6, p0, Lcom/liquable/nemo/share/MusicRow;->moreMusicImageViews:[Landroid/widget/ImageView;

    const v5, 0x7f080341

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v1

    .line 79
    iget-object v6, p0, Lcom/liquable/nemo/share/MusicRow;->checkboxes:[Landroid/widget/CheckBox;

    const v5, 0x7f080340

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v1

    .line 80
    iget-object v6, p0, Lcom/liquable/nemo/share/MusicRow;->titleViews:[Landroid/widget/TextView;

    const v5, 0x7f08025e

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v1

    .line 81
    iget-object v6, p0, Lcom/liquable/nemo/share/MusicRow;->artistViews:[Landroid/widget/TextView;

    const v5, 0x7f08025f

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v6, v1

    .line 82
    new-instance v5, Lcom/liquable/nemo/share/MusicRow$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/share/MusicRow$1;-><init>(Lcom/liquable/nemo/share/MusicRow;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;-><init>(Lcom/liquable/nemo/share/MusicRow$1;)V

    .line 99
    .local v0, "checkBoxTag":Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v5, v5, v1

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/share/MusicRow;->addView(Landroid/view/View;)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "checkBoxTag":Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;
    .end local v3    # "musicRowLayout":Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/share/MusicRow;)Lcom/liquable/nemo/share/OnShowMoreClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/MusicRow;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/share/MusicRow;->onShowMoreClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

    return-object v0
.end method


# virtual methods
.method public getRowCount()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/liquable/nemo/share/MusicRow;->columnCount:I

    return v0
.end method

.method public setOnMediaInfoCheckedListener(Lcom/liquable/nemo/share/MediaInfoCheckedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/liquable/nemo/share/MediaInfoCheckedListener;

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/share/MusicRow;->getRowCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/liquable/nemo/share/MusicRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    new-instance v2, Lcom/liquable/nemo/share/MusicRow$2;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/share/MusicRow$2;-><init>(Lcom/liquable/nemo/share/MusicRow;Lcom/liquable/nemo/share/MediaInfoCheckedListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public setOnShowMoreClickListener(Lcom/liquable/nemo/share/OnShowMoreClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/liquable/nemo/share/OnShowMoreClickListener;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/liquable/nemo/share/MusicRow;->onShowMoreClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

    .line 128
    return-void
.end method

.method public updateContent(Ljava/util/List;ILjava/util/Set;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 10
    .param p2, "startIndex"    # I
    .param p4, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p5, "hasShowMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/AudioInfo;",
            ">;I",
            "Ljava/util/Set",
            "<",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            ">;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "musics":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/AudioInfo;>;"
    .local p3, "checkedMediaInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/liquable/nemo/android/provider/MediaInfo;>;"
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 135
    if-nez p2, :cond_1

    const/4 v4, 0x1

    .line 136
    .local v4, "startRow":Z
    :goto_0
    const/4 v2, 0x0

    .line 137
    .local v2, "lastRow":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/liquable/nemo/share/MusicRow;->getRowCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 138
    add-int v3, p2, v1

    .line 139
    .local v3, "soundIndex":I
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->moreMusicImageViews:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 142
    if-eqz p5, :cond_2

    .line 143
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->moreMusicImageViews:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;

    sget-object v7, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->MORE:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    invoke-virtual {v5, v7, v9}, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;->update(Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;Lcom/liquable/nemo/android/provider/AudioInfo;)V

    .line 148
    :goto_2
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->pics:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->pics:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->pics:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 151
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 152
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->titleViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->artistViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->pics:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    const/4 v2, 0x1

    .line 137
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "lastRow":Z
    .end local v3    # "soundIndex":I
    .end local v4    # "startRow":Z
    :cond_1
    move v4, v6

    .line 135
    goto :goto_0

    .line 146
    .restart local v1    # "i":I
    .restart local v2    # "lastRow":Z
    .restart local v3    # "soundIndex":I
    .restart local v4    # "startRow":Z
    :cond_2
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;

    sget-object v7, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->NONE:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    invoke-virtual {v5, v7, v9}, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;->update(Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;Lcom/liquable/nemo/android/provider/AudioInfo;)V

    goto :goto_2

    .line 157
    :cond_3
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->pics:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/AudioInfo;

    .line 159
    .local v0, "audioInfo":Lcom/liquable/nemo/android/provider/AudioInfo;
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;

    sget-object v7, Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;->MUSIC:Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;

    invoke-virtual {v5, v7, v0}, Lcom/liquable/nemo/share/MusicRow$CheckBoxTag;->update(Lcom/liquable/nemo/share/MusicRow$CheckBoxTagType;Lcom/liquable/nemo/android/provider/AudioInfo;)V

    .line 161
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->pics:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    new-instance v7, Lcom/liquable/nemo/share/AlbumArt;

    invoke-direct {v7, v0}, Lcom/liquable/nemo/share/AlbumArt;-><init>(Lcom/liquable/nemo/android/provider/AudioInfo;)V

    invoke-virtual {p4, v5, v7}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 162
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->pics:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    const v7, 0x7f0204ab

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v5, v5, v1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 165
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v5, v5, v1

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->titleViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->artistViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->titleViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v0}, Lcom/liquable/nemo/android/provider/AudioInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v5, p0, Lcom/liquable/nemo/share/MusicRow;->artistViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v0}, Lcom/liquable/nemo/android/provider/AudioInfo;->getArtist()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    if-nez p5, :cond_0

    .line 172
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 177
    .end local v0    # "audioInfo":Lcom/liquable/nemo/android/provider/AudioInfo;
    .end local v3    # "soundIndex":I
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 179
    const v5, 0x7f0204fe

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/share/MusicRow;->setBackgroundResource(I)V

    .line 190
    :goto_4
    return-void

    .line 180
    :cond_5
    if-eqz v4, :cond_6

    .line 182
    const v5, 0x7f020500

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/share/MusicRow;->setBackgroundResource(I)V

    goto :goto_4

    .line 183
    :cond_6
    if-eqz v2, :cond_7

    .line 185
    const v5, 0x7f0204f5

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/share/MusicRow;->setBackgroundResource(I)V

    goto :goto_4

    .line 188
    :cond_7
    const v5, 0x7f0204f6

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/share/MusicRow;->setBackgroundResource(I)V

    goto :goto_4
.end method
