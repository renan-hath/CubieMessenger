.class Lcom/liquable/nemo/cubiehead/ChattingLite$1;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$1;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$1;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    check-cast p2, Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;->getFileTransferInfo()Lcom/liquable/nemo/android/service/FileTransferInfo;

    move-result-object v1

    # setter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;
    invoke-static {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$002(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/android/service/FileTransferInfo;)Lcom/liquable/nemo/android/service/FileTransferInfo;

    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$1;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->updateMessageFileTransferState()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$100(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    .line 135
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$1;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;
    invoke-static {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$002(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/android/service/FileTransferInfo;)Lcom/liquable/nemo/android/service/FileTransferInfo;

    .line 140
    return-void
.end method
