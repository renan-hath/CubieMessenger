.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$4;
.super Ljava/lang/Object;
.source "ArticleReplyListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 288
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$4;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/ArticleReply;

    .line 294
    .local v0, "article":Lcom/liquable/nemo/forum/model/article/ArticleReply;
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyBody()Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    move-result-object v2

    instance-of v2, v2, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;

    if-eqz v2, :cond_0

    .line 295
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    sget-object v3, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->UPGRADE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 296
    invoke-virtual {v3}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 297
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$4;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
