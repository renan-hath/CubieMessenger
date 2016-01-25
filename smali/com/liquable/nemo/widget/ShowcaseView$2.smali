.class Lcom/liquable/nemo/widget/ShowcaseView$2;
.super Ljava/lang/Object;
.source "ShowcaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/ShowcaseView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/widget/ShowcaseView;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    iput-object p2, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 763
    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    # invokes: Lcom/liquable/nemo/widget/ShowcaseView;->init()V
    invoke-static {v1}, Lcom/liquable/nemo/widget/ShowcaseView;->access$300(Lcom/liquable/nemo/widget/ShowcaseView;)V

    .line 764
    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    # getter for: Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;
    invoke-static {v1}, Lcom/liquable/nemo/widget/ShowcaseView;->access$400(Lcom/liquable/nemo/widget/ShowcaseView;)Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    move-result-object v1

    iget v1, v1, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->insert:I

    if-ne v1, v4, :cond_0

    .line 765
    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    iget-object v2, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    # setter for: Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F
    invoke-static {v1, v2}, Lcom/liquable/nemo/widget/ShowcaseView;->access$502(Lcom/liquable/nemo/widget/ShowcaseView;F)F

    .line 766
    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    iget-object v2, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    # setter for: Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F
    invoke-static {v1, v2}, Lcom/liquable/nemo/widget/ShowcaseView;->access$602(Lcom/liquable/nemo/widget/ShowcaseView;F)F

    .line 773
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/ShowcaseView;->invalidate()V

    .line 774
    return-void

    .line 768
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 769
    .local v0, "coordinates":[I
    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 770
    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v3, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    # setter for: Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F
    invoke-static {v1, v2}, Lcom/liquable/nemo/widget/ShowcaseView;->access$502(Lcom/liquable/nemo/widget/ShowcaseView;F)F

    .line 771
    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    aget v2, v0, v4

    iget-object v3, p0, Lcom/liquable/nemo/widget/ShowcaseView$2;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    # setter for: Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F
    invoke-static {v1, v2}, Lcom/liquable/nemo/widget/ShowcaseView;->access$602(Lcom/liquable/nemo/widget/ShowcaseView;F)F

    goto :goto_0
.end method
