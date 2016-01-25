.class public Lcom/liquable/nemo/friend/facebook/FacebookFriendsActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "FacebookFriendsActivity.java"

# interfaces
.implements Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$FacebookFriendsCallback;


# static fields
.field static final AUTHORIZE_FACEBOOK_REQUEST_CODE:I


# instance fields
.field private facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFacebookSession()Lcom/liquable/nemo/facebook/FacebookSession;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    return-object v0
.end method

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
    .line 25
    const-class v0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    return-object v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f0d0283

    return v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/facebook/FacebookSession;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/facebook/FacebookSession;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    .line 51
    invoke-super {p0, p1}, Lcom/liquable/nemo/SingleFragmentActivity;->onLoggedInCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method
