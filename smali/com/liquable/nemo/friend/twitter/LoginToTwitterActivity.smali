.class public Lcom/liquable/nemo/friend/twitter/LoginToTwitterActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "LoginToTwitterActivity.java"

# interfaces
.implements Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$LoginToTwitterCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    return-void
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
    .line 14
    const-class v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    return-object v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f0d004e

    return v0
.end method

.method public goToTwitterFriends()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterActivity;->startActivity(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterActivity;->finish()V

    .line 27
    return-void
.end method
