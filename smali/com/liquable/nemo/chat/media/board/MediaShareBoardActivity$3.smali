.class Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$3;
.super Ljava/lang/Object;
.source "MediaShareBoardActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 219
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$3;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$3;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    # getter for: Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->workspace:Lcom/liquable/nemo/widget/Workspace;
    invoke-static {v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->access$200(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)Lcom/liquable/nemo/widget/Workspace;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/widget/Workspace;->scrollTo(I)V

    .line 224
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
