.class Lcom/liquable/nemo/forum/ArticleListFragment$8;
.super Ljava/lang/Object;
.source "ArticleListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleListFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
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
    .line 459
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleListFragment;->reportAbuseBoard(I)V
    invoke-static {v0, p2}, Lcom/liquable/nemo/forum/ArticleListFragment;->access$1500(Lcom/liquable/nemo/forum/ArticleListFragment;I)V

    .line 463
    return-void
.end method
