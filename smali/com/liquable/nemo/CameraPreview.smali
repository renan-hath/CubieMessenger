.class public Lcom/liquable/nemo/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/CameraPreview$OnPreviewStartedListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private final mHolder:Landroid/view/SurfaceHolder;

.field private onPreviewStartedListener:Lcom/liquable/nemo/CameraPreview$OnPreviewStartedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/liquable/nemo/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 34
    invoke-virtual {p0}, Lcom/liquable/nemo/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public removeCamera()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 42
    return-void
.end method

.method public setMediaRecorderPreviewDisplay(Landroid/media/MediaRecorder;)V
    .locals 3
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 54
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_0

    .line 58
    sget-object v1, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "setMediaRecorderPreviewDisplay"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setOnPreviewStartedListener(Lcom/liquable/nemo/CameraPreview$OnPreviewStartedListener;)V
    .locals 0
    .param p1, "onPreviewStartedListener"    # Lcom/liquable/nemo/CameraPreview$OnPreviewStartedListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/liquable/nemo/CameraPreview;->onPreviewStartedListener:Lcom/liquable/nemo/CameraPreview$OnPreviewStartedListener;

    .line 64
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 70
    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/liquable/nemo/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 88
    sget-object v1, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "startPreview"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 90
    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->onPreviewStartedListener:Lcom/liquable/nemo/CameraPreview$OnPreviewStartedListener;

    invoke-interface {v1}, Lcom/liquable/nemo/CameraPreview$OnPreviewStartedListener;->onPreviewStarted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error starting camera preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 104
    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 105
    iget-object v1, p0, Lcom/liquable/nemo/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting camera preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 114
    return-void
.end method
