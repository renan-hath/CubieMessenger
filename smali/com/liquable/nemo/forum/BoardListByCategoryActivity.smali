.class public Lcom/liquable/nemo/forum/BoardListByCategoryActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "BoardListByCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/forum/BoardListByCategoryActivity$CreateIntent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected beforeOnCreate()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->beforeOnCreate()V

    .line 31
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/forum/BoardListByCategoryActivity;->requestWindowFeature(J)V

    .line 32
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
    .line 36
    const-class v0, Lcom/liquable/nemo/forum/BoardListByCategoryFragment;

    return-object v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/liquable/nemo/SingleFragmentActivity;->onLoggedInCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardListByCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/forum/BoardListByCategoryActivity$CreateIntent;->getBoardCategory(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "boardCategory":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/model/forum/BoardCategory;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/BoardCategory;->i18NKey()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {p0, v2}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, "resId":I
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardListByCategoryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/forum/BoardListByCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
