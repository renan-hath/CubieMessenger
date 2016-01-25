.class Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageMultiSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/share/ImageMultiSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageThumbnailAdapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final pictureInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/share/ImageMultiSelectActivity;Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p4, "pictureInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;>;"
    iput-object p1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->context:Landroid/content/Context;

    .line 57
    iput-object p4, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->pictureInfos:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 59
    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->pictureInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->pictureInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    if-nez p2, :cond_0

    .line 80
    iget-object v5, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030107

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, "itemView":Landroid/view/View;
    :goto_0
    const v5, 0x7f080258

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 86
    .local v4, "thumbnailView":Landroid/widget/ImageView;
    const v5, 0x7f08025b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    .local v0, "imageSelectView":Landroid/widget/ImageView;
    const v5, 0x7f0802a0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 89
    .local v3, "selectedMaskView":Landroid/view/View;
    iget-object v5, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->pictureInfos:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;

    .line 91
    .local v1, "info":Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;
    iget-object v5, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    iget-object v6, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    # getter for: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->selectedPictureInfos:Ljava/util/Set;
    invoke-static {v6}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$000(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->updateSelectImageView(Landroid/widget/ImageView;Z)V
    invoke-static {v5, v0, v6}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$100(Lcom/liquable/nemo/share/ImageMultiSelectActivity;Landroid/widget/ImageView;Z)V

    .line 93
    iget-object v5, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    # getter for: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->selectedPictureInfos:Ljava/util/Set;
    invoke-static {v5}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$000(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v5, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-virtual {v5, v4, v1}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 97
    new-instance v5, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;

    invoke-direct {v5, p0, v1, v0, v3}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;-><init>(Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object v2

    .line 82
    .end local v0    # "imageSelectView":Landroid/widget/ImageView;
    .end local v1    # "info":Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;
    .end local v2    # "itemView":Landroid/view/View;
    .end local v3    # "selectedMaskView":Landroid/view/View;
    .end local v4    # "thumbnailView":Landroid/widget/ImageView;
    :cond_0
    move-object v2, p2

    .restart local v2    # "itemView":Landroid/view/View;
    goto :goto_0

    .line 93
    .restart local v0    # "imageSelectView":Landroid/widget/ImageView;
    .restart local v1    # "info":Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;
    .restart local v3    # "selectedMaskView":Landroid/view/View;
    .restart local v4    # "thumbnailView":Landroid/widget/ImageView;
    :cond_1
    const/16 v5, 0x8

    goto :goto_1
.end method
