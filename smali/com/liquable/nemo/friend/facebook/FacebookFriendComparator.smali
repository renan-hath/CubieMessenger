.class public Lcom/liquable/nemo/friend/facebook/FacebookFriendComparator;
.super Ljava/lang/Object;
.source "FacebookFriendComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/liquable/nemo/friend/facebook/FacebookFriend;Lcom/liquable/nemo/friend/facebook/FacebookFriend;)I
    .locals 3
    .param p1, "lhs"    # Lcom/liquable/nemo/friend/facebook/FacebookFriend;
    .param p2, "rhs"    # Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    .prologue
    .line 9
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v2

    if-nez v2, :cond_0

    .line 10
    const/4 v2, -0x1

    .line 16
    :goto_0
    return v2

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    const/4 v2, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getFbuid()Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, "thisValue":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;->getFbuid()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "thatValue":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    check-cast p2, Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/friend/facebook/FacebookFriendComparator;->compare(Lcom/liquable/nemo/friend/facebook/FacebookFriend;Lcom/liquable/nemo/friend/facebook/FacebookFriend;)I

    move-result v0

    return v0
.end method
