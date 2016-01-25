.class Lcom/liquable/nemo/forum/BoardListByCategoryFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BoardListByCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/BoardListByCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$1;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const/4 v2, 0x0

    sget-object v3, Lcom/liquable/nemo/util/urlimage/UrlFileType;->FORUM_IMAGES:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v3, v1, v2

    invoke-static {p2, v1}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchUrlFileTransferCompleteEvent(Landroid/content/Intent;[Lcom/liquable/nemo/util/urlimage/UrlFileType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$1;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->boardListAdapter:Lcom/liquable/nemo/forum/BoardListAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->access$000(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)Lcom/liquable/nemo/forum/BoardListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/BoardListAdapter;->notifyDataSetChanged()V

    .line 45
    :cond_0
    invoke-static {p2}, Lcom/liquable/nemo/forum/model/ForumEvent;->matchReloadAfterReportAbuseBoard(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string/jumbo v1, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "boardId":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment$1;->this$0:Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->boardListAdapter:Lcom/liquable/nemo/forum/BoardListAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;->access$000(Lcom/liquable/nemo/forum/BoardListByCategoryFragment;)Lcom/liquable/nemo/forum/BoardListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/forum/BoardListAdapter;->updateReported(Ljava/lang/String;)V

    .line 49
    .end local v0    # "boardId":Ljava/lang/String;
    :cond_1
    return-void
.end method
