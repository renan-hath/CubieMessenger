.class Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;
.super Ljava/lang/Object;
.source "AddMemberToExistGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
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
    .line 104
    iput-object p1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    # getter for: Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->access$100(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->getSelectedMemberIds()Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, "selectedMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v1, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;

    iget-object v2, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    invoke-direct {v1, p0, v2, v0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;-><init>(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2;Landroid/content/Context;Ljava/util/List;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 143
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$2$1;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
