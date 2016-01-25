.class public Lcom/liquable/nemo/authenticator/AccountUtil;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 14
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.liquable.nemo"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 15
    .local v1, "accountsByType":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 17
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 19
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDefaultNickname(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 23
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 24
    .local v2, "manager":Landroid/accounts/AccountManager;
    const-string/jumbo v5, "com.google"

    invoke-virtual {v2, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 25
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v4, v0

    .line 26
    .local v4, "size":I
    new-array v3, v4, [Ljava/lang/String;

    .line 27
    .local v3, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 28
    aget-object v5, v0, v1

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    if-lez v4, :cond_1

    .line 31
    aget-object v5, v3, v7

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    .line 33
    :goto_1
    return-object v5

    :cond_1
    const-string/jumbo v5, ""

    goto :goto_1
.end method

.method public static getNickname(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 38
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.liquable.nemo"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 39
    .local v1, "accountsByType":[Landroid/accounts/Account;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string/jumbo v3, "com.liquable.nemo.NICKNAME"

    invoke-virtual {v0, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getPhone(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 44
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.liquable.nemo"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 45
    .local v1, "accountsByType":[Landroid/accounts/Account;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v2
.end method

.method public static getUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 50
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.liquable.nemo"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 51
    .local v1, "accountsByType":[Landroid/accounts/Account;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string/jumbo v3, "com.liquable.nemo.USER_ID"

    invoke-virtual {v0, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getUsername(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 56
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.liquable.nemo"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 57
    .local v1, "accountsByType":[Landroid/accounts/Account;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string/jumbo v3, "com.liquable.nemo.USER_NAME"

    invoke-virtual {v0, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isAccountExists(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 62
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.liquable.nemo"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 64
    .local v1, "accountsByType":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removeAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 70
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-static {p0}, Lcom/liquable/nemo/authenticator/AccountUtil;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 71
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 74
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->removeAccountInfo()V

    .line 75
    return-void
.end method

.method public static updateNickname(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 79
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.liquable.nemo"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 80
    .local v1, "accountsByType":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 81
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string/jumbo v3, "com.liquable.nemo.NICKNAME"

    invoke-virtual {v0, v2, v3, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/util/Pref;->updateNickname(Ljava/lang/String;)V

    .line 84
    return-void
.end method
