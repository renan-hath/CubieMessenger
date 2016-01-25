.class Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;
.super Landroid/os/AsyncTask;
.source "PaintMessageSelfView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/PaintMessageSelfView;->onClickResend(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/message/view/PaintMessageSelfView;

.field final synthetic val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$msgId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/PaintMessageSelfView;Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/PaintMessageSelfView;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/PaintMessageSelfView;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p3, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;->val$msgId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;->val$msgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->resendMessage(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/PaintMessageSelfView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/PaintMessageSelfView;

    .line 67
    invoke-virtual {v1}, Lcom/liquable/nemo/message/view/PaintMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0447

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    .line 66
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/PaintMessageSelfView$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
