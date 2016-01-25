.class public Lcom/liquable/nemo/forum/BoardDetailActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "BoardDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/forum/BoardDetailActivity$CreateIntent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    .line 14
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
    .line 29
    const-class v0, Lcom/liquable/nemo/forum/BoardDetailFragment;

    return-object v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/liquable/nemo/SingleFragmentActivity;->onLoggedInCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardDetailActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0022

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/forum/BoardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method
