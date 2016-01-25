.class Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$4;
.super Ljava/lang/Object;
.source "MediaShareBoardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->initTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$4;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 233
    .local v0, "tag":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$4;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    # getter for: Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->workspace:Lcom/liquable/nemo/widget/Workspace;
    invoke-static {v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->access$200(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)Lcom/liquable/nemo/widget/Workspace;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/widget/Workspace;->scrollTo(I)V

    .line 234
    return-void
.end method
