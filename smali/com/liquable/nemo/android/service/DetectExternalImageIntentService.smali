.class public Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;
.super Landroid/app/IntentService;
.source "DetectExternalImageIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Receiver;,
        Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;,
        Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;
    }
.end annotation


# static fields
.field private static final INTENT_MULTI_PICTURE_INFO_KEY:Ljava/lang/String; = "picture_infos"

.field private static final INTENT_PICTURE_INFO_KEY:Ljava/lang/String; = "picture_info"

.field private static final logger:Lcom/liquable/nemo/util/Logger;

.field private static final recentDetectedMediaIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final recentDetectedPictureInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const-class v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->logger:Lcom/liquable/nemo/util/Logger;

    .line 211
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedMediaIds:Ljava/util/Set;

    .line 212
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedPictureInfos:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 262
    const-string/jumbo v0, "DetectExternalImageIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method static synthetic access$000()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/liquable/nemo/android/provider/PictureInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->isExternalCameraByIntentFromCubie(Landroid/content/Context;Lcom/liquable/nemo/android/provider/PictureInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedMediaIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedPictureInfos:Ljava/util/Set;

    return-object v0
.end method

.method private handleDeleted(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 266
    sget-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedMediaIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 267
    sget-object v0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedPictureInfos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 268
    return-void
.end method

.method private handleDetected(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v11, 0x8000000

    const/4 v7, 0x0

    .line 271
    const-string/jumbo v8, "picture_info"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 272
    .local v4, "picInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    if-nez v4, :cond_0

    .line 317
    :goto_0
    return-void

    .line 276
    :cond_0
    if-nez v4, :cond_1

    move v5, v7

    .line 285
    .local v5, "rotateDegree":I
    :goto_1
    invoke-virtual {v4}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 284
    invoke-static {p0, v8, v7, v5}, Lcom/liquable/nemo/util/ImageUtils;->decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 289
    .local v0, "bitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v8

    if-nez v8, :cond_2

    .line 290
    sget-object v7, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedPictureInfos:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    .end local v0    # "bitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    .end local v5    # "rotateDegree":I
    :cond_1
    invoke-virtual {v4}, Lcom/liquable/nemo/android/provider/PictureInfo;->getRotateDegree()I

    move-result v5

    goto :goto_1

    .line 294
    .restart local v0    # "bitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    .restart local v5    # "rotateDegree":I
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v6, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v8, "picture_infos"

    new-instance v9, Ljava/util/ArrayList;

    sget-object v10, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedPictureInfos:Ljava/util/Set;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 297
    sget-object v8, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->SHARED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    invoke-virtual {v8}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-static {p0, v7, v6, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 305
    .local v2, "pendingContentIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;

    invoke-direct {v1, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .local v1, "deleteIntent":Landroid/content/Intent;
    sget-object v8, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->DELETED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    invoke-virtual {v8}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-static {p0, v7, v1, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 313
    .local v3, "pendingDeleteIntent":Landroid/app/PendingIntent;
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    sget-object v9, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedMediaIds:Ljava/util/Set;

    .line 316
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    .line 313
    invoke-virtual {v8, v7, v2, v3, v9}, Lcom/liquable/nemo/android/NotifyManager;->notifyShareDetectedNewExternalImage(Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto :goto_0
.end method

.method private handleShared(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 320
    sget-object v4, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedMediaIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 321
    sget-object v4, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedPictureInfos:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 323
    const-string/jumbo v4, "picture_infos"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 326
    .local v0, "allPicInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v1, "cleanedPicInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 336
    .local v2, "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/liquable/nemo/util/ImageUtils;->isBitmapExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 337
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    .end local v2    # "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 346
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 347
    invoke-static {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->createExternalMediaFromDetectExternalImage(Landroid/content/Context;Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v3

    .line 352
    .local v3, "shareIntent":Landroid/content/Intent;
    :goto_2
    const/high16 v4, 0x14000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 350
    .end local v3    # "shareIntent":Landroid/content/Intent;
    :cond_4
    new-instance v3, Lcom/liquable/nemo/share/ImageMultiSelectActivity$CreateIntent;

    invoke-direct {v3, p0, v1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .restart local v3    # "shareIntent":Landroid/content/Intent;
    goto :goto_2
.end method

.method private handleStartSharingPicture(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 358
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 363
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 364
    .local v0, "isMediaUri":Z
    if-eqz v0, :cond_0

    .line 369
    sget-object v2, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedMediaIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 370
    sget-object v2, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->recentDetectedPictureInfos:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 372
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/NotifyManager;->cancelShareDetectedNewExternalImage()V

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;

    new-instance v4, Landroid/os/Handler;

    .line 223
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v5}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$1;)V

    .line 221
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isExternalCameraByIntentFromCubie(Landroid/content/Context;Lcom/liquable/nemo/android/provider/PictureInfo;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "picInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    const/4 v3, 0x0

    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4}, Lcom/liquable/nemo/storage/NemoFileService;->getTempCameraPhoto()Ljava/io/File;

    move-result-object v2

    .line 240
    .local v2, "tempCameraPhoto":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 251
    if-eqz v1, :cond_0

    .line 253
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 255
    .end local v2    # "tempCameraPhoto":Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 243
    .restart local v2    # "tempCameraPhoto":Ljava/io/File;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "r"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 244
    if-nez v1, :cond_2

    .line 251
    if-eqz v1, :cond_0

    .line 253
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v4

    goto :goto_0

    .line 247
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    const/4 v3, 0x1

    .line 251
    :cond_3
    if-eqz v1, :cond_0

    .line 253
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 254
    :catch_1
    move-exception v4

    goto :goto_0

    .line 248
    .end local v2    # "tempCameraPhoto":Ljava/io/File;
    :catch_2
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_0

    .line 253
    :try_start_6
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 254
    :catch_3
    move-exception v4

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 253
    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 255
    :cond_4
    :goto_1
    throw v3

    .line 254
    .restart local v2    # "tempCameraPhoto":Ljava/io/File;
    :catch_4
    move-exception v4

    goto :goto_0

    .end local v2    # "tempCameraPhoto":Ljava/io/File;
    :catch_5
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 377
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    move-result-object v0

    .line 378
    .local v0, "action":Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;
    sget-object v1, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$1;->$SwitchMap$com$liquable$nemo$android$service$DetectExternalImageIntentService$Action:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 394
    :goto_0
    return-void

    .line 380
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->handleDetected(Landroid/content/Intent;)V

    goto :goto_0

    .line 383
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->handleDeleted(Landroid/content/Intent;)V

    goto :goto_0

    .line 386
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->handleShared(Landroid/content/Intent;)V

    goto :goto_0

    .line 389
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->handleStartSharingPicture(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
