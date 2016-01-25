.class public Lcom/liquable/nemo/main/CameraMode;
.super Ljava/lang/Object;
.source "CameraMode.java"


# instance fields
.field public cameraId:I

.field public flashMode:Ljava/lang/String;

.field public isSecretMode:Z

.field public isVideoMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p1, "flashMode"    # Ljava/lang/String;
    .param p2, "cameraId"    # I
    .param p3, "isVideoMode"    # Z
    .param p4, "isSecretMode"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liquable/nemo/main/CameraMode;->flashMode:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/liquable/nemo/main/CameraMode;->cameraId:I

    .line 16
    iput-boolean p3, p0, Lcom/liquable/nemo/main/CameraMode;->isVideoMode:Z

    .line 17
    iput-boolean p4, p0, Lcom/liquable/nemo/main/CameraMode;->isSecretMode:Z

    .line 18
    return-void
.end method
