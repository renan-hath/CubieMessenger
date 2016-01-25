.class Lcom/liquable/nemo/notice/NoticeListFragment$6;
.super Landroid/os/AsyncTask;
.source "NoticeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/notice/NoticeListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/notice/NoticeListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/notice/NoticeListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/notice/NoticeListFragment;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/liquable/nemo/notice/NoticeListFragment$6;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/notice/NoticeListFragment$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 225
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/notice/model/NoticeManager;->getLastNoticeId()J

    move-result-wide v0

    .line 226
    .local v0, "lastNoticeId":J
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2, v0, v1}, Lcom/liquable/nemo/util/Pref;->setLastReadNoticeId(J)V

    .line 227
    const/4 v2, 0x0

    return-object v2
.end method
