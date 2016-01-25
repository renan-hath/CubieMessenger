.class Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler$1;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler$1;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;

    .line 2666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler$1;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;

    iget-object v0, v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    invoke-static {v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$UploadHandler;->deleteBlobsAndSessions(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)V

    .line 2671
    return-void
.end method
