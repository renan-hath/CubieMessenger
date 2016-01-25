.class public Lcom/liquable/nemo/main/MainCameraView;
.super Lcom/liquable/nemo/main/MainFragment;
.source "MainCameraView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/main/MainCameraView$ScaleListener;,
        Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;
    }
.end annotation


# static fields
.field private static final AUDIO_BITRATE:I = 0x18000

.field private static final FOCUS_AREA_SIDE:I = 0x50

.field private static final MAX_DURATION_MS:I = 0x2710

.field private static final MIN_VIDEO_DURATION:I = 0x7d0

.field private static final USE_PREVIEW:Z = true

.field private static final VIDEO_BITRATE:I = 0xb6800

.field private static acceptableFlashModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private botMask:Landroid/view/View;

.field private camera:Landroid/hardware/Camera;

.field private cameraId:I

.field private cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;

.field private cameraPreview:Lcom/liquable/nemo/CameraPreview;

.field private captureButton:Landroid/view/View;

.field private flashBtn:Landroid/widget/ImageButton;

.field private focusTarget:Landroid/view/View;

.field private frontBackBtn:Landroid/view/View;

.field private galleryBtn:Landroid/view/View;

.field private hasAutoFocus:Z

.field private hasFlashMode:Z

.field private imagePreview:Landroid/widget/ImageView;

.field private isFocusing:Z

.field private isRecording:Z

.field private isVideoMode:Z

.field private final jpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private lastFlashMode:Ljava/lang/String;

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private photoTaken:Z

.field private photoVideoSwitch:Landroid/widget/CheckBox;

.field private final previewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

.field private previewSize:Landroid/hardware/Camera$Size;

.field private previewStarted:Z

.field private recordButton:Landroid/widget/ImageButton;

.field private rootView:Landroid/view/View;

.field private rotation:I

.field private scaleDetector:Landroid/view/ScaleGestureDetector;

.field protected shouldTakePictureAfterFocus:Z

.field private startRecordTime:J

.field private topMask:Landroid/view/View;

.field private videoProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const-class v0, Lcom/liquable/nemo/main/MainCameraView;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/liquable/nemo/main/MainCameraView;->acceptableFlashModes:Ljava/util/Map;

    .line 96
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->acceptableFlashModes:Ljava/util/Map;

    const-string/jumbo v1, "auto"

    const v2, 0x7f020188

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->acceptableFlashModes:Ljava/util/Map;

    const-string/jumbo v1, "on"

    const v2, 0x7f02018e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->acceptableFlashModes:Ljava/util/Map;

    const-string/jumbo v1, "off"

    const v2, 0x7f02018b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainFragment;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraId:I

    .line 166
    new-instance v0, Lcom/liquable/nemo/main/MainCameraView$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/main/MainCameraView$1;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->jpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 201
    new-instance v0, Lcom/liquable/nemo/main/MainCameraView$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/main/MainCameraView$2;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/main/MainCameraView;)Lcom/liquable/nemo/camera/model/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/main/MainCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainCameraView;->photoTaken:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/liquable/nemo/main/MainCameraView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/liquable/nemo/main/MainCameraView;->photoTaken:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/main/MainCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainCameraView;->previewStarted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/liquable/nemo/main/MainCameraView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/liquable/nemo/main/MainCameraView;->previewStarted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/main/MainCameraView;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/main/MainCameraView;)Lcom/liquable/nemo/main/CameraPreviewContainer;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/main/MainCameraView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->focusTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->takePicture()V

    return-void
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/main/MainCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainCameraView;->isRecording:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/liquable/nemo/main/MainCameraView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/liquable/nemo/main/MainCameraView;->isRecording:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/main/MainCameraView;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/liquable/nemo/main/MainCameraView;->startRecordTime:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/liquable/nemo/main/MainCameraView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;
    .param p1, "x1"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/liquable/nemo/main/MainCameraView;->startRecordTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->stopRecording()V

    return-void
.end method

.method static synthetic access$1900(Lcom/liquable/nemo/main/MainCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->prepareVideoRecorder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/main/MainCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->isUsingFrontFacingCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->setButtonsWithRecording()V

    return-void
.end method

.method static synthetic access$2100(Lcom/liquable/nemo/main/MainCameraView;)Landroid/media/MediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/liquable/nemo/main/MainCameraView;J)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;
    .param p1, "x1"    # J

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/main/MainCameraView;->updateDuration(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->setTimerToUpdateDuration()V

    return-void
.end method

.method static synthetic access$2400(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$2500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->acceptableFlashModes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/liquable/nemo/main/MainCameraView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView;->lastFlashMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->updateFlashModeButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/main/MainCameraView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->imagePreview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/main/MainCameraView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget v0, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraId:I

    return v0
.end method

.method static synthetic access$402(Lcom/liquable/nemo/main/MainCameraView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraId:I

    return p1
.end method

.method static synthetic access$500(Lcom/liquable/nemo/main/MainCameraView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rotation:I

    return v0
.end method

.method static synthetic access$502(Lcom/liquable/nemo/main/MainCameraView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/liquable/nemo/main/MainCameraView;->rotation:I

    return p1
.end method

.method static synthetic access$600(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->setVideoOrPhotoMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/main/MainCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainCameraView;->hasAutoFocus:Z

    return v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/main/MainCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainCameraView;->isFocusing:Z

    return v0
.end method

.method static synthetic access$802(Lcom/liquable/nemo/main/MainCameraView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/liquable/nemo/main/MainCameraView;->isFocusing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/liquable/nemo/main/MainCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    return v0
.end method

.method private getCameraInstance()V
    .locals 4

    .prologue
    .line 250
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 251
    sget-object v1, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "getCameraInstance: Camera exists, return"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 256
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 257
    sget-object v1, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCameraInstance: id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 258
    iget v1, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraId:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_1
    sget-object v1, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCameraInstance: camera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->setZoomCallback()V

    .line 273
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->setAutoFlashMode()V

    .line 274
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->setAutoFocusMode()V

    goto :goto_0

    .line 260
    :cond_1
    :try_start_1
    sget-object v1, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "getCameraInstance"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v1}, Lcom/liquable/nemo/client/ServerType;->isTestOnProduction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "camera open failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 267
    :cond_2
    sget-object v1, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error opening camera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isUsingFrontFacingCamera()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 284
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1

    .line 285
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 286
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v3, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraId:I

    invoke-static {v3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 287
    sget-object v3, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CameraInfo.facing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 288
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v1, :cond_0

    .line 290
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :goto_0
    return v1

    .restart local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    move v1, v2

    .line 288
    goto :goto_0

    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    move v1, v2

    .line 290
    goto :goto_0
.end method

.method private prepareVideoRecorder()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 573
    sget-object v4, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v5, "prepareVideoRecorder"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 575
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 578
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->unlock()V

    .line 579
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 582
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 583
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 586
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/camera/model/CameraManager;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 587
    .local v1, "selectedProfile":Landroid/media/CamcorderProfile;
    if-nez v1, :cond_0

    .line 645
    :goto_0
    return v2

    .line 591
    :cond_0
    const v4, 0xb6800

    iput v4, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 592
    const v4, 0x18000

    iput v4, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 593
    sget-object v4, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "camcorder profile: fileFormat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " audioCodec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " audioBitRate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " audioSampleRate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\nvideoCodec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " videoFrameWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " videoFrameHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " videoFrameRate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " videoBitRate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 611
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 614
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;

    invoke-virtual {v5}, Lcom/liquable/nemo/camera/model/CameraManager;->getTempVideoFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 617
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 618
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    new-instance v5, Lcom/liquable/nemo/main/MainCameraView$10;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/main/MainCameraView$10;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 628
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_1

    .line 629
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    iget v5, p0, Lcom/liquable/nemo/main/MainCameraView;->rotation:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 634
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraPreview:Lcom/liquable/nemo/CameraPreview;

    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/CameraPreview;->setMediaRecorderPreviewDisplay(Landroid/media/MediaRecorder;)V

    .line 635
    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    .line 645
    goto/16 :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IllegalStateException preparing MediaRecorder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 638
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->releaseMediaRecorder()V

    goto/16 :goto_0

    .line 640
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 641
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException preparing MediaRecorder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 642
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->releaseMediaRecorder()V

    goto/16 :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    .line 649
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseMediaRecorder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 652
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 654
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 656
    :cond_0
    return-void
.end method

.method private setAutoFlashMode()V
    .locals 4

    .prologue
    .line 659
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 660
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 661
    .local v0, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    const-string/jumbo v2, "auto"

    .line 662
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->isUsingFrontFacingCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 664
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->hasFlashMode:Z

    .line 665
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->flashBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/liquable/nemo/main/MainCameraView$11;

    invoke-direct {v3, p0, v0}, Lcom/liquable/nemo/main/MainCameraView$11;-><init>(Lcom/liquable/nemo/main/MainCameraView;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->lastFlashMode:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 688
    const-string/jumbo v2, "auto"

    iput-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->lastFlashMode:Ljava/lang/String;

    .line 689
    const-string/jumbo v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 693
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 694
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->updateFlashModeButton()V

    .line 699
    :goto_1
    return-void

    .line 691
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->lastFlashMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->hasFlashMode:Z

    .line 697
    sget-object v2, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "no flash modes or auto flash mode not supported"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setAutoFocusMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 703
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 704
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 706
    .local v1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 707
    :cond_0
    sget-object v2, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "no supported focus modes"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 730
    :cond_1
    :goto_0
    return-void

    .line 711
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_3

    .line 712
    const-string/jumbo v2, "continuous-picture"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 713
    const-string/jumbo v2, "continuous-picture"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 714
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 715
    iput-boolean v4, p0, Lcom/liquable/nemo/main/MainCameraView;->hasAutoFocus:Z

    .line 716
    sget-object v2, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "auto focus mode:continuous-picture"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 720
    :cond_3
    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->hasAutoFocus:Z

    if-nez v2, :cond_4

    const-string/jumbo v2, "auto"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 721
    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 722
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 723
    iput-boolean v4, p0, Lcom/liquable/nemo/main/MainCameraView;->hasAutoFocus:Z

    .line 724
    sget-object v2, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "auto focus mode:auto"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 727
    :cond_4
    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->hasAutoFocus:Z

    if-nez v2, :cond_1

    .line 728
    sget-object v2, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "no auto focus"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBestFitPreviewAndPictureSize()V
    .locals 7

    .prologue
    .line 733
    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 734
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;

    .line 735
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainCameraView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 736
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 737
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    .line 734
    invoke-virtual {v3, v4, v5, v6}, Lcom/liquable/nemo/camera/model/CameraManager;->getBestFitPreviewAndPictureSizeWithScreenSize(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v2

    .line 739
    .local v2, "previewAndPictureSize":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;>;"
    if-nez v2, :cond_0

    .line 749
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$Size;

    iput-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->previewSize:Landroid/hardware/Camera$Size;

    .line 744
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 746
    .local v1, "pictureSize":Landroid/hardware/Camera$Size;
    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->previewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->previewSize:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 747
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 748
    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method private setButtonsWithRecording()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 753
    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->isRecording:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    .line 754
    .local v0, "visibility":I
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->frontBackBtn:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 755
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->frontBackBtn:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 757
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->photoVideoSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 758
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->galleryBtn:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->recordButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->isRecording:Z

    if-eqz v2, :cond_2

    const v2, 0x7f02019e

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 762
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->videoProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 763
    return-void

    .end local v0    # "visibility":I
    :cond_1
    move v0, v1

    .line 753
    goto :goto_0

    .line 759
    .restart local v0    # "visibility":I
    :cond_2
    const v2, 0x7f02019b

    goto :goto_1
.end method

.method private setTimerToUpdateDuration()V
    .locals 4

    .prologue
    .line 766
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/main/MainCameraView$12;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainCameraView$12;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 776
    return-void
.end method

.method private setVideoOrPhotoMode()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 779
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 817
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->photoVideoSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    .line 784
    sget-object v2, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setVideoOrPhotoMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 786
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView;->videoProgressBar:Landroid/widget/ProgressBar;

    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 787
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView;->captureButton:Landroid/view/View;

    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView;->recordButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 789
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView;->topMask:Landroid/view/View;

    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 790
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView;->botMask:Landroid/view/View;

    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    if-eqz v2, :cond_5

    move v2, v4

    :goto_5
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->hasFlashMode:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    if-nez v2, :cond_6

    .line 792
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->flashBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 797
    :goto_6
    iget-boolean v2, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    if-eqz v2, :cond_8

    .line 798
    sget-object v2, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "change to video mode"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 799
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 800
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/camera/model/CameraManager;->getBestFitPreviewSizeForVideo(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 801
    .local v1, "sizeForVideo":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_7

    .line 802
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/main/CameraPreviewContainer;->setPreviewSize(II)V

    .line 803
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 804
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 816
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "sizeForVideo":Landroid/hardware/Camera$Size;
    :goto_7
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

    iget-boolean v3, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/main/CameraPreviewContainer;->setIsVideoMode(Z)V

    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 786
    goto :goto_1

    :cond_2
    move v2, v3

    .line 787
    goto :goto_2

    :cond_3
    move v2, v4

    .line 788
    goto :goto_3

    :cond_4
    move v2, v3

    .line 789
    goto :goto_4

    :cond_5
    move v2, v3

    .line 790
    goto :goto_5

    .line 794
    :cond_6
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->flashBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_6

    .line 808
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v1    # "sizeForVideo":Landroid/hardware/Camera$Size;
    :cond_7
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->setBestFitPreviewAndPictureSize()V

    .line 809
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->previewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->previewSize:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/main/CameraPreviewContainer;->setPreviewSize(II)V

    goto :goto_7

    .line 812
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "sizeForVideo":Landroid/hardware/Camera$Size;
    :cond_8
    sget-object v2, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "change to camera mode"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 813
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->setBestFitPreviewAndPictureSize()V

    .line 814
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->previewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->previewSize:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/main/CameraPreviewContainer;->setPreviewSize(II)V

    goto :goto_7
.end method

.method private setZoomCallback()V
    .locals 7

    .prologue
    .line 820
    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 821
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 822
    new-instance v3, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainCameraView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/liquable/nemo/main/MainCameraView$ScaleListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/liquable/nemo/main/MainCameraView$ScaleListener;-><init>(Lcom/liquable/nemo/main/MainCameraView;Lcom/liquable/nemo/main/MainCameraView$1;)V

    invoke-direct {v3, v4, v5}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    .line 823
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    .line 824
    .local v2, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 825
    .local v1, "zoomRatio":Ljava/lang/Integer;
    sget-object v4, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCameraInstance: zoomRatio:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 828
    .end local v1    # "zoomRatio":Ljava/lang/Integer;
    .end local v2    # "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private stopRecording()V
    .locals 7

    .prologue
    .line 911
    sget-object v1, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "stop recording"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 913
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liquable/nemo/main/MainCameraView;->isRecording:Z

    .line 914
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->setButtonsWithRecording()V

    .line 916
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 917
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->releaseMediaRecorder()V

    .line 919
    new-instance v0, Lcom/liquable/nemo/share/SharableVideo;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/camera/model/CameraManager;->getTempVideoFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/liquable/nemo/main/MainCameraView;->startRecordTime:J

    sub-long/2addr v3, v5

    .line 922
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->isUsingFrontFacingCamera()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->front:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/share/SharableVideo;-><init>(Landroid/net/Uri;ZJLcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;)V

    .line 923
    .local v0, "video":Lcom/liquable/nemo/share/SharableVideo;
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainCameraView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;->onVideoTaken(Lcom/liquable/nemo/share/SharableVideo;)V

    .line 924
    return-void

    .line 922
    .end local v0    # "video":Lcom/liquable/nemo/share/SharableVideo;
    :cond_0
    sget-object v5, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->rear:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    goto :goto_0
.end method

.method private takePicture()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 930
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainCameraView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 931
    .local v0, "audioMgr":Landroid/media/AudioManager;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 933
    .local v1, "volume":I
    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 934
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    new-instance v3, Lcom/liquable/nemo/main/MainCameraView$14;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/main/MainCameraView$14;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    iget-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->jpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v2, v3, v5, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->jpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v2, v5, v5, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method private updateDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    const/16 v2, 0x2710

    .line 945
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->videoProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 946
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->videoProgressBar:Landroid/widget/ProgressBar;

    long-to-int v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 947
    return-void
.end method

.method private updateFlashModeButton()V
    .locals 3

    .prologue
    .line 950
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFlashModeButton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->lastFlashMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->flashBtn:Landroid/widget/ImageButton;

    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->acceptableFlashModes:Ljava/util/Map;

    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->lastFlashMode:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 952
    return-void
.end method


# virtual methods
.method protected doOnPause()V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "doOnPause"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainCameraView;->stop()V

    .line 240
    return-void
.end method

.method protected doOnResume()V
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "doOnResume"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainCameraView;->start()V

    .line 246
    return-void
.end method

.method protected getMustImplementedCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragmentCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    const-class v0, Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 295
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/liquable/nemo/chat/ChattingRequestCode;->SEND_VIDEO_FROM_MAIN_TAB:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/camera/model/CameraManager;->deleteTempVideoFile()V

    .line 299
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/liquable/nemo/main/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 306
    new-instance v0, Lcom/liquable/nemo/camera/model/CameraManager;

    invoke-direct {v0}, Lcom/liquable/nemo/camera/model/CameraManager;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;

    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 309
    new-instance v0, Lcom/liquable/nemo/main/MainCameraView$3;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainCameraView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/liquable/nemo/main/MainCameraView$3;-><init>(Lcom/liquable/nemo/main/MainCameraView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 335
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 342
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "onCreateView"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 343
    const v0, 0x7f03012c

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    .line 344
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    const v1, 0x7f0802d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->focusTarget:Landroid/view/View;

    .line 345
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->videoProgressBar:Landroid/widget/ProgressBar;

    .line 346
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    const v1, 0x7f0802d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->topMask:Landroid/view/View;

    .line 347
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    const v1, 0x7f0802d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->botMask:Landroid/view/View;

    .line 348
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    const v1, 0x7f0802d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/main/CameraPreviewContainer;

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

    .line 349
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    const v1, 0x7f0802d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->flashBtn:Landroid/widget/ImageButton;

    .line 350
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    const v1, 0x7f0802d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->photoVideoSwitch:Landroid/widget/CheckBox;

    .line 351
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->photoVideoSwitch:Landroid/widget/CheckBox;

    new-instance v1, Lcom/liquable/nemo/main/MainCameraView$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainCameraView$4;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 357
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

    new-instance v1, Lcom/liquable/nemo/main/MainCameraView$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainCameraView$5;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/main/CameraPreviewContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 481
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    const v1, 0x7f0802d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->recordButton:Landroid/widget/ImageButton;

    .line 482
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->recordButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/liquable/nemo/main/MainCameraView$6;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainCameraView$6;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    const v1, 0x7f0802d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->captureButton:Landroid/view/View;

    .line 518
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->captureButton:Landroid/view/View;

    new-instance v1, Lcom/liquable/nemo/main/MainCameraView$7;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainCameraView$7;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    const v1, 0x7f0802cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->galleryBtn:Landroid/view/View;

    .line 538
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->galleryBtn:Landroid/view/View;

    new-instance v1, Lcom/liquable/nemo/main/MainCameraView$8;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainCameraView$8;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    const v1, 0x7f0802d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->frontBackBtn:Landroid/view/View;

    .line 546
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->frontBackBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->frontBackBtn:Landroid/view/View;

    new-instance v1, Lcom/liquable/nemo/main/MainCameraView$9;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainCameraView$9;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainCameraView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;

    invoke-interface {v0}, Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;->onCameraReady()V

    .line 562
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView;->rootView:Landroid/view/View;

    return-object v0

    .line 558
    :cond_0
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "only 1 camera is available"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 567
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "onDestroy"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 568
    invoke-super {p0}, Lcom/liquable/nemo/main/MainFragment;->onDestroy()V

    .line 569
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 831
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 832
    sget-object v1, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 834
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getCameraMode()Lcom/liquable/nemo/main/CameraMode;

    move-result-object v0

    .line 835
    .local v0, "config":Lcom/liquable/nemo/main/CameraMode;
    iget v1, v0, Lcom/liquable/nemo/main/CameraMode;->cameraId:I

    iput v1, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraId:I

    .line 836
    iget-object v1, v0, Lcom/liquable/nemo/main/CameraMode;->flashMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->lastFlashMode:Ljava/lang/String;

    .line 838
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->getCameraInstance()V

    .line 839
    iget-boolean v1, v0, Lcom/liquable/nemo/main/CameraMode;->isVideoMode:Z

    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->photoVideoSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 840
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->setVideoOrPhotoMode()V

    .line 845
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/main/CameraPreviewContainer;->setCamera(Landroid/hardware/Camera;)V

    .line 846
    iput-boolean v4, p0, Lcom/liquable/nemo/main/MainCameraView;->previewStarted:Z

    .line 848
    new-instance v1, Lcom/liquable/nemo/CameraPreview;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainCameraView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/CameraPreview;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraPreview:Lcom/liquable/nemo/CameraPreview;

    .line 849
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraPreview:Lcom/liquable/nemo/CameraPreview;

    new-instance v2, Lcom/liquable/nemo/main/MainCameraView$13;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/main/MainCameraView$13;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/CameraPreview;->setOnPreviewStartedListener(Lcom/liquable/nemo/CameraPreview$OnPreviewStartedListener;)V

    .line 855
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraPreview:Lcom/liquable/nemo/CameraPreview;

    invoke-virtual {v1, v2, v4}, Lcom/liquable/nemo/main/CameraPreviewContainer;->addView(Landroid/view/View;I)V

    .line 865
    iput-boolean v4, p0, Lcom/liquable/nemo/main/MainCameraView;->photoTaken:Z

    .line 866
    iput-boolean v4, p0, Lcom/liquable/nemo/main/MainCameraView;->isFocusing:Z

    .line 867
    iput-boolean v4, p0, Lcom/liquable/nemo/main/MainCameraView;->shouldTakePictureAfterFocus:Z

    .line 868
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 872
    .end local v0    # "config":Lcom/liquable/nemo/main/CameraMode;
    :cond_0
    return-void

    .line 842
    .restart local v0    # "config":Lcom/liquable/nemo/main/CameraMode;
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->photoVideoSwitch:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Lcom/liquable/nemo/main/CameraMode;->isVideoMode:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 875
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 876
    sget-object v1, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "stop"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 882
    :cond_0
    new-instance v0, Lcom/liquable/nemo/main/CameraMode;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->lastFlashMode:Ljava/lang/String;

    iget v2, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraId:I

    iget-boolean v3, p0, Lcom/liquable/nemo/main/MainCameraView;->isVideoMode:Z

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/liquable/nemo/main/CameraMode;-><init>(Ljava/lang/String;IZZ)V

    .line 883
    .local v0, "config":Lcom/liquable/nemo/main/CameraMode;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/Pref;->setCameraMode(Lcom/liquable/nemo/main/CameraMode;)V

    .line 884
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->releaseMediaRecorder()V

    .line 886
    iget-boolean v1, p0, Lcom/liquable/nemo/main/MainCameraView;->isRecording:Z

    if-eqz v1, :cond_1

    .line 887
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraManager:Lcom/liquable/nemo/camera/model/CameraManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/camera/model/CameraManager;->deleteTempVideoFile()V

    .line 888
    iput-boolean v5, p0, Lcom/liquable/nemo/main/MainCameraView;->isRecording:Z

    .line 889
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainCameraView;->setButtonsWithRecording()V

    .line 892
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->focusTarget:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 893
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 894
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

    invoke-virtual {v1, v4}, Lcom/liquable/nemo/main/CameraPreviewContainer;->setCamera(Landroid/hardware/Camera;)V

    .line 896
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraPreview:Lcom/liquable/nemo/CameraPreview;

    invoke-virtual {v1}, Lcom/liquable/nemo/CameraPreview;->removeCamera()V

    .line 897
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->previewContainer:Lcom/liquable/nemo/main/CameraPreviewContainer;

    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraPreview:Lcom/liquable/nemo/CameraPreview;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/main/CameraPreviewContainer;->removeView(Landroid/view/View;)V

    .line 898
    iput-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->cameraPreview:Lcom/liquable/nemo/CameraPreview;

    .line 904
    sget-object v1, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "releasing camera"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 906
    iput-object v4, p0, Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;

    .line 908
    .end local v0    # "config":Lcom/liquable/nemo/main/CameraMode;
    :cond_2
    return-void
.end method
