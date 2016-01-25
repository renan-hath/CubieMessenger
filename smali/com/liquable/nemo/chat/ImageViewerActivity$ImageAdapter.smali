.class public Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ImageViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mediaMsgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/IMediaMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final targetWidthPx:I

.field final synthetic this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/IMediaMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/IMediaMessage;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->context:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->mediaMsgs:Ljava/util/List;

    .line 85
    const/16 v0, 0x50

    .line 87
    .local v0, "adjustedWidth":I
    const/16 v1, 0x50

    invoke-static {p2, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->targetWidthPx:I

    .line 88
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->mediaMsgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/message/model/IMediaMessage;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->mediaMsgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/IMediaMessage;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->getItem(I)Lcom/liquable/nemo/message/model/IMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 107
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 109
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->isPaintMessage(Landroid/content/Intent;)Z
    invoke-static {v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$000(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->mediaMsgs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/PaintMessage;

    .line 114
    .local v1, "paintMessage":Lcom/liquable/nemo/message/model/PaintMessage;
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$100(Lcom/liquable/nemo/chat/ImageViewerActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/share/PaintMediaShareCache;

    iget v5, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->targetWidthPx:I

    const v6, 0x7f0203aa

    invoke-direct {v4, v1, v5, v6}, Lcom/liquable/nemo/share/PaintMediaShareCache;-><init>(Lcom/liquable/nemo/message/model/PaintMessage;II)V

    invoke-virtual {v3, v0, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 117
    const v3, -0x363637

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 123
    .end local v1    # "paintMessage":Lcom/liquable/nemo/message/model/PaintMessage;
    :goto_0
    return-object v0

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->mediaMsgs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 120
    .local v2, "pictMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$100(Lcom/liquable/nemo/chat/ImageViewerActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/util/PhotoThumbnail;

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 121
    invoke-virtual {v5, v6}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/liquable/nemo/util/PhotoThumbnail;-><init>(Ljava/io/File;)V

    .line 120
    invoke-virtual {v3, v0, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0
.end method
