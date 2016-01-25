.class Lcom/liquable/nemo/friend/model/FriendManager$3;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "FriendManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/model/FriendManager;->downloadOrDeleteUserIcon(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/model/FriendManager;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$iconLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

.field final synthetic val$smallIconLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/model/FriendManager;Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/model/FriendManager;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->this$0:Lcom/liquable/nemo/friend/model/FriendManager;

    iput-object p2, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->val$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->val$iconLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    iput-object p4, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->val$smallIconLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    iput-object p5, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method

.method private copyDefaultIconFromResource(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconLocalKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p3, "smallIconLocalKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202a9

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    .local v0, "normalIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 285
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->this$0:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 287
    # getter for: Lcom/liquable/nemo/friend/model/FriendManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v3}, Lcom/liquable/nemo/friend/model/FriendManager;->access$300(Lcom/liquable/nemo/friend/model/FriendManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v3

    .line 285
    invoke-static {v2, v0, v3}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202a8

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 292
    .local v1, "smallIcon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 293
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->this$0:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 295
    # getter for: Lcom/liquable/nemo/friend/model/FriendManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v3}, Lcom/liquable/nemo/friend/model/FriendManager;->access$300(Lcom/liquable/nemo/friend/model/FriendManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v3

    .line 293
    invoke-static {v2, v1, v3}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    .line 298
    :cond_1
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->val$iconLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->val$smallIconLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/util/ImageUtils;->saveSmallUserIcon(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)Landroid/graphics/Bitmap;

    .line 305
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->this$0:Lcom/liquable/nemo/friend/model/FriendManager;

    # getter for: Lcom/liquable/nemo/friend/model/FriendManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/friend/model/FriendManager;->access$000(Lcom/liquable/nemo/friend/model/FriendManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastAccountIconUpdated(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 3
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 310
    sget-object v0, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->NO_SUCH_KEY:Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->val$iconLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/FriendManager$3;->val$smallIconLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/friend/model/FriendManager$3;->copyDefaultIconFromResource(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 315
    :cond_0
    return-void
.end method
