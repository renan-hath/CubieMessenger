.class public Lcom/liquable/nemo/gallery/PictureListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PictureListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;,
        Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private multipleSelect:Z

.field private final pictureListAdapterListener:Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

.field private total:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "selectedPictures"    # Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;
    .param p4, "onThumbnailClickListener"    # Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 49
    iput-object p3, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    .line 50
    iput-object p4, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictureListAdapterListener:Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/gallery/PictureListAdapter;)Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/PictureListAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictureListAdapterListener:Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/gallery/PictureListAdapter;)Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/PictureListAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/gallery/PictureListAdapter;Landroid/widget/ImageView;Lcom/liquable/nemo/android/provider/PictureInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/PictureListAdapter;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/gallery/PictureListAdapter;->updateSelectedView(Landroid/widget/ImageView;Lcom/liquable/nemo/android/provider/PictureInfo;)V

    return-void
.end method

.method private updateSelectedView(Landroid/widget/ImageView;Lcom/liquable/nemo/android/provider/PictureInfo;)V
    .locals 2
    .param p1, "checkboxView"    # Landroid/widget/ImageView;
    .param p2, "pictureInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    const/16 v0, 0x8

    .line 160
    if-nez p2, :cond_0

    .line 161
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 165
    iget-boolean v1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->multipleSelect:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    invoke-virtual {v0, p2}, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->contains(Lcom/liquable/nemo/android/provider/PictureInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const v0, 0x7f020401

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 169
    :cond_2
    const v0, 0x7f020400

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    iget-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/PictureListAdapter;->notifyDataSetChanged()V

    .line 56
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->total:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadedCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNext(Lcom/liquable/nemo/android/provider/PictureInfo;)Lcom/liquable/nemo/android/provider/PictureInfo;
    .locals 2
    .param p1, "currentPicture"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/PictureInfo;

    goto :goto_0
.end method

.method public getPrev(Lcom/liquable/nemo/android/provider/PictureInfo;)Lcom/liquable/nemo/android/provider/PictureInfo;
    .locals 2
    .param p1, "currentPicture"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/PictureInfo;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/gallery/PictureListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 100
    .local v0, "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    if-nez p2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300de

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 102
    new-instance v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;

    invoke-direct {v1, v4}, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/gallery/PictureListAdapter$1;)V

    .line 103
    .local v1, "viewHolder":Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;
    const v2, 0x7f080258

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 104
    const v2, 0x7f08025b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;->selectedView:Landroid/widget/ImageView;

    .line 106
    iget-object v2, v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/gallery/PictureListAdapter$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/gallery/PictureListAdapter$1;-><init>(Lcom/liquable/nemo/gallery/PictureListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v2, v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;->selectedView:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/gallery/PictureListAdapter$2;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/gallery/PictureListAdapter$2;-><init>(Lcom/liquable/nemo/gallery/PictureListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    :goto_0
    if-nez v0, :cond_2

    .line 134
    iget-object v2, v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 135
    iget-object v2, v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;->selectedView:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/liquable/nemo/gallery/PictureListAdapter;->updateSelectedView(Landroid/widget/ImageView;Lcom/liquable/nemo/android/provider/PictureInfo;)V

    .line 142
    return-object p2

    .line 130
    .end local v1    # "viewHolder":Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;
    goto :goto_0

    .line 136
    :cond_2
    iget-object v2, v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 137
    iget-object v2, v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, v1, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    new-instance v4, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;

    invoke-direct {v4, v0}, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;-><init>(Lcom/liquable/nemo/android/provider/PictureInfo;)V

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_1
.end method

.method public reset(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    iput-object p1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->pictures:Ljava/util/List;

    .line 147
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/PictureListAdapter;->notifyDataSetChanged()V

    .line 148
    return-void
.end method

.method public setMultipleSelect(Z)V
    .locals 0
    .param p1, "multipleSelect"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->multipleSelect:Z

    .line 152
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/PictureListAdapter;->notifyDataSetChanged()V

    .line 153
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter;->total:I

    .line 157
    return-void
.end method
