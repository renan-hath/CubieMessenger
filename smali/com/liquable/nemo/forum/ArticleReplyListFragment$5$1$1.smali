.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1$1;
.super Ljava/lang/Object;
.source "ArticleReplyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1$1;->this$2:Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1$1;->this$2:Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$5$1;->this$1:Lcom/liquable/nemo/forum/ArticleReplyListFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->inputLayoutMask:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$400(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    return-void
.end method
