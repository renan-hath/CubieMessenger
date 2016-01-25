.class Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "ImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ImageViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchLoadableImage"
.end annotation


# instance fields
.field private final message:Lcom/liquable/nemo/message/model/IMediaMessage;

.field final synthetic this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 0
    .param p2, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;->message:Lcom/liquable/nemo/message/model/IMediaMessage;

    .line 133
    return-void
.end method


# virtual methods
.method protected convertToBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "mediaFile"    # Ljava/io/File;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->isPaintMessage(Landroid/content/Intent;)Z
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$000(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const v0, -0x121213

    invoke-static {p1, v0}, Lcom/liquable/nemo/util/ImageUtils;->createBitmapWithBackground(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    if-ne p0, p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 149
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 151
    check-cast v0, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;

    .line 153
    .local v0, "other":Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;->message:Lcom/liquable/nemo/message/model/IMediaMessage;

    if-nez v3, :cond_3

    .line 154
    iget-object v3, v0, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;->message:Lcom/liquable/nemo/message/model/IMediaMessage;

    if-eqz v3, :cond_0

    move v1, v2

    .line 155
    goto :goto_0

    .line 157
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;->message:Lcom/liquable/nemo/message/model/IMediaMessage;

    iget-object v4, v0, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;->message:Lcom/liquable/nemo/message/model/IMediaMessage;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 158
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 165
    const/16 v0, 0x1f

    .line 166
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 167
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;->message:Lcom/liquable/nemo/message/model/IMediaMessage;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 168
    return v1

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;->message:Lcom/liquable/nemo/message/model/IMediaMessage;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;->message:Lcom/liquable/nemo/message/model/IMediaMessage;

    invoke-interface {v0}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;->convertToBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 177
    return-void
.end method
