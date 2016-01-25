.class public abstract Lcom/aviary/android/feather/library/tracking/AbstractTracker;
.super Ljava/lang/Object;
.source "AbstractTracker.java"


# instance fields
.field protected mABGroup:Ljava/lang/String;

.field protected mApiKey:Ljava/lang/String;

.field protected mAppName:Ljava/lang/String;

.field protected mCallingAppName:Ljava/lang/String;

.field protected mSdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "apiKey"    # Ljava/lang/String;
    .param p4, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, "com.aviary.feather"

    iput-object v0, p0, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->mCallingAppName:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "com.aviary.feather"

    iput-object v0, p0, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->mAppName:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "d2703c903"

    iput-object v0, p0, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->mApiKey:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->mAppName:Ljava/lang/String;

    iput-object p2, p0, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->mCallingAppName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->mApiKey:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->mSdkVersion:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract close()Z
.end method

.method public abstract open()V
.end method

.method public abstract recordTag(Ljava/lang/String;Ljava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public setABGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->mABGroup:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setExternalAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/aviary/android/feather/library/tracking/AbstractTracker;->mCallingAppName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public abstract upload()V
.end method
