.class public abstract Lcom/liquable/nemo/BaseFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "BaseFragment.java"


# instance fields
.field private futureSession:Lcom/liquable/future/FutureSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;
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
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragment;->futureSession:Lcom/liquable/future/FutureSession;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/liquable/future/FutureSession;

    invoke-direct {v0}, Lcom/liquable/future/FutureSession;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/BaseFragment;->futureSession:Lcom/liquable/future/FutureSession;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragment;->futureSession:Lcom/liquable/future/FutureSession;

    invoke-virtual {v0, p1}, Lcom/liquable/future/FutureSession;->add(Lcom/liquable/future/IFuture;)V

    .line 86
    return-object p1
.end method

.method public backPressed()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/BaseFragmentActivity;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/BaseFragmentActivity;->close(Lcom/liquable/nemo/BaseFragment;)V

    goto :goto_0
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseFragmentActivity;->hasImageLoader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no image loader for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseFragmentActivity;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getIntentFilterActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMustImplementedCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragmentCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getIntentFilterActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getIntentFilterActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 60
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getMustImplementedCallback()Ljava/lang/Class;

    move-result-object v1

    .line 61
    .local v1, "callback":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/liquable/nemo/BaseFragmentCallback;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " must implement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragment;->futureSession:Lcom/liquable/future/FutureSession;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/BaseFragment;->futureSession:Lcom/liquable/future/FutureSession;

    invoke-virtual {v0}, Lcom/liquable/future/FutureSession;->purge()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/BaseFragment;->futureSession:Lcom/liquable/future/FutureSession;

    .line 78
    :cond_1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 79
    return-void
.end method

.method protected final removeDialog(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->removeDialog(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/BaseFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method protected final showDialog(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    goto :goto_0
.end method
