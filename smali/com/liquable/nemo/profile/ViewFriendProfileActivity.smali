.class public Lcom/liquable/nemo/profile/ViewFriendProfileActivity;
.super Lcom/liquable/nemo/profile/BaseFriendProfileActivity;
.source "ViewFriendProfileActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "friendUid"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/liquable/nemo/profile/ViewFriendProfileActivity;

    invoke-static {v0, p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->createIntent(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntentFromNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "friendUid"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/liquable/nemo/profile/ViewFriendProfileActivity;

    invoke-static {v0, p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->createIntentFromNotification(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/profile/BaseFriendProfileFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    const-class v0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    return-object v0
.end method
