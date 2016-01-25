.class public interface abstract Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LifeCycleListener"
.end annotation


# virtual methods
.method public abstract onActivityCreated(Lcom/aviary/android/feather/library/MonitoredActivity;)V
.end method

.method public abstract onActivityDestroyed(Lcom/aviary/android/feather/library/MonitoredActivity;)V
.end method

.method public abstract onActivityStarted(Lcom/aviary/android/feather/library/MonitoredActivity;)V
.end method

.method public abstract onActivityStopped(Lcom/aviary/android/feather/library/MonitoredActivity;)V
.end method
