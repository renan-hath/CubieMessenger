.class public Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleAdapter;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"

# interfaces
.implements Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycleAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/liquable/nemo/util/crop/MonitoredActivity;

    .prologue
    .line 27
    return-void
.end method

.method public onActivityDestroyed(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/liquable/nemo/util/crop/MonitoredActivity;

    .prologue
    .line 30
    return-void
.end method

.method public onActivityPaused(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/liquable/nemo/util/crop/MonitoredActivity;

    .prologue
    .line 33
    return-void
.end method

.method public onActivityResumed(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/liquable/nemo/util/crop/MonitoredActivity;

    .prologue
    .line 36
    return-void
.end method

.method public onActivityStarted(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/liquable/nemo/util/crop/MonitoredActivity;

    .prologue
    .line 39
    return-void
.end method

.method public onActivityStopped(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/liquable/nemo/util/crop/MonitoredActivity;

    .prologue
    .line 42
    return-void
.end method
