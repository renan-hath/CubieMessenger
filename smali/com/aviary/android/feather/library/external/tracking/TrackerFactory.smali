.class public Lcom/aviary/android/feather/library/external/tracking/TrackerFactory;
.super Ljava/lang/Object;
.source "TrackerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aviary/android/feather/library/tracking/AbstractTracker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
