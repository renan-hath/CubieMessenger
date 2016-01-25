.class Lcom/liquable/nemo/cubiehead/ChattingLite$2;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;


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

.field final synthetic val$tabArrowLeft:Landroid/view/View;

.field final synthetic val$tabArrowRight:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$2;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    iput-object p2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$2;->val$tabArrowLeft:Landroid/view/View;

    iput-object p3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$2;->val$tabArrowRight:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 186
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$2;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupIconsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$200(Lcom/liquable/nemo/cubiehead/ChattingLite;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$2;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;
    invoke-static {v4}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$300(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getMeasuredWidth()I

    move-result v4

    sub-int v0, v1, v4

    .line 187
    .local v0, "scrollWidth":I
    if-gtz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$2;->val$tabArrowLeft:Landroid/view/View;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$2;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;
    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$300(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getScrollX()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$2;->val$tabArrowRight:Landroid/view/View;

    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$2;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;
    invoke-static {v4}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$300(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getScrollX()I

    move-result v4

    if-ne v4, v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 190
    goto :goto_1

    :cond_2
    move v2, v3

    .line 191
    goto :goto_2
.end method
