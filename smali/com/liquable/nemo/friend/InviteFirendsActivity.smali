.class public Lcom/liquable/nemo/friend/InviteFirendsActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "InviteFirendsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/friend/InviteFirendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .local v0, "intent":Landroid/content/Intent;
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
    .line 19
    const-class v0, Lcom/liquable/nemo/main/MainInviteFriendView;

    return-object v0
.end method
