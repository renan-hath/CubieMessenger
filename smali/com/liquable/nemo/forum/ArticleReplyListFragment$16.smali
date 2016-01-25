.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;
.super Ljava/lang/Object;
.source "ArticleReplyListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

.field final synthetic val$likeButton:Landroid/widget/ImageButton;

.field final synthetic val$likeCount:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Landroid/widget/ImageButton;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    iput-object p2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->val$likeButton:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->val$likeCount:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->likeRpcAsyncTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->val$likeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    new-instance v1, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16$1;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->likeRpcAsyncTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 717
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$16;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->likeRpcAsyncTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
