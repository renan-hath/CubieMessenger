.class Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$2;
.super Ljava/lang/Object;
.source "MediaShareBoardActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initBoard(Landroid/widget/ListView;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

.field final synthetic val$adapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$2;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$2;->val$adapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$2;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$2;->val$adapter:Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;

    # invokes: Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->loadMedia(Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->access$100(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Lcom/liquable/nemo/chat/media/board/AbstractMediaHistoryAdapter;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 162
    return-void
.end method
