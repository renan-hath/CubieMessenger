.class Lcom/liquable/nemo/chat/ChattingActivity$30;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$30;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1607
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$30;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->isLoadingMessages:Z
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1900(Lcom/liquable/nemo/chat/ChattingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$30;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->finishedLoading:Z
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$2700(Lcom/liquable/nemo/chat/ChattingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    if-lt p4, v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$30;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->loadMore()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$2800(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$30;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput p2, v0, Lcom/liquable/nemo/chat/ChattingActivity;->currentSelectedItem:I

    .line 1613
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1617
    if-nez p2, :cond_0

    .line 1618
    invoke-static {}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->getInstance()Lcom/liquable/nemo/status/view/WatchMessageDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$30;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->startDetect(Landroid/widget/AbsListView;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 1622
    :goto_0
    return-void

    .line 1620
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->getInstance()Lcom/liquable/nemo/status/view/WatchMessageDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->cancelDetect()V

    goto :goto_0
.end method
