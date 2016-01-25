.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$11;
.super Ljava/lang/Object;
.source "ArticleReplyListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$11;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$11;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->deleteForumArticle()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$1400(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    .line 467
    return-void
.end method
