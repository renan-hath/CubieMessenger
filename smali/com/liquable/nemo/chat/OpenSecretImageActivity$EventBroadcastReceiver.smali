.class Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpenSecretImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/OpenSecretImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/chat/OpenSecretImageActivity;Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/chat/OpenSecretImageActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;-><init>(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    const-string/jumbo v3, "com.liquable.nemo.chat.model.MEDIA_MESSAGE_TRANSFER_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string/jumbo v3, "com.liquable.nemo.chat.model.KEY_REMOTE_KEYPATH"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 58
    .local v2, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    .line 59
    .local v0, "event":Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;
    iget-object v3, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    # getter for: Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;
    invoke-static {v3}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->access$000(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Lcom/liquable/nemo/message/model/SecretPictureMessage;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    # getter for: Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;
    invoke-static {v3}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->access$000(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Lcom/liquable/nemo/message/model/SecretPictureMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getAllRemoteKeyPaths()Ljava/util/List;

    move-result-object v3

    .line 60
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    sget-object v3, Lcom/liquable/nemo/chat/OpenSecretImageActivity$2;->$SwitchMap$com$liquable$nemo$chat$model$MediaMessageTransferEvent:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    # invokes: Lcom/liquable/nemo/chat/OpenSecretImageActivity;->renderImage()V
    invoke-static {v3}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->access$100(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v3, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    const v4, 0x7f0d01c6

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 72
    :pswitch_2
    const-string/jumbo v3, "com.liquable.nemo.chat.model.KEY_PROGRESS"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, "progress":I
    iget-object v3, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    # getter for: Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;
    invoke-static {v3}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->access$000(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Lcom/liquable/nemo/message/model/SecretPictureMessage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->updateTransferAsTransfering(I)V

    .line 74
    iget-object v3, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    # getter for: Lcom/liquable/nemo/chat/OpenSecretImageActivity;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;
    invoke-static {v3}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->access$200(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Lcom/liquable/nemo/widget/TransferProgressBar;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    # getter for: Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;
    invoke-static {v4}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->access$000(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Lcom/liquable/nemo/message/model/SecretPictureMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/widget/TransferProgressBar;->update(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
