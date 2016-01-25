.class final Lcom/liquable/nemo/group/AddFriendDialog$1;
.super Ljava/lang/Object;
.source "AddFriendDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/AddFriendDialog;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/liquable/nemo/friend/model/Account;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$from:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

.field final synthetic val$positiveCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/app/Activity;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$positiveCallback:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$accountId:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$from:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    iput-object p5, p0, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$account:Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$positiveCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$positiveCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 50
    :cond_0
    new-instance v0, Lcom/liquable/nemo/group/AddFriendDialog$1$1;

    iget-object v1, p0, Lcom/liquable/nemo/group/AddFriendDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/group/AddFriendDialog$1$1;-><init>(Lcom/liquable/nemo/group/AddFriendDialog$1;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 96
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/AddFriendDialog$1$1;->execute([Ljava/lang/Object;)V

    .line 98
    return-void
.end method
