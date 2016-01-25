.class Lcom/liquable/nemo/cubiehead/ChattingLite$4;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$4;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 228
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$4;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 236
    :cond_0
    if-nez p2, :cond_1

    .line 237
    invoke-static {}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->getInstance()Lcom/liquable/nemo/status/view/WatchMessageDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$4;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->startDetect(Landroid/widget/AbsListView;Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->getInstance()Lcom/liquable/nemo/status/view/WatchMessageDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->cancelDetect()V

    goto :goto_0
.end method
