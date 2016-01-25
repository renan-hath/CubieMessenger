.class public abstract Lcom/liquable/nemo/profile/BaseFriendProfileActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "BaseFriendProfileActivity.java"

# interfaces
.implements Lcom/liquable/nemo/profile/BaseFriendProfileFragment$ProfileCallback;


# static fields
.field static final FRIEND_UID:Ljava/lang/String; = "FRIEND_UID"

.field static final FROM:Ljava/lang/String; = "FROM"

.field static final FROM_NOTIFICATION:Ljava/lang/String; = "FROM_NOTIFICATION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method protected static createIntent(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "friendUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/profile/BaseFriendProfileActivity;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/liquable/nemo/profile/BaseFriendProfileActivity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "FRIEND_UID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    return-object v0
.end method

.method protected static createIntentFromNotification(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "friendUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/profile/BaseFriendProfileActivity;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/liquable/nemo/profile/BaseFriendProfileActivity;>;"
    invoke-static {p0, p1, p2}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->createIntent(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "FROM_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    return-object v0
.end method

.method protected static createIntentWithFrom(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "friendUid"    # Ljava/lang/String;
    .param p3, "from"    # Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/profile/BaseFriendProfileActivity;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/liquable/nemo/profile/BaseFriendProfileActivity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "FRIEND_UID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string/jumbo v1, "FROM"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    return-object v0
.end method


# virtual methods
.method public goToChatting(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    const-string/jumbo v1, "CHAT_GROUP_TOPIC"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->finish()V

    .line 55
    return-void
.end method

.method public goToFriendProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "friendId"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/liquable/nemo/profile/ViewFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->finish()V

    .line 62
    return-void
.end method

.method public goToMain()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "FROM"

    const-string/jumbo v2, "COMFIRM_FRIEND_NOTIFICATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->finish()V

    .line 71
    return-void
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method
