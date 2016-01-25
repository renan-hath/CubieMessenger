.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$9;
.super Ljava/lang/Object;
.source "SelectSharingChatGroupActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$9;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$9;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;
    invoke-static {v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$1500(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 711
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 716
    const/4 v0, 0x1

    return v0
.end method
