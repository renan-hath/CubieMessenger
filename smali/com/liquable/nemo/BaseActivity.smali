.class public abstract Lcom/liquable/nemo/BaseActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/BaseActivity$ActionBarStyle;
    }
.end annotation


# instance fields
.field private actionBarMenu:Lcom/actionbarsherlock/view/Menu;

.field private helper:Lcom/liquable/nemo/BaseActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    .line 14
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
    .line 82
    .local p1, "future":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method protected beforeOnCreate()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method protected getActionBarCustomViewRes()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method protected getActionBarStyle()Lcom/liquable/nemo/BaseActivity$ActionBarStyle;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/liquable/nemo/BaseActivity$ActionBarStyle;->DEFAULT:Lcom/liquable/nemo/BaseActivity$ActionBarStyle;

    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/BaseActivityHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/liquable/nemo/BaseActivity;->onLoggedInActivityResult(IILandroid/content/Intent;)V

    .line 41
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseActivity;->beforeOnCreate()V

    .line 46
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Lcom/liquable/nemo/BaseActivityHelper;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/BaseActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onCreate()V

    .line 49
    sget-object v0, Lcom/liquable/nemo/BaseActivity$1;->$SwitchMap$com$liquable$nemo$BaseActivity$ActionBarStyle:[I

    invoke-virtual {p0}, Lcom/liquable/nemo/BaseActivity;->getActionBarStyle()Lcom/liquable/nemo/BaseActivity$ActionBarStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/BaseActivity$ActionBarStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/BaseActivity;->onLoggedInCreate(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onCreateFinished()V

    .line 59
    return-void

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(I)V

    goto :goto_0

    .line 49
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
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/BaseActivity;->onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 69
    .local v0, "showMenu":Z
    if-eqz v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/liquable/nemo/BaseActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    .line 72
    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onDestroy()V

    .line 78
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onDestroy()V

    .line 79
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v2, 0x7f08035a

    .line 87
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    .line 89
    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    .line 90
    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->actionBarMenu:Lcom/actionbarsherlock/view/Menu;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/actionbarsherlock/view/Menu;->performIdentifierAction(II)Z

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 101
    return-void
.end method

.method protected abstract onLoggedInCreate(Landroid/os/Bundle;)V
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoggedInResume()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method protected onLoggedInStart()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onPause()V

    .line 123
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onPause()V

    .line 124
    return-void
.end method

.method protected final onResume()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onResume()V

    .line 130
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseActivity;->onLoggedInResume()V

    .line 131
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v1}, Lcom/liquable/nemo/BaseActivityHelper;->onRetainNonConfigurationInstance()V

    .line 141
    return-object v0
.end method

.method protected final onStart()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onStart()V

    .line 147
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onStart()V

    .line 148
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseActivity;->onLoggedInStart()V

    .line 149
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onStop()V

    .line 154
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onStop()V

    .line 155
    return-void
.end method

.method public registerManagedLifecycleListener(Lcom/liquable/nemo/ILifecycleListener;)V
    .locals 1
    .param p1, "lifecycleListener"    # Lcom/liquable/nemo/ILifecycleListener;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/liquable/nemo/BaseActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->registerManagedLifecycleListener(Lcom/liquable/nemo/ILifecycleListener;)V

    .line 159
    return-void
.end method
