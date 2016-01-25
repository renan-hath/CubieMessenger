.class Lnet/londatiga/android/QuickAction$1;
.super Ljava/lang/Object;
.source "QuickAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/londatiga/android/QuickAction;

.field final synthetic val$actionId:I

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lnet/londatiga/android/QuickAction;II)V
    .locals 0
    .param p1, "this$0"    # Lnet/londatiga/android/QuickAction;

    .prologue
    .line 152
    iput-object p1, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    iput p2, p0, Lnet/londatiga/android/QuickAction$1;->val$pos:I

    iput p3, p0, Lnet/londatiga/android/QuickAction$1;->val$actionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    # getter for: Lnet/londatiga/android/QuickAction;->mItemClickListener:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;
    invoke-static {v0}, Lnet/londatiga/android/QuickAction;->access$000(Lnet/londatiga/android/QuickAction;)Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    # getter for: Lnet/londatiga/android/QuickAction;->mItemClickListener:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;
    invoke-static {v0}, Lnet/londatiga/android/QuickAction;->access$000(Lnet/londatiga/android/QuickAction;)Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    iget v2, p0, Lnet/londatiga/android/QuickAction$1;->val$pos:I

    iget v3, p0, Lnet/londatiga/android/QuickAction$1;->val$actionId:I

    invoke-interface {v0, v1, v2, v3}, Lnet/londatiga/android/QuickAction$OnActionItemClickListener;->onItemClick(Lnet/londatiga/android/QuickAction;II)V

    .line 159
    :cond_0
    iget-object v0, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    iget v1, p0, Lnet/londatiga/android/QuickAction$1;->val$pos:I

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->getActionItem(I)Lnet/londatiga/android/ActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lnet/londatiga/android/ActionItem;->isSticky()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    const/4 v1, 0x1

    # setter for: Lnet/londatiga/android/QuickAction;->mDidAction:Z
    invoke-static {v0, v1}, Lnet/londatiga/android/QuickAction;->access$102(Lnet/londatiga/android/QuickAction;Z)Z

    .line 161
    iget-object v0, p0, Lnet/londatiga/android/QuickAction$1;->this$0:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0}, Lnet/londatiga/android/QuickAction;->dismiss()V

    .line 163
    :cond_1
    return-void
.end method
