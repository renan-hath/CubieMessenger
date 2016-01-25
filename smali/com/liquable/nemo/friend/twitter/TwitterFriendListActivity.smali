.class public Lcom/liquable/nemo/friend/twitter/TwitterFriendListActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "TwitterFriendListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
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
    .line 10
    const-class v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    return-object v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 15
    const v0, 0x7f0d0284

    return v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method
