.class Lcom/liquable/nemo/main/MainForumView$3$1;
.super Ljava/lang/Object;
.source "MainForumView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainForumView$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/main/MainForumView$3;

.field final synthetic val$board:Lcom/liquable/nemo/forum/model/board/ForumBoard;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainForumView$3;Lcom/liquable/nemo/forum/model/board/ForumBoard;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/main/MainForumView$3;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/liquable/nemo/main/MainForumView$3$1;->this$1:Lcom/liquable/nemo/main/MainForumView$3;

    iput-object p2, p0, Lcom/liquable/nemo/main/MainForumView$3$1;->val$board:Lcom/liquable/nemo/forum/model/board/ForumBoard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 131
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainForumView$3$1;->val$board:Lcom/liquable/nemo/forum/model/board/ForumBoard;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ForumDaemon;->localUnfavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/main/MainForumView$3$1;->this$1:Lcom/liquable/nemo/main/MainForumView$3;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainForumView$3;->this$0:Lcom/liquable/nemo/main/MainForumView;

    # getter for: Lcom/liquable/nemo/main/MainForumView;->favoritesAdapter:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainForumView;->access$000(Lcom/liquable/nemo/main/MainForumView;)Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/main/MainForumView$3$1;->val$board:Lcom/liquable/nemo/forum/model/board/ForumBoard;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->removeForumBoard(Lcom/liquable/nemo/forum/model/board/ForumBoard;)V

    .line 133
    return-void
.end method
