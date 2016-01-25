.class Lcom/liquable/nemo/chat/ChattingActivity$1;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ChattingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$1;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$1;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    check-cast p2, Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;->getFileTransferInfo()Lcom/liquable/nemo/android/service/FileTransferInfo;

    move-result-object v1

    # setter for: Lcom/liquable/nemo/chat/ChattingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$202(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/android/service/FileTransferInfo;)Lcom/liquable/nemo/android/service/FileTransferInfo;

    .line 381
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$1;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->updateMessageFileTransferState()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$300(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 382
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$1;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/chat/ChattingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$202(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/android/service/FileTransferInfo;)Lcom/liquable/nemo/android/service/FileTransferInfo;

    .line 387
    return-void
.end method
