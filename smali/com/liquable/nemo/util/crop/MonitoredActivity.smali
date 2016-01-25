.class public Lcom/liquable/nemo/util/crop/MonitoredActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;,
        Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleAdapter;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 71
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;

    .line 72
    .local v0, "listener":Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V

    goto :goto_0

    .line 74
    .end local v0    # "listener":Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    return-void
.end method

.method protected onLoggedInStart()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;

    .line 84
    .local v0, "listener":Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;->onActivityStarted(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V

    goto :goto_0

    .line 86
    .end local v0    # "listener":Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onStop()V

    .line 91
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;

    .line 92
    .local v0, "listener":Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;->onActivityStopped(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V

    goto :goto_0

    .line 94
    .end local v0    # "listener":Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method public removeLifeCycleListener(Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method
