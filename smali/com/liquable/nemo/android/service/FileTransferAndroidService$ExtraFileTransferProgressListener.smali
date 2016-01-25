.class Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;
.super Ljava/lang/Object;
.source "FileTransferAndroidService.java"

# interfaces
.implements Lcom/liquable/nemo/storage/aws/DataTransferProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/FileTransferAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtraFileTransferProgressListener"
.end annotation


# instance fields
.field private final filePath:Ljava/lang/String;

.field private final receiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;->filePath:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;->receiver:Landroid/os/ResultReceiver;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/lang/String;Landroid/os/ResultReceiver;Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/ResultReceiver;
    .param p4, "x3"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService$1;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;-><init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;->filePath:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;->receiver:Landroid/os/ResultReceiver;

    const/4 v4, 0x0

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->endExtraTransferTask(Ljava/lang/String;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$000(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/lang/String;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V

    .line 48
    return-void
.end method

.method public onDataTransfered(D)V
    .locals 2
    .param p1, "percentage"    # D

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;->receiver:Landroid/os/ResultReceiver;

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->sendProgressMessage(DLandroid/os/ResultReceiver;)V
    invoke-static {v0, p1, p2, v1}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$100(Lcom/liquable/nemo/android/service/FileTransferAndroidService;DLandroid/os/ResultReceiver;)V

    .line 53
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 5
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "ERROR_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 59
    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    iget-object v2, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;->filePath:Ljava/lang/String;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$ExtraFileTransferProgressListener;->receiver:Landroid/os/ResultReceiver;

    # invokes: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->endExtraTransferTask(Ljava/lang/String;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$000(Lcom/liquable/nemo/android/service/FileTransferAndroidService;Ljava/lang/String;ILandroid/os/ResultReceiver;Landroid/os/Bundle;)V

    .line 60
    return-void
.end method
