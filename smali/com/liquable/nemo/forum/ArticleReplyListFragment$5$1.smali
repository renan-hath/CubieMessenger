.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1;
.super Ljava/lang/Object;
.source "ArticleReplyListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$5;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment$5;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    new-instance v1, Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1$1;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1;)V

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->addToFavorite(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$500(Lcom/liquable/nemo/forum/ArticleReplyListFragment;Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method
