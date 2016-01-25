.class public abstract Lcom/liquable/nemo/map/BaseMapActivity;
.super Lcom/liquable/nemo/map/SherlockMapActivity;
.source "BaseMapActivity.java"


# instance fields
.field private helper:Lcom/liquable/nemo/BaseActivityHelper;

.field protected mapController:Lcom/google/android/maps/MapController;

.field protected mapView:Lcom/google/android/maps/MapView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/liquable/nemo/map/SherlockMapActivity;-><init>()V

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
    .line 38
    .local p1, "future":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/map/BaseMapActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/liquable/nemo/map/SherlockMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/liquable/nemo/BaseActivityHelper;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/BaseActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/liquable/nemo/map/BaseMapActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/map/BaseMapActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onCreate()V

    .line 31
    invoke-virtual {p0}, Lcom/liquable/nemo/map/BaseMapActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/liquable/nemo/map/BaseMapActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(I)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/map/BaseMapActivity;->onMapActivityCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/map/BaseMapActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onCreateFinished()V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/map/BaseMapActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onDestroy()V

    .line 44
    invoke-super {p0}, Lcom/liquable/nemo/map/SherlockMapActivity;->onDestroy()V

    .line 45
    return-void
.end method

.method protected abstract onMapActivityCreate(Landroid/os/Bundle;)V
.end method

.method protected onMapActivityResume()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method protected onMapActivityStart()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/map/BaseMapActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/BaseActivityHelper;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/map/BaseMapActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onPause()V

    .line 63
    invoke-super {p0}, Lcom/liquable/nemo/map/SherlockMapActivity;->onPause()V

    .line 64
    return-void
.end method

.method protected final onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/liquable/nemo/map/SherlockMapActivity;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/map/BaseMapActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onResume()V

    .line 70
    invoke-virtual {p0}, Lcom/liquable/nemo/map/BaseMapActivity;->onMapActivityResume()V

    .line 71
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/liquable/nemo/map/SherlockMapActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/liquable/nemo/map/BaseMapActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v1}, Lcom/liquable/nemo/BaseActivityHelper;->onRetainNonConfigurationInstance()V

    .line 81
    return-object v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/liquable/nemo/map/SherlockMapActivity;->onStart()V

    .line 87
    iget-object v0, p0, Lcom/liquable/nemo/map/BaseMapActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onStart()V

    .line 88
    invoke-virtual {p0}, Lcom/liquable/nemo/map/BaseMapActivity;->onMapActivityStart()V

    .line 89
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/map/BaseMapActivity;->helper:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseActivityHelper;->onStop()V

    .line 94
    invoke-super {p0}, Lcom/liquable/nemo/map/SherlockMapActivity;->onStop()V

    .line 95
    return-void
.end method
