.class Lcom/liquable/nemo/main/MainFriendListView$6;
.super Ljava/lang/Object;
.source "MainFriendListView.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainFriendListView;->initSearchFriendsItem(Lcom/actionbarsherlock/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainFriendListView;

.field final synthetic val$menu:Lcom/actionbarsherlock/view/Menu;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainFriendListView;Lcom/actionbarsherlock/view/Menu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainFriendListView;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/liquable/nemo/main/MainFriendListView$6;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    iput-object p2, p0, Lcom/liquable/nemo/main/MainFriendListView$6;->val$menu:Lcom/actionbarsherlock/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 406
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$6;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    # getter for: Lcom/liquable/nemo/main/MainFriendListView;->searchFriendsView:Lcom/actionbarsherlock/widget/SearchView;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainFriendListView;->access$1200(Lcom/liquable/nemo/main/MainFriendListView;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 407
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$6;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    iput-boolean v2, v0, Lcom/liquable/nemo/main/MainFriendListView;->isSearchFriendsViewExpanded:Z

    .line 408
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$6;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$6;->val$menu:Lcom/actionbarsherlock/view/Menu;

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/main/MainFriendListView;->showOtherItems(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuItem;)V

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 414
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$6;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    iput-boolean v2, v0, Lcom/liquable/nemo/main/MainFriendListView;->isSearchFriendsViewExpanded:Z

    .line 415
    iget-object v0, p0, Lcom/liquable/nemo/main/MainFriendListView$6;->this$0:Lcom/liquable/nemo/main/MainFriendListView;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainFriendListView$6;->val$menu:Lcom/actionbarsherlock/view/Menu;

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/main/MainFriendListView;->hideOtherItems(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuItem;)V

    .line 416
    return v2
.end method
