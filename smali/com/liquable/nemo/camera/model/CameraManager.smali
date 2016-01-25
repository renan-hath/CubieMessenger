.class public Lcom/liquable/nemo/camera/model/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final DIRECTORY_CAMERA:Ljava/lang/String; = "Camera"

.field private static final GALLERY_PICTURE_PREFIX:Ljava/lang/String; = "cubie_"


# instance fields
.field private final sizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/liquable/nemo/camera/model/CameraManager$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/camera/model/CameraManager$1;-><init>(Lcom/liquable/nemo/camera/model/CameraManager;)V

    iput-object v0, p0, Lcom/liquable/nemo/camera/model/CameraManager;->sizeComparator:Ljava/util/Comparator;

    return-void
.end method

.method private findPictureSizeByPreviewSize(Landroid/hardware/Camera$Size;Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 13
    .param p1, "previewSize"    # Landroid/hardware/Camera$Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Size;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .local p2, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/16 v12, 0x3c0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 84
    iget v5, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v5, v5

    mul-double/2addr v5, v10

    iget v7, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v7, v7

    div-double v3, v5, v7

    .line 85
    .local v3, "previewRatio":D
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 86
    .local v2, "pictureSize":Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v6

    mul-double/2addr v6, v10

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v8

    div-double v0, v6, v8

    .line 87
    .local v0, "pictureRatio":D
    sub-double v6, v0, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-lt v6, v12, :cond_0

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    if-lt v6, v12, :cond_0

    .line 92
    .end local v0    # "pictureRatio":D
    .end local v2    # "pictureSize":Landroid/hardware/Camera$Size;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static intentRefreshGallery(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastScanGallery()V

    .line 36
    :cond_0
    return-void
.end method

.method public static intentScanPic(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "mediaScanIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method public static isCubieGallery(Lcom/liquable/nemo/android/provider/PictureInfo;)Z
    .locals 2
    .param p0, "pictureInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/liquable/nemo/android/provider/PictureInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cubie_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public debugSize(Ljava/lang/String;Landroid/hardware/Camera$Size;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public debugSize(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 62
    .local v0, "size":Landroid/hardware/Camera$Size;
    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/camera/model/CameraManager;->debugSize(Ljava/lang/String;Landroid/hardware/Camera$Size;)V

    goto :goto_0

    .line 64
    .end local v0    # "size":Landroid/hardware/Camera$Size;
    :cond_0
    return-void
.end method

.method public deleteTempVideoFile()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/liquable/nemo/camera/model/CameraManager;->getTempVideoFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 81
    return-void
.end method

.method public getBestFitPreviewAndPictureSize(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Landroid/hardware/Camera$Size;",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .local p2, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p2, :cond_0

    .line 100
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    :cond_0
    const/4 v7, 0x0

    .line 135
    :goto_0
    return-object v7

    .line 104
    :cond_1
    iget-object v7, p0, Lcom/liquable/nemo/camera/model/CameraManager;->sizeComparator:Ljava/util/Comparator;

    invoke-static {p1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    iget-object v7, p0, Lcom/liquable/nemo/camera/model/CameraManager;->sizeComparator:Ljava/util/Comparator;

    invoke-static {p2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "pictureSize":Landroid/hardware/Camera$Size;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 111
    .local v6, "size":Landroid/hardware/Camera$Size;
    move-object v2, v6

    .line 112
    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    const/16 v9, 0x3c0

    if-lt v8, v9, :cond_2

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    const/16 v9, 0x3c0

    if-lt v8, v9, :cond_2

    .line 117
    .end local v6    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    const/4 v5, 0x0

    .line 118
    .local v5, "previewSize":Landroid/hardware/Camera$Size;
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iget v9, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v9, v9

    mul-double/2addr v7, v9

    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    div-double v0, v7, v9

    .line 119
    .local v0, "pictureRatio":D
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 121
    .restart local v6    # "size":Landroid/hardware/Camera$Size;
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    iget v10, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double v3, v8, v10

    .line 122
    .local v3, "previewRatio":D
    sub-double v8, v0, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    .line 123
    move-object v5, v6

    .line 128
    .end local v3    # "previewRatio":D
    .end local v6    # "size":Landroid/hardware/Camera$Size;
    :cond_5
    if-nez v5, :cond_6

    .line 129
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "previewSize":Landroid/hardware/Camera$Size;
    check-cast v5, Landroid/hardware/Camera$Size;

    .line 132
    .restart local v5    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_6
    const-string/jumbo v7, "preview size"

    invoke-virtual {p0, v7, v5}, Lcom/liquable/nemo/camera/model/CameraManager;->debugSize(Ljava/lang/String;Landroid/hardware/Camera$Size;)V

    .line 133
    const-string/jumbo v7, "picture size"

    invoke-virtual {p0, v7, v2}, Lcom/liquable/nemo/camera/model/CameraManager;->debugSize(Ljava/lang/String;Landroid/hardware/Camera$Size;)V

    .line 135
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getBestFitPreviewAndPictureSizeWithScreenSize(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Landroid/hardware/Camera$Size;",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .local p3, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_0

    .line 144
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    :cond_0
    const/4 v4, 0x0

    .line 179
    :goto_0
    return-object v4

    .line 148
    :cond_1
    invoke-static {p1}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 150
    .local v2, "screenWidth":I
    iget-object v4, p0, Lcom/liquable/nemo/camera/model/CameraManager;->sizeComparator:Ljava/util/Comparator;

    invoke-static {p2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    iget-object v4, p0, Lcom/liquable/nemo/camera/model/CameraManager;->sizeComparator:Ljava/util/Comparator;

    invoke-static {p3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    const/4 v0, 0x0

    .line 157
    .local v0, "pictureSize":Landroid/hardware/Camera$Size;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 158
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    if-eq v5, v6, :cond_2

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    if-lt v5, v2, :cond_2

    .line 160
    invoke-direct {p0, v3, p3}, Lcom/liquable/nemo/camera/model/CameraManager;->findPictureSizeByPreviewSize(Landroid/hardware/Camera$Size;Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_2

    .line 162
    move-object v1, v3

    .line 168
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    if-eqz v1, :cond_4

    if-nez v0, :cond_6

    .line 169
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-direct {p0, v4, p3}, Lcom/liquable/nemo/camera/model/CameraManager;->findPictureSizeByPreviewSize(Landroid/hardware/Camera$Size;Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 171
    if-nez v0, :cond_5

    .line 172
    invoke-virtual {p0, p2, p3}, Lcom/liquable/nemo/camera/model/CameraManager;->getBestFitPreviewAndPictureSize(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_0

    .line 174
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    check-cast v1, Landroid/hardware/Camera$Size;

    .line 177
    .restart local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_6
    const-string/jumbo v4, "Compare with screen width, preview size"

    invoke-virtual {p0, v4, v1}, Lcom/liquable/nemo/camera/model/CameraManager;->debugSize(Ljava/lang/String;Landroid/hardware/Camera$Size;)V

    .line 178
    const-string/jumbo v4, "Compare with screen width, picture size"

    invoke-virtual {p0, v4, v0}, Lcom/liquable/nemo/camera/model/CameraManager;->debugSize(Ljava/lang/String;Landroid/hardware/Camera$Size;)V

    .line 179
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getBestFitPreviewSizeForVideo(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .local p1, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v3, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 185
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v3

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/camera/model/CameraManager;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 190
    .local v0, "camcorderProfile":Landroid/media/CamcorderProfile;
    if-eqz v0, :cond_0

    .line 194
    iget-object v7, p0, Lcom/liquable/nemo/camera/model/CameraManager;->sizeComparator:Ljava/util/Comparator;

    invoke-static {p1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 195
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, "previewSize":Landroid/hardware/Camera$Size;
    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v7, v7

    mul-double/2addr v7, v12

    iget v9, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v9, v9

    div-double v5, v7, v9

    .line 200
    .local v5, "videoRatio":D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 201
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    iget v9, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-gt v8, v9, :cond_2

    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    iget v9, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-gt v8, v9, :cond_2

    .line 205
    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    mul-double/2addr v8, v12

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double v1, v8, v10

    .line 206
    .local v1, "previewRatio":D
    sub-double v8, v5, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 207
    move-object v3, v4

    .line 212
    .end local v1    # "previewRatio":D
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    const-string/jumbo v7, "preview size for video"

    invoke-virtual {p0, v7, v3}, Lcom/liquable/nemo/camera/model/CameraManager;->debugSize(Ljava/lang/String;Landroid/hardware/Camera$Size;)V

    goto :goto_0
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 8

    .prologue
    .line 218
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 219
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 236
    :cond_0
    return-object v3

    .line 222
    :cond_1
    const/4 v4, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 224
    .local v2, "qualities":[I
    const/4 v3, 0x0

    .line 225
    .local v3, "selectedProfile":Landroid/media/CamcorderProfile;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v1, v2, v4

    .line 226
    .local v1, "q":I
    invoke-static {v1}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 225
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    :cond_3
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 231
    .local v0, "profile":Landroid/media/CamcorderProfile;
    if-eqz v3, :cond_4

    iget v6, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ge v6, v7, :cond_2

    iget v6, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ge v6, v7, :cond_2

    .line 233
    :cond_4
    move-object v3, v0

    goto :goto_1

    .line 222
    :array_0
    .array-data 4
        0x4
        0x3
        0x2
        0x7
    .end array-data
.end method

.method public getFileInGallery()Ljava/io/File;
    .locals 7

    .prologue
    .line 240
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd_HHmmss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "timeStamp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cubie_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "imageFileName":Ljava/lang/String;
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 244
    .local v1, "dcimDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "Camera"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 248
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v4
.end method

.method public getTempPhotoFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const-string/jumbo v1, "camera.jpg"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getTempVideoFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const-string/jumbo v1, "camera.mp4"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
