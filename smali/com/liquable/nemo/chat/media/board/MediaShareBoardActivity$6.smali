.class Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$6;
.super Ljava/lang/Object;
.source "MediaShareBoardActivity.java"

# interfaces
.implements Lcom/liquable/nemo/widget/Workspace$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
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
    .line 324
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$6;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(F)V
    .locals 2
    .param p1, "screenFraction"    # F

    .prologue
    .line 327
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$6;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    # invokes: Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->onWorkspaceIndexChange(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->access$500(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;I)V

    .line 328
    return-void
.end method
