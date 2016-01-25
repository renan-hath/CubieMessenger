.class Lcom/liquable/nemo/message/view/VideoMessageSelfView$1;
.super Landroid/os/AsyncTask;
.source "VideoMessageSelfView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/VideoMessageSelfView;->onClickResend(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/message/view/VideoMessageSelfView;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/VideoMessageSelfView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/VideoMessageSelfView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/message/view/VideoMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/VideoMessageSelfView;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/VideoMessageSelfView$1;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 52
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/VideoMessageSelfView$1;->val$messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->resendMessage(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/VideoMessageSelfView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/message/view/VideoMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/VideoMessageSelfView;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/view/VideoMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/view/VideoMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/VideoMessageSelfView;

    .line 61
    invoke-virtual {v1}, Lcom/liquable/nemo/message/view/VideoMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0447

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    .line 60
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/VideoMessageSelfView$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
