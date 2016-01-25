.class Lcom/liquable/nemo/chat/ChattingActivity$43;
.super Landroid/os/AsyncTask;
.source "ChattingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->updateRemainUnreadCount()V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 2523
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$43;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2526
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$43;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->getRemainUnreadCount(Lcom/liquable/nemo/group/model/ChatGroup;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2523
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$43;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .param p1, "count"    # Ljava/lang/Long;

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$43;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    # setter for: Lcom/liquable/nemo/chat/ChattingActivity;->remainUnreadCount:J
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3902(Lcom/liquable/nemo/chat/ChattingActivity;J)J

    .line 2532
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$43;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->setRemainUnreadCount()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$4000(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 2533
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2523
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$43;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
