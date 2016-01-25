.class Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;
.super Ljava/lang/Object;
.source "ArticleReplyListFragment.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;


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
    .line 359
    iput-object p1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    const/16 v5, 0x1e

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p2}, Landroid/widget/EditText;->getLineCount()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 363
    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    .line 364
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d02f1

    new-array v1, v1, [Ljava/lang/Object;

    .line 365
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    .line 364
    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v2, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    :goto_0
    return v0

    .line 368
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ForumDaemon;->isArticleReplyCreatable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 369
    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d014c

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 372
    goto :goto_0
.end method

.method public sendWithSecretText(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 377
    return-void
.end method

.method public sendWithText(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 381
    new-instance v0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;->this$0:Lcom/liquable/nemo/forum/ArticleReplyListFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;-><init>(Lcom/liquable/nemo/forum/ArticleReplyListFragment$8;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 417
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ArticleReplyListFragment$8$1;->execute([Ljava/lang/Object;)V

    .line 418
    return-void
.end method
