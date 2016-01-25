.class final Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/staggerd/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 198
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I
    invoke-static {v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1500(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 200
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    const/4 v5, 0x4

    # setter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1502(Lcom/liquable/nemo/staggerd/StaggeredGridView;I)I

    .line 201
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    iget-object v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I
    invoke-static {v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1400(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v5

    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mFirstPosition:I
    invoke-static {v6}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 204
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z
    invoke-static {v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 205
    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    .line 206
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 208
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-virtual {v4, v7}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setPressed(Z)V

    .line 209
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    iget-object v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mMotionPosition:I
    invoke-static {v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1400(Lcom/liquable/nemo/staggerd/StaggeredGridView;)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 210
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-virtual {v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->refreshDrawableState()V

    .line 212
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 213
    .local v3, "longPressTimeout":I
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-virtual {v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->isLongClickable()Z

    move-result v2

    .line 215
    .local v2, "longClickable":Z
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    iget-object v4, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    iget-object v4, v4, Lcom/liquable/nemo/staggerd/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 217
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 218
    if-eqz v2, :cond_3

    .line 219
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 226
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 227
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForLongPress:Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;
    invoke-static {v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1600(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    .line 228
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    new-instance v5, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;

    iget-object v6, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;-><init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    # setter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForLongPress:Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;
    invoke-static {v4, v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1602(Lcom/liquable/nemo/staggerd/StaggeredGridView;Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;)Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;

    .line 230
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForLongPress:Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;
    invoke-static {v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1600(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 231
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    iget-object v5, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mPendingCheckForLongPress:Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;
    invoke-static {v5}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1600(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    :goto_1
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-virtual {v4}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->postInvalidate()V

    .line 242
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_2
    :goto_2
    return-void

    .line 221
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 233
    :cond_4
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # setter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v8}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1502(Lcom/liquable/nemo/staggerd/StaggeredGridView;I)I

    goto :goto_1

    .line 238
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_5
    iget-object v4, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$CheckForTap;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # setter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v8}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1502(Lcom/liquable/nemo/staggerd/StaggeredGridView;I)I

    goto :goto_2
.end method
