.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$7;
.super Ljava/lang/Object;
.source "ArticleReplyListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ArticleReplyListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 352
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$7;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$7;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    # invokes: Lcom/liquable/nemo/forum/ArticleReplyListFragment;->openGallery()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->access$700(Lcom/liquable/nemo/forum/ArticleReplyListFragment;)V

    .line 356
    return-void
.end method
