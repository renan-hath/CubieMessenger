.class Lcom/liquable/nemo/notice/NoticeListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "NoticeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/notice/NoticeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/notice/NoticeListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/notice/NoticeListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/notice/NoticeListFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/liquable/nemo/notice/NoticeListFragment$1;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    const-string/jumbo v0, "com.liquable.nemo.notice.model.NoticeEvent"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment$1;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    # invokes: Lcom/liquable/nemo/notice/NoticeListFragment;->update()V
    invoke-static {v0}, Lcom/liquable/nemo/notice/NoticeListFragment;->access$000(Lcom/liquable/nemo/notice/NoticeListFragment;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-array v0, v3, [Lcom/liquable/nemo/util/urlimage/UrlFileType;

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileType;->STICKER_NOTICE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchUrlFileTransferCompleteEvent(Landroid/content/Intent;[Lcom/liquable/nemo/util/urlimage/UrlFileType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment$1;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    # getter for: Lcom/liquable/nemo/notice/NoticeListFragment;->noticeListView:Lcom/liquable/nemo/notice/NoticeListView;
    invoke-static {v0}, Lcom/liquable/nemo/notice/NoticeListFragment;->access$100(Lcom/liquable/nemo/notice/NoticeListFragment;)Lcom/liquable/nemo/notice/NoticeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/NoticeListView;->notifyDataSetChanged()V

    goto :goto_0

    .line 63
    :cond_2
    new-array v0, v3, [Lcom/liquable/nemo/util/urlimage/UrlFileType;

    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileType;->AD_ITEM:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchUrlFileTransferCompleteEvent(Landroid/content/Intent;[Lcom/liquable/nemo/util/urlimage/UrlFileType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment$1;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    # getter for: Lcom/liquable/nemo/notice/NoticeListFragment;->adItemController:Lcom/liquable/nemo/ads/AdItemController;
    invoke-static {v0}, Lcom/liquable/nemo/notice/NoticeListFragment;->access$200(Lcom/liquable/nemo/notice/NoticeListFragment;)Lcom/liquable/nemo/ads/AdItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/ads/AdItemController;->refresh()V

    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListFragment$1;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    # getter for: Lcom/liquable/nemo/notice/NoticeListFragment;->noticeListView:Lcom/liquable/nemo/notice/NoticeListView;
    invoke-static {v0}, Lcom/liquable/nemo/notice/NoticeListFragment;->access$100(Lcom/liquable/nemo/notice/NoticeListFragment;)Lcom/liquable/nemo/notice/NoticeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/NoticeListView;->notifyDataSetChanged()V

    goto :goto_0
.end method
