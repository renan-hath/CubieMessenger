.class Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;
.super Ljava/lang/Object;
.source "FileTransferAndroidService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/FileTransferAndroidService;->triggerMediaScannerIfRequired(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

.field final synthetic val$localFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    iput-object p2, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;->val$localFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 628
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;->val$localFile:Ljava/io/File;

    .line 629
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 628
    invoke-static {v0, v1, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 632
    return-void
.end method
