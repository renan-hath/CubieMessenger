.class public abstract Lcom/liquable/nemo/SingleFragmentActivity;
.super Lcom/liquable/nemo/BaseFragmentActivity;
.source "SingleFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected close(Lcom/liquable/nemo/BaseFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/liquable/nemo/BaseFragment;

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->finish()V

    .line 9
    return-void
.end method

.method protected abstract getFragment()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragment;",
            ">;"
        }
    .end annotation
.end method

.method protected getFragmentInstance()Lcom/liquable/nemo/BaseFragment;
    .locals 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0800b9

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/BaseFragment;

    return-object v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    const v3, 0x7f03002c

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/SingleFragmentActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->getTitleId()I

    move-result v3

    if-lez v3, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->getTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 29
    :cond_0
    if-nez p1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->getFragment()Ljava/lang/Class;

    move-result-object v2

    .line 33
    .local v2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/liquable/nemo/BaseFragment;>;"
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/BaseFragment;

    .line 34
    .local v1, "fragment":Lcom/liquable/nemo/BaseFragment;
    invoke-virtual {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/liquable/nemo/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/liquable/nemo/SingleFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0800b9

    .line 36
    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "fragment":Lcom/liquable/nemo/BaseFragment;
    .end local v2    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/liquable/nemo/BaseFragment;>;"
    :cond_1
    :goto_0
    return-void

    .line 38
    .restart local v2    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/liquable/nemo/BaseFragment;>;"
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
