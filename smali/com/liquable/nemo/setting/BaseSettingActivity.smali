.class public abstract Lcom/liquable/nemo/setting/BaseSettingActivity;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "BaseSettingActivity.java"


# instance fields
.field private helper:Lcom/liquable/nemo/BaseActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

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
    .line 24
    .local p1, "future":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/setting/BaseSettingActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance v0, Lcom/liquable/nemo/BaseActivityHelper;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/BaseActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/BaseSettingActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    .line 17
    iget-object v0, p0, Lcom/liquable/nemo/setting/BaseSettingActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onCreate()V

    .line 18
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/BaseSettingActivity;->onSettingCreate(Landroid/os/Bundle;)V

    .line 20
    iget-object v0, p0, Lcom/liquable/nemo/setting/BaseSettingActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onCreateFinished()V

    .line 21
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/setting/BaseSettingActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onDestroy()V

    .line 30
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onDestroy()V

    .line 31
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/setting/BaseSettingActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/setting/BaseSettingActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onPause()V

    .line 41
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onPause()V

    .line 42
    return-void
.end method

.method protected final onResume()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onResume()V

    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/setting/BaseSettingActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onResume()V

    .line 48
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;->onSettingResume()V

    .line 49
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/liquable/nemo/setting/BaseSettingActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v1}, Lcom/liquable/nemo/BaseActivityHelper;->onRetainNonConfigurationInstance()V

    .line 59
    return-object v0
.end method

.method protected abstract onSettingCreate(Landroid/os/Bundle;)V
.end method

.method protected onSettingResume()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method protected onSettingStart()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onStart()V

    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/setting/BaseSettingActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onStart()V

    .line 74
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;->onSettingStart()V

    .line 75
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/setting/BaseSettingActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onStop()V

    .line 80
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onStop()V

    .line 81
    return-void
.end method
