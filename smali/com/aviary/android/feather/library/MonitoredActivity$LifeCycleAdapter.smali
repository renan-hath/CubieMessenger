.class public Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleAdapter;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"

# interfaces
.implements Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycleAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lcom/aviary/android/feather/library/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/aviary/android/feather/library/MonitoredActivity;

    .prologue
    .line 94
    return-void
.end method

.method public onActivityDestroyed(Lcom/aviary/android/feather/library/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/aviary/android/feather/library/MonitoredActivity;

    .prologue
    .line 97
    return-void
.end method

.method public onActivityStarted(Lcom/aviary/android/feather/library/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/aviary/android/feather/library/MonitoredActivity;

    .prologue
    .line 106
    return-void
.end method

.method public onActivityStopped(Lcom/aviary/android/feather/library/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/aviary/android/feather/library/MonitoredActivity;

    .prologue
    .line 109
    return-void
.end method
