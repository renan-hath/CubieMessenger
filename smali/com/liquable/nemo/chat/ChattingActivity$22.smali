.class Lcom/liquable/nemo/chat/ChattingActivity$22;
.super Lcom/liquable/nemo/util/SendTextAsyncTask;
.source "ChattingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->onLoggedInActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/SendTextAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;

.field final synthetic val$finalSharable:Lcom/liquable/nemo/share/Sharable;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/share/Sharable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$22;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$22;->val$finalSharable:Lcom/liquable/nemo/share/Sharable;

    invoke-direct {p0}, Lcom/liquable/nemo/util/SendTextAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$22;->val$finalSharable:Lcom/liquable/nemo/share/Sharable;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$22;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/liquable/nemo/group/model/ChatGroup;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity$22;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v4}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/share/Sharable;->share(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1270
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$22;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$22;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->removeDialog(I)V

    .line 1279
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$22;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v1, 0x7f0d03fa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1283
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1270
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$22;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$22;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->showDialog(I)V

    .line 1288
    return-void
.end method
