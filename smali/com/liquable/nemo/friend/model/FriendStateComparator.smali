.class public final Lcom/liquable/nemo/friend/model/FriendStateComparator;
.super Ljava/lang/Object;
.source "FriendStateComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/liquable/nemo/friend/model/Account;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/model/Account;)I
    .locals 7
    .param p1, "account1"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "account2"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 12
    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/liquable/nemo/friend/model/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v2

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v4

    .line 21
    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 26
    :cond_5
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    if-nez v5, :cond_6

    move v2, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_6
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    if-nez v5, :cond_7

    move v2, v4

    .line 29
    goto :goto_0

    .line 32
    :cond_7
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "name1":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "name2":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/friend/model/Account$FriendState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 35
    const-string/jumbo v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "["

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    :cond_8
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_9
    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v4

    .line 40
    goto/16 :goto_0

    .line 43
    :cond_a
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v2

    sget-object v5, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-ne v2, v5, :cond_d

    .line 44
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->isNewFriend()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->isNewFriend()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 46
    :cond_b
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->isNewFriend()Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v4

    .line 47
    goto/16 :goto_0

    .line 48
    :cond_c
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->isNewFriend()Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    .line 49
    goto/16 :goto_0

    .line 52
    :cond_d
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 53
    :cond_e
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/friend/model/Account$FriendState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v4

    .line 54
    goto/16 :goto_0

    .line 55
    :cond_f
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/friend/model/Account$FriendState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    .line 56
    goto/16 :goto_0

    .line 57
    :cond_10
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/friend/model/Account$FriendState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v4

    .line 58
    goto/16 :goto_0

    .line 59
    :cond_11
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/friend/model/Account$FriendState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v3

    .line 60
    goto/16 :goto_0

    .line 61
    :cond_12
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/friend/model/Account$FriendState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v3

    .line 62
    goto/16 :goto_0

    .line 63
    :cond_13
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/friend/model/Account$FriendState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v4

    .line 64
    goto/16 :goto_0

    .line 65
    :cond_14
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/friend/model/Account$FriendState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v3

    .line 66
    goto/16 :goto_0

    .line 67
    :cond_15
    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/model/Account$FriendState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v4

    .line 68
    goto/16 :goto_0

    .line 71
    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/liquable/nemo/friend/model/Account;

    check-cast p2, Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/friend/model/FriendStateComparator;->compare(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/model/Account;)I

    move-result v0

    return v0
.end method
