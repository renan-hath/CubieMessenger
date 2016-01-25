.class Lcom/liquable/nemo/MainActivity$5;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/MainActivity;->reloadChatGroupTotalUnreadCount()V
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
.field final synthetic this$0:Lcom/liquable/nemo/MainActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/liquable/nemo/MainActivity$5;->this$0:Lcom/liquable/nemo/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 503
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->getTotalUnreadCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 500
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/MainActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .param p1, "count"    # Ljava/lang/Long;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity$5;->this$0:Lcom/liquable/nemo/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    # setter for: Lcom/liquable/nemo/MainActivity;->chatGroupTotalUnreadCount:J
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/MainActivity;->access$802(Lcom/liquable/nemo/MainActivity;J)J

    .line 509
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity$5;->this$0:Lcom/liquable/nemo/MainActivity;

    # invokes: Lcom/liquable/nemo/MainActivity;->applyChatGroupTotalUnreadCountView()V
    invoke-static {v0}, Lcom/liquable/nemo/MainActivity;->access$900(Lcom/liquable/nemo/MainActivity;)V

    .line 510
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 500
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/MainActivity$5;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
