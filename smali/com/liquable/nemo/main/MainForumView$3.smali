.class Lcom/liquable/nemo/main/MainForumView$3;
.super Ljava/lang/Object;
.source "MainForumView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainForumView;->createViewForForum(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainForumView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainForumView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainForumView;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/liquable/nemo/main/MainForumView$3;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 116
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .line 117
    .local v0, "board":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/liquable/nemo/main/MainForumView$3;->this$0:Lcom/liquable/nemo/main/MainForumView;

    new-instance v2, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;

    iget-object v3, p0, Lcom/liquable/nemo/main/MainForumView$3;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-virtual {v3}, Lcom/liquable/nemo/main/MainForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 120
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->favorite:Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;)V

    .line 119
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/main/MainForumView;->startActivity(Landroid/content/Intent;)V

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/main/MainForumView$3;->this$0:Lcom/liquable/nemo/main/MainForumView;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/MainForumView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d04e5

    .line 126
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d04e3

    .line 127
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0115

    new-instance v3, Lcom/liquable/nemo/main/MainForumView$3$1;

    invoke-direct {v3, p0, v0}, Lcom/liquable/nemo/main/MainForumView$3$1;-><init>(Lcom/liquable/nemo/main/MainForumView$3;Lcom/liquable/nemo/forum/model/board/ForumBoard;)V

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00c5

    const/4 v3, 0x0

    .line 135
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
