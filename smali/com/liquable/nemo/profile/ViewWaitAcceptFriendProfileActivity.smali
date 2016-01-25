.class public Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileActivity;
.super Lcom/liquable/nemo/profile/BaseFriendProfileActivity;
.source "ViewWaitAcceptFriendProfileActivity.java"


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
    const-class v0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileActivity;

    invoke-static {v0, p0, p1}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;->createIntent(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

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
    .line 15
    const-class v0, Lcom/liquable/nemo/profile/ViewWaitAcceptFriendProfileFragment;

    return-object v0
.end method
