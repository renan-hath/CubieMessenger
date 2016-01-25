.class public Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;
.super Landroid/os/Binder;
.source "FileTransferAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/FileTransferAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileTransferInfo()Lcom/liquable/nemo/android/service/FileTransferInfo;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;->this$0:Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/FileTransferAndroidService;->fileTransferInfoImpl:Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;
    invoke-static {v0}, Lcom/liquable/nemo/android/service/FileTransferAndroidService;->access$600(Lcom/liquable/nemo/android/service/FileTransferAndroidService;)Lcom/liquable/nemo/android/service/FileTransferAndroidService$FileTransferInfoImpl;

    move-result-object v0

    return-object v0
.end method
