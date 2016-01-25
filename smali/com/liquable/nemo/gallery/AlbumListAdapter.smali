.class public Lcom/liquable/nemo/gallery/AlbumListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;,
        Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;
    }
.end annotation


# instance fields
.field private albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/gallery/AlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final onAlbumClickListener:Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onAlbumClickListener"    # Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter;->albums:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 43
    iput-object p3, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter;->onAlbumClickListener:Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/gallery/AlbumListAdapter;)Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/AlbumListAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter;->onAlbumClickListener:Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter;->albums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter;->albums:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/gallery/AlbumListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/gallery/AlbumInfo;

    .line 66
    .local v0, "album":Lcom/liquable/nemo/gallery/AlbumInfo;
    if-nez p2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300dd

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance v1, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;

    invoke-direct {v1, v4}, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/gallery/AlbumListAdapter$1;)V

    .line 69
    .local v1, "viewHolder":Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;
    iput-object v0, v1, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;->album:Lcom/liquable/nemo/gallery/AlbumInfo;

    .line 70
    const v2, 0x7f080258

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 71
    const v2, 0x7f080259

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f08025a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;->imageCount:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    new-instance v2, Lcom/liquable/nemo/gallery/AlbumListAdapter$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/gallery/AlbumListAdapter$1;-><init>(Lcom/liquable/nemo/gallery/AlbumListAdapter;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :goto_0
    iget-object v2, v1, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/liquable/nemo/gallery/AlbumInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, v1, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;->imageCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/liquable/nemo/gallery/AlbumInfo;->getImageCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, v1, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    new-instance v4, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;

    invoke-direct {v4, v0}, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;-><init>(Lcom/liquable/nemo/android/provider/PictureInfo;)V

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 93
    return-object p2

    .line 86
    .end local v1    # "viewHolder":Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public reset(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/gallery/AlbumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/gallery/AlbumInfo;>;"
    iput-object p1, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter;->albums:Ljava/util/List;

    .line 98
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/AlbumListAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method
