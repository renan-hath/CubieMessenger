.class Lcom/liquable/nemo/MainActivity$6;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/MainActivity;->reloadNoticeTotalUnreadCount()V
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
    .line 524
    iput-object p1, p0, Lcom/liquable/nemo/MainActivity$6;->this$0:Lcom/liquable/nemo/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 527
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getLastReadNoticeId()J

    move-result-wide v0

    .line 528
    .local v0, "lastReadNoticeId":J
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-virtual {v2, v0, v1}, Lcom/liquable/nemo/notice/model/NoticeManager;->getTotalNewCount(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/MainActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .param p1, "count"    # Ljava/lang/Long;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity$6;->this$0:Lcom/liquable/nemo/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    # setter for: Lcom/liquable/nemo/MainActivity;->noticeUnreadCount:J
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/MainActivity;->access$1002(Lcom/liquable/nemo/MainActivity;J)J

    .line 534
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity$6;->this$0:Lcom/liquable/nemo/MainActivity;

    # invokes: Lcom/liquable/nemo/MainActivity;->applyNoticeTotalUnreadCountView()V
    invoke-static {v0}, Lcom/liquable/nemo/MainActivity;->access$1100(Lcom/liquable/nemo/MainActivity;)V

    .line 535
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 524
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/MainActivity$6;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
