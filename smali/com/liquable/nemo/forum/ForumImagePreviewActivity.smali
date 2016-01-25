.class public Lcom/liquable/nemo/forum/ForumImagePreviewActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "ForumImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/forum/ForumImagePreviewActivity$CreateIntent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method protected beforeOnCreate()V
    .locals 2

    .prologue
    .line 41
    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/forum/ForumImagePreviewActivity;->requestWindowFeature(J)V

    .line 42
    return-void
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
    .line 46
    const-class v0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    return-object v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewActivity;->getFragmentInstance()Lcom/liquable/nemo/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method
