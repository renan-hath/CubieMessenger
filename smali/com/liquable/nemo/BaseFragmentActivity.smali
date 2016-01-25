.class public abstract Lcom/liquable/nemo/BaseFragmentActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;
    }
.end annotation


# instance fields
.field private actionBarMenu:Lcom/actionbarsherlock/view/Menu;

.field private helper:Lcom/liquable/nemo/BaseActivityHelper;

.field protected imageLoader:Lcom/liquable/nemo/util/ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public final addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/future/IFuture",
            "<TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "future":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method protected beforeOnCreate()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method protected close(Lcom/liquable/nemo/BaseFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/liquable/nemo/BaseFragment;

    .prologue
    .line 28
    return-void
.end method

.method protected getActionBarCustomViewRes()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method protected getActionBarStyle()Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;->DEFAULT:Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    return-object v0
.end method

.method public getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    return-object v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/BaseActivityHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/liquable/nemo/BaseFragmentActivity;->onLoggedInActivityResult(IILandroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0800b9

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/BaseFragment;

    .line 58
    .local v0, "baseFragment":Lcom/liquable/nemo/BaseFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseFragment;->backPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    new-instance v0, Lcom/liquable/nemo/BaseActivityHelper;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/BaseActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    .line 67
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->beforeOnCreate()V

    .line 68
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onCreate()V

    .line 70
    sget-object v0, Lcom/liquable/nemo/BaseFragmentActivity$1;->$SwitchMap$com$liquable$nemo$BaseFragmentActivity$ActionBarStyle:[I

    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->getActionBarStyle()Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->hasImageLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseFragmentActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/BaseFragmentActivity;->onLoggedInCreate(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onCreateFinished()V

    .line 83
    return-void

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(I)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/BaseFragmentActivity;->onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 93
    .local v0, "showMenu":Z
    if-eqz v0, :cond_0

    .line 94
    iput-object p1, p0, Lcom/liquable/nemo/BaseFragmentActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    .line 96
    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onDestroy()V

    .line 106
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 107
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v2, 0x7f08035a

    .line 111
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    .line 113
    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    .line 114
    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/actionbarsherlock/view/Menu;->performIdentifierAction(II)Z

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 125
    return-void
.end method

.method protected abstract onLoggedInCreate(Landroid/os/Bundle;)V
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoggedInResume()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method protected onLoggedInStart()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onPause()V

    .line 147
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 148
    return-void
.end method

.method protected final onResume()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onResume()V

    .line 154
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->onLoggedInResume()V

    .line 155
    return-void
.end method

.method protected final onStart()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 160
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onStart()V

    .line 161
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->onLoggedInStart()V

    .line 162
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onStop()V

    .line 167
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    .line 168
    return-void
.end method

.method public registerManagedLifecycleListener(Lcom/liquable/nemo/ILifecycleListener;)V
    .locals 1
    .param p1, "lifecycleListener"    # Lcom/liquable/nemo/ILifecycleListener;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragmentActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->registerManagedLifecycleListener(Lcom/liquable/nemo/ILifecycleListener;)V

    .line 172
    return-void
.end method
