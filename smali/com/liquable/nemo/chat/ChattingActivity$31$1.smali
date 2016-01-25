.class Lcom/liquable/nemo/chat/ChattingActivity$31$1;
.super Landroid/os/AsyncTask;
.source "ChattingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity$31;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/ChattingActivity$31;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity$31;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/ChattingActivity$31;

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$31$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$31;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1793
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$31$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$31;

    iget-object v2, v0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$31$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$31;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    check-cast v0, Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->savePaint(Landroid/content/Context;Lcom/liquable/nemo/message/model/PaintMessage;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1790
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$31$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 1799
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$31$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$31;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v1, 0x7f0d045d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1802
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1808
    :goto_0
    return-void

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$31$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$31;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v1, 0x7f0d045c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1806
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1790
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$31$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
