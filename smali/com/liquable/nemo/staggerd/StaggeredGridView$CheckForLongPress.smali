.class Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;
.super Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/staggerd/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V
    .locals 1

    .prologue
    .line 171
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView$WindowRunnnable;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;
    .param p2, "x1"    # Lcom/liquable/nemo/staggerd/StaggeredGridView$1;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 174
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I
    invoke-static {v6}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1400(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v5

    .line 175
    .local v5, "motionPosition":I
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    iget-object v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I
    invoke-static {v7}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 177
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I
    invoke-static {v6}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1400(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v4

    .line 178
    .local v4, "longPressPosition":I
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v6}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$200(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I
    invoke-static {v7}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1400(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 180
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 181
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z
    invoke-static {v6}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 182
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-virtual {v6, v0, v4, v2, v3}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 184
    :cond_0
    if-eqz v1, :cond_2

    .line 185
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    const/4 v7, 0x6

    # setter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I
    invoke-static {v6, v7}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1502(Lcom/liquable/nemo/staggerd/StaggeredGridView;I)I

    .line 186
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-virtual {v6, v8}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setPressed(Z)V

    .line 187
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 192
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    .end local v4    # "longPressPosition":I
    :cond_1
    :goto_0
    return-void

    .line 189
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    .restart local v4    # "longPressPosition":I
    :cond_2
    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    const/4 v7, 0x5

    # setter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I
    invoke-static {v6, v7}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1502(Lcom/liquable/nemo/staggerd/StaggeredGridView;I)I

    goto :goto_0
.end method
