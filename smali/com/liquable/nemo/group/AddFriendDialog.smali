.class public Lcom/liquable/nemo/group/AddFriendDialog;
.super Ljava/lang/Object;
.source "AddFriendDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "from"    # Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/group/AddFriendDialog;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "from"    # Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;
    .param p4, "positiveCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0049

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 35
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "message":Ljava/lang/String;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v5

    .line 41
    .local v5, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-static {p0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d004a

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d0115

    new-instance v0, Lcom/liquable/nemo/group/AddFriendDialog$1;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/group/AddFriendDialog$1;-><init>(Ljava/lang/Runnable;Landroid/app/Activity;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;Lcom/liquable/nemo/friend/model/Account;)V

    .line 44
    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00c5

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
