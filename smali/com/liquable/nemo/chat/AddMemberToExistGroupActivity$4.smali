.class Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$4;
.super Ljava/lang/Object;
.source "AddMemberToExistGroupActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$4;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$4;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    # getter for: Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->access$300(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method
