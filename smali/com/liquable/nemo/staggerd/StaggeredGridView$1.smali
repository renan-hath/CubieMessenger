.class Lcom/liquable/nemo/staggerd/StaggeredGridView$1;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/staggerd/StaggeredGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/staggerd/StaggeredGridView;Landroid/view/View;Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .prologue
    .line 2137
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$1;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    iput-object p2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$1;->val$performClick:Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2140
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$1;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    const/4 v1, 0x6

    # setter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$1502(Lcom/liquable/nemo/staggerd/StaggeredGridView;I)I

    .line 2141
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2142
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$1;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setPressed(Z)V

    .line 2143
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$1;->this$0:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    # getter for: Lcom/liquable/nemo/staggerd/StaggeredGridView;->mDataChanged:Z
    invoke-static {v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->access$000(Lcom/liquable/nemo/staggerd/StaggeredGridView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$1;->val$performClick:Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;

    invoke-virtual {v0}, Lcom/liquable/nemo/staggerd/StaggeredGridView$PerformClick;->run()V

    .line 2146
    :cond_0
    return-void
.end method
