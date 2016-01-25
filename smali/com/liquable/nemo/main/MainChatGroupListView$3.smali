.class Lcom/liquable/nemo/main/MainChatGroupListView$3;
.super Ljava/lang/Object;
.source "MainChatGroupListView.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainChatGroupListView;->initSearchChatGroupsItem(Lcom/actionbarsherlock/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

.field final synthetic val$menu:Lcom/actionbarsherlock/view/Menu;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainChatGroupListView;Lcom/actionbarsherlock/view/Menu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainChatGroupListView;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$3;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    iput-object p2, p0, Lcom/liquable/nemo/main/MainChatGroupListView$3;->val$menu:Lcom/actionbarsherlock/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$3;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    # getter for: Lcom/liquable/nemo/main/MainChatGroupListView;->searchChatGroupsView:Lcom/actionbarsherlock/widget/SearchView;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainChatGroupListView;->access$500(Lcom/liquable/nemo/main/MainChatGroupListView;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 237
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$3;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    iput-boolean v2, v0, Lcom/liquable/nemo/main/MainChatGroupListView;->isSearchChatGroupsViewExpanded:Z

    .line 238
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$3;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$3;->val$menu:Lcom/actionbarsherlock/view/Menu;

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/main/MainChatGroupListView;->showOtherItems(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuItem;)V

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 244
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$3;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    iput-boolean v2, v0, Lcom/liquable/nemo/main/MainChatGroupListView;->isSearchChatGroupsViewExpanded:Z

    .line 245
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$3;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$3;->val$menu:Lcom/actionbarsherlock/view/Menu;

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/main/MainChatGroupListView;->hideOtherItems(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuItem;)V

    .line 246
    return v2
.end method
