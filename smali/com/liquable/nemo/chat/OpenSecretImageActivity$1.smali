.class Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;
.super Ljava/lang/Object;
.source "OpenSecretImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/OpenSecretImageActivity;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    # getter for: Lcom/liquable/nemo/chat/OpenSecretImageActivity;->activityStopped:Z
    invoke-static {v0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->access$400(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->finish()V

    .line 218
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    # getter for: Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->access$500(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Lcom/liquable/nemo/message/view/SecretCountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    # getter for: Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;
    invoke-static {v1}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->access$000(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Lcom/liquable/nemo/message/model/SecretPictureMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->timeToExpireInMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/message/view/SecretCountDownView;->update(J)V

    .line 213
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    # getter for: Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;
    invoke-static {v0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->access$000(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Lcom/liquable/nemo/message/model/SecretPictureMessage;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/message/model/ISecret$State;->OPENED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    # getter for: Lcom/liquable/nemo/chat/OpenSecretImageActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->access$600(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;->this$0:Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->finish()V

    goto :goto_0
.end method
