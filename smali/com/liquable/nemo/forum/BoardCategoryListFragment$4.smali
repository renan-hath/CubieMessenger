.class Lcom/liquable/nemo/forum/BoardCategoryListFragment$4;
.super Ljava/lang/Object;
.source "BoardCategoryListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/BoardCategoryListFragment;->switchToCategoryAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$4;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 198
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    .line 199
    .local v0, "category":Lcom/liquable/nemo/model/forum/BoardCategory;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->onForumCategorySelect(Lcom/liquable/nemo/model/forum/BoardCategory;)V

    .line 201
    iget-object v1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$4;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    new-instance v2, Lcom/liquable/nemo/forum/BoardListByCategoryActivity$CreateIntent;

    iget-object v3, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$4;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/BoardCategory;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/liquable/nemo/forum/BoardListByCategoryActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method
