.class public final Lcom/liquable/nemo/friend/model/FriendNameComparator;
.super Ljava/lang/Object;
.source "FriendNameComparator.java"

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
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/model/Account;)I
    .locals 6
    .param p1, "account1"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "account2"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 10
    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/liquable/nemo/friend/model/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v2

    .line 14
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

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v4

    .line 19
    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "name1":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "name2":Ljava/lang/String;
    const-string/jumbo v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "["

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 26
    :cond_5
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_6
    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    .line 29
    goto :goto_0

    .line 32
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lcom/liquable/nemo/friend/model/Account;

    check-cast p2, Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/friend/model/FriendNameComparator;->compare(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/model/Account;)I

    move-result v0

    return v0
.end method
