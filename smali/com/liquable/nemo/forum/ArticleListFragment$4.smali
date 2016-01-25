.class Lcom/liquable/nemo/forum/ArticleListFragment$4;
.super Ljava/lang/Object;
.source "ArticleListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment;->nextTutorial(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleListFragment;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$4;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$4;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # operator++ for: Lcom/liquable/nemo/forum/ArticleListFragment;->step:I
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1008(Lcom/liquable/nemo/forum/ArticleListFragment;)I

    .line 280
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$4;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # getter for: Lcom/liquable/nemo/forum/ArticleListFragment;->showcaseView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1100(Lcom/liquable/nemo/forum/ArticleListFragment;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/widget/ShowcaseView;->onClick(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$4;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleListFragment;->tryShowTutorial()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1200(Lcom/liquable/nemo/forum/ArticleListFragment;)V

    .line 282
    return-void
.end method
