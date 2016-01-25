.class Lcom/liquable/nemo/main/MainCameraView$1;
.super Ljava/lang/Object;
.source "MainCameraView.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/main/MainCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainCameraView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$1;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 169
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$1;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;
    invoke-static {v5}, Lcom/liquable/nemo/main/MainCameraView;->access$100(Lcom/liquable/nemo/main/MainCameraView;)Lcom/liquable/nemo/camera/model/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/camera/model/CameraManager;->getTempPhotoFile()Ljava/io/File;

    move-result-object v0

    .line 170
    .local v0, "capturedFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 171
    sget-object v5, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "Error creating media file, check storage permissions"

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 175
    :cond_0
    sget-object v5, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPictureTaken:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 178
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 179
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 180
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->isSaveOriginalPhoto()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$1;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;
    invoke-static {v5}, Lcom/liquable/nemo/main/MainCameraView;->access$100(Lcom/liquable/nemo/main/MainCameraView;)Lcom/liquable/nemo/camera/model/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/camera/model/CameraManager;->getFileInGallery()Ljava/io/File;

    move-result-object v2

    .line 189
    .local v2, "fileInGallery":Ljava/io/File;
    :try_start_1
    invoke-static {v0, v2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_1
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$1;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-virtual {v5}, Lcom/liquable/nemo/main/MainCameraView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/liquable/nemo/camera/model/CameraManager;->intentScanPic(Landroid/content/Context;Landroid/net/Uri;)V

    .line 196
    .end local v2    # "fileInGallery":Ljava/io/File;
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 197
    .local v3, "fileUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$1;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-virtual {v5}, Lcom/liquable/nemo/main/MainCameraView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;

    iget-object v6, p0, Lcom/liquable/nemo/main/MainCameraView$1;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->isUsingFrontFacingCamera()Z
    invoke-static {v6}, Lcom/liquable/nemo/main/MainCameraView;->access$200(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v6

    invoke-interface {v5, v3, v6}, Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;->onPictureTaken(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 181
    .end local v3    # "fileUri":Landroid/net/Uri;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error accessing file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fileInGallery":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 191
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
