.class Lcom/liquable/nemo/forum/BoardCategoryListFragment$1;
.super Ljava/lang/Object;
.source "BoardCategoryListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/BoardCategoryListFragment;->initSearchItem(Lcom/actionbarsherlock/view/Menu;)V
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
    .line 51
    iput-object p1, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$1;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$1;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    # getter for: Lcom/liquable/nemo/forum/BoardCategoryListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->access$000(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListFragment$1;->this$0:Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    # invokes: Lcom/liquable/nemo/forum/BoardCategoryListFragment;->switchToCategoryAdapter()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/BoardCategoryListFragment;->access$100(Lcom/liquable/nemo/forum/BoardCategoryListFragment;)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method
