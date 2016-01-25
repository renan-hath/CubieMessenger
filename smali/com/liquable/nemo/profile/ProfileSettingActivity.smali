.class public Lcom/liquable/nemo/profile/ProfileSettingActivity;
.super Lcom/liquable/nemo/profile/BaseFriendProfileActivity;
.source "ProfileSettingActivity.java"


# static fields
.field static final MAIN_INVITE_FRIEND_SET_COVER:Ljava/lang/String; = "MAIN_INVITE_FRIEND_SET_COVER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/liquable/nemo/profile/BaseFriendProfileActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/profile/ProfileSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static createIntentFromInviteFriendDoSetCover(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/profile/ProfileSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "MAIN_INVITE_FRIEND_SET_COVER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
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
    .line 22
    const-class v0, Lcom/liquable/nemo/profile/ProfileSettingFragment;

    return-object v0
.end method
