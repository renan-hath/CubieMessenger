.class Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ImagePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureByCamera"
.end annotation


# instance fields
.field private final lastImageId:I

.field final synthetic this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V
    .locals 1

    .prologue
    .line 221
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-static {p1}, Lcom/liquable/nemo/android/provider/Medias;->getLastImageId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;->lastImageId:I

    .line 227
    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

    .prologue
    .line 218
    iget v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;->lastImageId:I

    return v0
.end method
