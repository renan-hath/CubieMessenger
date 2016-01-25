.class Lnet/londatiga/android/BrushsQuickAction$1;
.super Ljava/lang/Object;
.source "BrushsQuickAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/londatiga/android/BrushsQuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/londatiga/android/BrushsQuickAction;

.field final synthetic val$actionId:I

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lnet/londatiga/android/BrushsQuickAction;II)V
    .locals 0
    .param p1, "this$0"    # Lnet/londatiga/android/BrushsQuickAction;

    .prologue
    .line 120
    iput-object p1, p0, Lnet/londatiga/android/BrushsQuickAction$1;->this$0:Lnet/londatiga/android/BrushsQuickAction;

    iput p2, p0, Lnet/londatiga/android/BrushsQuickAction$1;->val$pos:I

    iput p3, p0, Lnet/londatiga/android/BrushsQuickAction$1;->val$actionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 123
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 125
    .local v1, "lLayout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lnet/londatiga/android/BrushsQuickAction$1;->this$0:Lnet/londatiga/android/BrushsQuickAction;

    # getter for: Lnet/londatiga/android/BrushsQuickAction;->mItemClickListener:Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;
    invoke-static {v2}, Lnet/londatiga/android/BrushsQuickAction;->access$000(Lnet/londatiga/android/BrushsQuickAction;)Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lnet/londatiga/android/BrushsQuickAction$1;->this$0:Lnet/londatiga/android/BrushsQuickAction;

    # getter for: Lnet/londatiga/android/BrushsQuickAction;->mItemClickListener:Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;
    invoke-static {v2}, Lnet/londatiga/android/BrushsQuickAction;->access$000(Lnet/londatiga/android/BrushsQuickAction;)Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

    move-result-object v2

    iget-object v3, p0, Lnet/londatiga/android/BrushsQuickAction$1;->this$0:Lnet/londatiga/android/BrushsQuickAction;

    iget v4, p0, Lnet/londatiga/android/BrushsQuickAction$1;->val$pos:I

    iget v5, p0, Lnet/londatiga/android/BrushsQuickAction$1;->val$actionId:I

    invoke-interface {v2, v3, v4, v5}, Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;->onItemClick(Lnet/londatiga/android/BrushsQuickAction;II)V

    .line 129
    :cond_0
    iget-object v2, p0, Lnet/londatiga/android/BrushsQuickAction$1;->this$0:Lnet/londatiga/android/BrushsQuickAction;

    iget v3, p0, Lnet/londatiga/android/BrushsQuickAction$1;->val$pos:I

    invoke-virtual {v2, v3}, Lnet/londatiga/android/BrushsQuickAction;->getActionItem(I)Lnet/londatiga/android/ActionItem;

    move-result-object v2

    invoke-virtual {v2}, Lnet/londatiga/android/ActionItem;->isSticky()Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    iget-object v2, p0, Lnet/londatiga/android/BrushsQuickAction$1;->this$0:Lnet/londatiga/android/BrushsQuickAction;

    # setter for: Lnet/londatiga/android/BrushsQuickAction;->mDidAction:Z
    invoke-static {v2, v6}, Lnet/londatiga/android/BrushsQuickAction;->access$102(Lnet/londatiga/android/BrushsQuickAction;Z)Z

    .line 131
    iget-object v2, p0, Lnet/londatiga/android/BrushsQuickAction$1;->this$0:Lnet/londatiga/android/BrushsQuickAction;

    invoke-virtual {v2}, Lnet/londatiga/android/BrushsQuickAction;->dismiss()V

    .line 135
    :cond_1
    iget-object v2, p0, Lnet/londatiga/android/BrushsQuickAction$1;->this$0:Lnet/londatiga/android/BrushsQuickAction;

    # getter for: Lnet/londatiga/android/BrushsQuickAction;->itemLayouts:Ljava/util/List;
    invoke-static {v2}, Lnet/londatiga/android/BrushsQuickAction;->access$200(Lnet/londatiga/android/BrushsQuickAction;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 136
    .local v0, "itemLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0

    .line 138
    .end local v0    # "itemLayout":Landroid/widget/LinearLayout;
    :cond_2
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 139
    return-void
.end method
