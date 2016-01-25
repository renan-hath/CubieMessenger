.class Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChattingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ChattingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/chat/ChattingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/chat/ChattingActivity$1;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;-><init>(Lcom/liquable/nemo/chat/ChattingActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 358
    const-string/jumbo v1, "com.liquable.nemo.android.service.CONNECTION_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    const-string/jumbo v1, "com.liquable.nemo.android.service.KEY_CONNECT_STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    .line 360
    .local v0, "state":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->connectionStateTextView:Lcom/liquable/nemo/chat/ConnectionStateTextView;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$000(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/ConnectionStateTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/ConnectionStateTextView;->show(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    .line 361
    sget-object v1, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->CONNECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    if-ne v1, v0, :cond_0

    .line 362
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$ConnectionStateBroadcastReceiver;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->updateMediaMountStateTextView()V

    .line 365
    .end local v0    # "state":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
    :cond_0
    return-void
.end method
