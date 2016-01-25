.class public Lcom/liquable/nemo/forum/BoardCategoryListActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "BoardCategoryListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
    .line 13
    const-class v0, Lcom/liquable/nemo/forum/BoardCategoryListFragment;

    return-object v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/liquable/nemo/SingleFragmentActivity;->onLoggedInCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardCategoryListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d00b0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/forum/BoardCategoryListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method
