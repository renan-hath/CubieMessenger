.class public Lcom/liquable/nemo/share/PictureRow;
.super Landroid/widget/LinearLayout;
.source "PictureRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/share/PictureRow$ThumbnailFactory;
    }
.end annotation


# instance fields
.field protected final checkboxes:[Landroid/widget/CheckBox;

.field private final columnCount:I

.field protected final frames:[Landroid/widget/FrameLayout;

.field private onShowMoreClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

.field protected final pics:[Landroid/widget/ImageView;

.field private thumbnailFactory:Lcom/liquable/nemo/share/PictureRow$ThumbnailFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/liquable/nemo/share/PictureRow;->columnCount:I

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 41
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/liquable/nemo/share/PictureRow;->columnCount:I

    new-array v2, v2, [Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/liquable/nemo/share/PictureRow;->frames:[Landroid/widget/FrameLayout;

    .line 42
    iget v2, p0, Lcom/liquable/nemo/share/PictureRow;->columnCount:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/liquable/nemo/share/PictureRow;->pics:[Landroid/widget/ImageView;

    .line 43
    iget v2, p0, Lcom/liquable/nemo/share/PictureRow;->columnCount:I

    new-array v2, v2, [Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/liquable/nemo/share/PictureRow;->checkboxes:[Landroid/widget/CheckBox;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/liquable/nemo/share/PictureRow;->columnCount:I

    if-ge v0, v2, :cond_0

    .line 46
    iget-object v3, p0, Lcom/liquable/nemo/share/PictureRow;->frames:[Landroid/widget/FrameLayout;

    const v2, 0x7f030161

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    aput-object v2, v3, v0

    .line 49
    iget-object v3, p0, Lcom/liquable/nemo/share/PictureRow;->pics:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/liquable/nemo/share/PictureRow;->frames:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v0

    const v4, 0x7f08025d

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    .line 50
    iget-object v3, p0, Lcom/liquable/nemo/share/PictureRow;->checkboxes:[Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/liquable/nemo/share/PictureRow;->frames:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v0

    const v4, 0x7f080340

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    aput-object v2, v3, v0

    .line 51
    iget-object v2, p0, Lcom/liquable/nemo/share/PictureRow;->frames:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v0

    new-instance v3, Lcom/liquable/nemo/share/PictureRow$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/share/PictureRow$1;-><init>(Lcom/liquable/nemo/share/PictureRow;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v2, p0, Lcom/liquable/nemo/share/PictureRow;->frames:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/share/PictureRow;->addView(Landroid/view/View;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/share/PictureRow;)Lcom/liquable/nemo/share/OnShowMoreClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/PictureRow;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/share/PictureRow;->onShowMoreClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

    return-object v0
.end method

.method private createThumbnail(J)Lcom/liquable/nemo/util/AbstractLoadableImage;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/share/PictureRow;->thumbnailFactory:Lcom/liquable/nemo/share/PictureRow$ThumbnailFactory;

    invoke-interface {v0, p1, p2}, Lcom/liquable/nemo/share/PictureRow$ThumbnailFactory;->createThumbnail(J)Lcom/liquable/nemo/util/AbstractLoadableImage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRowCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/liquable/nemo/share/PictureRow;->columnCount:I

    return v0
.end method

.method public setOnMediaInfoCheckedListener(Lcom/liquable/nemo/share/MediaInfoCheckedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/liquable/nemo/share/MediaInfoCheckedListener;

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/liquable/nemo/share/PictureRow;->columnCount:I

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/liquable/nemo/share/PictureRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    new-instance v2, Lcom/liquable/nemo/share/PictureRow$2;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/share/PictureRow$2;-><init>(Lcom/liquable/nemo/share/PictureRow;Lcom/liquable/nemo/share/MediaInfoCheckedListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public setOnShowMoreClickListener(Lcom/liquable/nemo/share/OnShowMoreClickListener;)V
    .locals 0
    .param p1, "onShowMoreClickListener"    # Lcom/liquable/nemo/share/OnShowMoreClickListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/liquable/nemo/share/PictureRow;->onShowMoreClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

    .line 96
    return-void
.end method

.method public setThumbnailFactory(Lcom/liquable/nemo/share/PictureRow$ThumbnailFactory;)V
    .locals 0
    .param p1, "thumbnailFactory"    # Lcom/liquable/nemo/share/PictureRow$ThumbnailFactory;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/liquable/nemo/share/PictureRow;->thumbnailFactory:Lcom/liquable/nemo/share/PictureRow$ThumbnailFactory;

    .line 100
    return-void
.end method

.method public updateContent(Ljava/util/List;ILjava/util/Set;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 10
    .param p2, "startIndex"    # I
    .param p4, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p5, "hasShowMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I",
            "Ljava/util/Set",
            "<",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            ">;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "mediaInfos":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "checkedMediaInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/liquable/nemo/android/provider/MediaInfo;>;"
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 107
    if-nez p2, :cond_1

    const/4 v5, 0x1

    .line 108
    .local v5, "startRow":Z
    :goto_0
    const/4 v4, 0x0

    .line 110
    .local v4, "lastRow":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v6, p0, Lcom/liquable/nemo/share/PictureRow;->columnCount:I

    if-ge v0, v6, :cond_4

    .line 111
    add-int v3, p2, v0

    .line 112
    .local v3, "index":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_3

    .line 113
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v3, v6, :cond_2

    .line 114
    iget-object v6, p0, Lcom/liquable/nemo/share/PictureRow;->pics:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    const v8, 0x7f0204fb

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v6, p0, Lcom/liquable/nemo/share/PictureRow;->frames:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v0

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 120
    :goto_2
    iget-object v6, p0, Lcom/liquable/nemo/share/PictureRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v6, v6, v0

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 121
    iget-object v6, p0, Lcom/liquable/nemo/share/PictureRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v6, v6, v0

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 122
    const/4 v4, 0x1

    .line 110
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v3    # "index":I
    .end local v4    # "lastRow":Z
    .end local v5    # "startRow":Z
    :cond_1
    move v5, v7

    .line 107
    goto :goto_0

    .line 117
    .restart local v0    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "lastRow":Z
    .restart local v5    # "startRow":Z
    :cond_2
    iget-object v6, p0, Lcom/liquable/nemo/share/PictureRow;->pics:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    iget-object v6, p0, Lcom/liquable/nemo/share/PictureRow;->frames:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v0

    iget-object v8, p0, Lcom/liquable/nemo/share/PictureRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v8, v8, v0

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 124
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/android/provider/MediaInfo;

    invoke-virtual {v6}, Lcom/liquable/nemo/android/provider/MediaInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 125
    .local v1, "id":J
    iget-object v6, p0, Lcom/liquable/nemo/share/PictureRow;->pics:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/share/PictureRow;->createThumbnail(J)Lcom/liquable/nemo/util/AbstractLoadableImage;

    move-result-object v8

    invoke-virtual {p4, v6, v8}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 126
    iget-object v6, p0, Lcom/liquable/nemo/share/PictureRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v6, v6, v0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 128
    iget-object v6, p0, Lcom/liquable/nemo/share/PictureRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v6, v6, v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v6, p0, Lcom/liquable/nemo/share/PictureRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v6, v6, v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    iget-object v6, p0, Lcom/liquable/nemo/share/PictureRow;->frames:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v0

    iget-object v8, p0, Lcom/liquable/nemo/share/PictureRow;->checkboxes:[Landroid/widget/CheckBox;

    aget-object v8, v8, v0

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_0

    if-nez p5, :cond_0

    .line 133
    const/4 v4, 0x1

    goto :goto_3

    .line 138
    .end local v1    # "id":J
    .end local v3    # "index":I
    :cond_4
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 140
    const v6, 0x7f0204fe

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/share/PictureRow;->setBackgroundResource(I)V

    .line 151
    :goto_4
    return-void

    .line 141
    :cond_5
    if-eqz v5, :cond_6

    .line 143
    const v6, 0x7f020500

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/share/PictureRow;->setBackgroundResource(I)V

    goto :goto_4

    .line 144
    :cond_6
    if-eqz v4, :cond_7

    .line 146
    const v6, 0x7f0204f5

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/share/PictureRow;->setBackgroundResource(I)V

    goto :goto_4

    .line 149
    :cond_7
    const v6, 0x7f0204f6

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/share/PictureRow;->setBackgroundResource(I)V

    goto :goto_4
.end method
