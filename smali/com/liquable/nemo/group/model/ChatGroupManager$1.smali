.class Lcom/liquable/nemo/group/model/ChatGroupManager$1;
.super Ljava/lang/Object;
.source "ChatGroupManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/model/ChatGroupManager;->filterByOneToOneOrNot(Ljava/util/List;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/liquable/nemo/group/model/ChatGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/group/model/ChatGroupManager;

.field final synthetic val$friendListComparator:Lcom/liquable/nemo/friend/model/FriendListComparator;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/model/ChatGroupManager;Lcom/liquable/nemo/friend/model/FriendListComparator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/model/ChatGroupManager;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/liquable/nemo/group/model/ChatGroupManager$1;->this$0:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iput-object p2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager$1;->val$friendListComparator:Lcom/liquable/nemo/friend/model/FriendListComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/group/model/ChatGroup;)I
    .locals 4
    .param p1, "lhs"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "rhs"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroupManager$1;->val$friendListComparator:Lcom/liquable/nemo/friend/model/FriendListComparator;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v2, v0, v1}, Lcom/liquable/nemo/friend/model/FriendListComparator;->compare(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/model/Account;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 287
    check-cast p1, Lcom/liquable/nemo/group/model/ChatGroup;

    check-cast p2, Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/group/model/ChatGroupManager$1;->compare(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/group/model/ChatGroup;)I

    move-result v0

    return v0
.end method
