.class Lcom/liquable/nemo/forum/ArticleListFragment$5$1;
.super Ljava/lang/Object;
.source "ArticleListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/forum/ArticleListFragment$5;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleListFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/forum/ArticleListFragment$5;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$5$1;->this$1:Lcom/liquable/nemo/forum/ArticleListFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/forum/ArticleListFragment$5;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    new-instance v1, Lcom/liquable/nemo/forum/ArticleListFragment$5$1$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/forum/ArticleListFragment$5$1$1;-><init>(Lcom/liquable/nemo/forum/ArticleListFragment$5$1;)V

    # invokes: Lcom/liquable/nemo/forum/ArticleListFragment;->favoriteBoard(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1300(Lcom/liquable/nemo/forum/ArticleListFragment;Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method
