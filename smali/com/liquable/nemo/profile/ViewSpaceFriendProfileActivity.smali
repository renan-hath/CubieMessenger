.class public Lcom/liquable/nemo/profile/ViewSpaceFriendProfileActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "ViewSpaceFriendProfileActivity.java"


# static fields
.field static final FROM:Ljava/lang/String; = "FROM"

.field public static final SPACE_NICKNAME:Ljava/lang/String; = "SPACE_NICKNAME"

.field static final SPACE_UID:Ljava/lang/String; = "SPACE_UID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "friendUid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "SPACE_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string/jumbo v1, "FROM"

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->space:Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 22
    const-string/jumbo v1, "SPACE_NICKNAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
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
            "Lcom/liquable/nemo/BaseFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const-class v0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    return-object v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
